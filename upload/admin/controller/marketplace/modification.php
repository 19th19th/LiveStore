<?php
/**
 * Modifcation XML Documentation can be found here:
 *
 * https://github.com/opencart/opencart/wiki/Modification-System
 */
class ControllerMarketplaceModification extends Controller {
	private $error = [];

	public function index() {
		$this->load->language('marketplace/modification');

		$this->load->model('setting/modification');
		
		$this->document->setTitle($this->language->get('heading_title'));

		$this->getList();
	}

    public function edit() {
        $this->load->language('marketplace/modification');

        $this->load->model('setting/modification');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$modification_id = isset($this->request->get['modification_id']) ? (int)$this->request->get['modification_id'] : 0;
		$status = 0;

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
            $modification = $this->model_setting_modification->getModification($modification_id);

            if ($modification) {
                $this->model_setting_modification->addModificationBackup($modification_id, $modification);
				
				$status = (int)$modification['status'];
            }

            $xml = html_entity_decode($this->request->post['xml'], ENT_QUOTES, 'UTF-8');
			$meta = $this->parseMetaFromXml($xml);

			$data = array(
				'name'    => $meta['name'],
				'code'    => $meta['code'],
				'author'  => $meta['author'],
				'version' => $meta['version'],
				'link'    => $meta['link'],
				'xml'     => $xml,
				'status'  => $status,
			);

			$this->model_setting_modification->editModification($modification_id, $data);

            $this->session->data['success'] = $this->language->get('text_success');

            $url = '';

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (!isset($this->request->get['update'])) {
                $this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
            } else {
                $this->response->redirect($this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $this->request->get['modification_id'] . $url, true));
            }
        }

        $this->getForm();
    }
	
	public function add() {
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');

		$this->document->setTitle($this->language->get('heading_title'));

		if ($this->request->server['REQUEST_METHOD'] == 'POST' && $this->validateForm()) {
			$xml  = html_entity_decode($this->request->post['xml'], ENT_QUOTES, 'UTF-8');
			$meta = $this->parseMetaFromXml($xml);

			$data = array(
				'extension_install_id' => 0,
				'name'    => $meta['name'],
				'code'    => $meta['code'],
				'author'  => $meta['author'],
				'version' => $meta['version'],
				'link'    => $meta['link'],
				'xml'     => $xml,
				'status'  => 0
			);

			$this->model_setting_modification->addModification($data);

			$created = $this->model_setting_modification->getModificationByCode($data['code']);
			
			$this->model_setting_modification->addModificationBackup($created['modification_id'], $data);

			$this->session->data['success'] = $this->language->get('text_success');
			
			if (!isset($this->request->get['update'])) {
				$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'], true));
			} else {
				$this->response->redirect($this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . (int)$created['modification_id'], true));
			}
		}

		$this->getForm();
	}

    public function restore() {
        $this->load->language('marketplace/extension');

        $this->load->model('setting/modification');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$modification_id = isset($this->request->get['modification_id']) ? (int)$this->request->get['modification_id'] : 0;
		$backup_id = isset($this->request->get['backup_id']) ? (int)$this->request->get['backup_id'] : 0;

        if ($modification_id && isset($this->request->get['backup_id'])) {
            $backup = $this->model_setting_modification->getModificationBackup($modification_id, $backup_id);

            if ($backup) {
                $xml  = $backup['xml'];
				$meta = $this->parseMetaFromXml($xml);
				$cur  = $this->model_setting_modification->getModification($modification_id);

				$data = array(
					'name'    => $meta['name']    ?: $cur['name'],
					'code'    => $meta['code']    ?: $cur['code'],
					'author'  => $meta['author']  ?: $cur['author'],
					'version' => $meta['version'] ?: $cur['version'],
					'link'    => $meta['link']    ?: $cur['link'],
					'xml'     => $xml,
					'status'  => (int)$cur['status']
				);

				$this->model_setting_modification->editModification($modification_id, $data);
            }
			
			$this->response->redirect($this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $this->request->get['modification_id'], true));
        }

        $this->getForm();
    }

    public function clearHistory() {
        if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
            $json['error'] = $this->language->get('error_permission');
        }

        $this->load->model('setting/modification');
        $this->model_setting_modification->deleteModificationBackups($this->request->get['modification_id']);

        $this->response->redirect($this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $this->request->get['modification_id'], true));
    }

    public function download() {
        $this->load->model('setting/modification');

        $modification = $this->model_setting_modification->getModification((int)$this->request->get['modification_id']);

        if ($modification) {
            $xml = $modification['xml'];
        } else  {
            $xml = '';
        }

        $this->response->addHeader('Content-Type: application/xml');
        $this->response->setOutput($xml);
    }

    public function upload() {
        $this->load->language('marketplace/installer');
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');
		
		$modification_id = !empty($this->request->get['modification_id']) ? (int)$this->request->get['modification_id'] : 0;
		
		$modification = $this->model_setting_modification->getModification($this->request->get['modification_id']);

        $json = [];

        if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
            $json['error'] = $this->language->get('error_permission');
        }

		if ($modification) {
			if (!$json) {
				if (!empty($this->request->files['file']['name'])) {
					if ($this->request->files['file']['name'] != $modification['code'].".ocmod.xml") {
						$json['error'] = $this->language->get('error_filename');
					}

					if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
						$json['error'] = $this->language->get('error_upload_' . $this->request->files['file']['error']);
					}
				} else {
					$json['error'] = $this->language->get('error_upload');
				}
			}

			if (!$json) {
				// If no temp directory exists create it
				$path = 'temp-' . token(32);

				if (!is_dir(DIR_UPLOAD . $path)) {
					mkdir(DIR_UPLOAD . $path, 0777);
				}

				// Set the steps required for installation
				$json['step'] = [];
				$json['overwrite'] = [];

				if (strrchr($this->request->files['file']['name'], '.') == '.xml') {
					$file = DIR_UPLOAD . $path . '/install.xml';

					// If xml file copy it to the temporary directory
					move_uploaded_file($this->request->files['file']['tmp_name'], $file);

					if (file_exists($file)) {
						$json['step'][] = array(
							'text' => $this->language->get('text_xml'),
							'url'  => str_replace('&amp;', '&', $this->url->link('marketplace/modification/xml', 'user_token=' . $this->session->data['user_token']."&modification_id=".$modification['modification_id'], true)),
							'path' => $path
						);

						// Clear temporary files
						$json['step'][] = array(
							'text' => $this->language->get('text_remove'),
							'url'  => str_replace('&amp;', '&', $this->url->link('marketplace/modification/remove', 'user_token=' . $this->session->data['user_token']."&modification_id=".$modification['modification_id'], true)),
							'path' => $path
						);
					} else {
						$json['error'] = $this->language->get('error_file');
					}
				}
			}
        } else {
			$json['error'] = $this->language->get('error_id_not_found');
		}

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function xml() {
        $this->load->language('marketplace/installer');
		$this->load->language('marketplace/modification');

        $this->load->model('setting/modification');
		
		$modification_id = !empty($this->request->get['modification_id']) ? (int)$this->request->get['modification_id'] : 0;
		$path = !empty($this->request->post['path']) ? $this->request->post['path'] : '';

        $modification = $this->model_setting_modification->getModification($modification_id);

        $json = [];

        if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
            $json['error'] = $this->language->get('error_permission');
        }
		
		if ($modification) {
			$file = DIR_UPLOAD . $path . '/install.xml';

			if (!is_file($file) || substr(str_replace('\\', '/', realpath($file)), 0, strlen(DIR_UPLOAD)) != DIR_UPLOAD) {
				$json['error'] = $this->language->get('error_file');
			}

			if (!$json) {
				$this->load->model('setting/modification');

				// If xml file just put it straight into the DB
				$xml = file_get_contents($file);

				if ($xml) {
					try {
						$dom = new DOMDocument('1.0', 'UTF-8');
                    
						if ($dom->loadXml($xml)) {
							$name = $dom->getElementsByTagName('name')->item(0);

							if ($name) {
								$name = $name->nodeValue;
						
								if ($name) {
									$exists = $this->model_setting_modification->getModificationByName($name);
		
									if ($exists && $exists['modification_id'] != $modification_id) {
										$json['error'] = $this->language->get('error_name_exists');
									}
								} else {
									$json['error'] = $this->language->get('error_name');
								}
							} else {
								$json['error'] = $this->language->get('error_name');
							}

							$code = $dom->getElementsByTagName('code')->item(0);
	
							if ($code) {
								$code = $code->nodeValue;
						
								if ($code) {
									$exists = $this->model_setting_modification->getModificationByCode($code);
		
									if ($exists && $exists['modification_id'] != $modification_id) {
										$json['error'] = $this->language->get('error_code_exists');
									}
								} else {
									$json['error'] = $this->language->get('error_code');
								}
							} else {
								$json['error'] = $this->language->get('error_code');
							}

							$author = $dom->getElementsByTagName('author')->item(0);

							if ($author) {
								$author = $author->nodeValue;
							} else {
								$author = '';
							}

							$version = $dom->getElementsByTagName('version')->item(0);

							if ($version) {
								$version = $version->nodeValue;
							} else {
								$version = '';
							}

							$link = $dom->getElementsByTagName('link')->item(0);

							if ($link) {
								$link = $link->nodeValue;
							} else {
								$link = '';
							}
						
							if (!$json) {
								$modification_data = array(
									'name'    => $name,
									'code'    => $code,
									'author'  => $author,
									'version' => $version,
									'link'    => $link,
									'xml'     => $xml,
									'status'  => $modification['status']
								);
                    
								$this->model_setting_modification->editModification($modification['modification_id'], $modification_data);
							}
						} else {
							$json['error'] = $this->language->get('error_syntaxis');
						}
					} catch(Exception $exception) {
						$json['error'] = sprintf($this->language->get('error_exception'), $exception->getCode(), $exception->getMessage(), $exception->getFile(), $exception->getLine());
					}
				}
			}
        } else {
			$json['error'] = $this->language->get('error_id_not_found');
		}
		
		if ($json && $path) {
			$this->remove($path);
		}

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function remove($path = '') {
        $this->load->language('marketplace/modification');
		
		if (!$path) {
			if (!empty($this->request->post['path'])) {
				$path = $this->request->post['path'];
			}
		}

        $json = [];

        if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
            $json['error'] = $this->language->get('error_permission');
        }
		
		if ($path) {
			$directory = DIR_UPLOAD . $path;

			if (!is_dir($directory) || substr(str_replace('\\', '/', realpath($directory)), 0, strlen(DIR_UPLOAD)) != DIR_UPLOAD) {
				$json['error'] = $this->language->get('error_directory');
			}

			if (!$json) {
				// Get a list of files ready to upload
				$files = [];

				$path = array($directory);

				while (count($path) != 0) {
					$next = array_shift($path);

					// We have to use scandir function because glob will not pick up dot files.
					foreach (array_diff(scandir($next), array('.', '..')) as $file) {
						$file = $next . '/' . $file;

						if (is_dir($file)) {
							$path[] = $file;
						}

						$files[] = $file;
					}
				}

				rsort($files);

				foreach ($files as $file) {
					if (is_file($file)) {
						unlink($file);

					} elseif (is_dir($file)) {
						rmdir($file);
					}
				}

				if (file_exists($directory)) {
					rmdir($directory);
				}

				$json['success'] = $this->language->get('text_success');
			}
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }


	public function delete() {
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');

		$this->document->setTitle($this->language->get('heading_title'));

		if (isset($this->request->post['selected']) && $this->validate()) {
			foreach ($this->request->post['selected'] as $modification_id) {
				$this->model_setting_modification->deleteModification($modification_id);
                $this->model_setting_modification->deleteModificationBackups($modification_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function refresh($data = array()) {
		$this->load->language('marketplace/modification');

		$this->load->model('setting/modification');
        $this->load->model('design/theme');
		
		$this->document->setTitle($this->language->get('heading_title'));

		if ($this->validate()) {
			// Clear log before refresh modifications
			$handle = fopen(DIR_LOGS . 'ocmod.log', 'w+');
			fclose($handle);

			// Just before files are deleted, if config settings say maintenance mode is off then turn it on
			$maintenance = $this->config->get('config_maintenance');

			$this->load->model('setting/setting');
			$this->load->model('design/theme');

			$this->model_setting_setting->editSettingValue('config', 'config_maintenance', true);

			//Log
			$log = [];

			// Clear all modification files
			$files = [];

			// Make path into an array
			$path = array(DIR_MODIFICATION . '*');

			// While the path array is still populated keep looping through
			while (count($path) != 0) {
				$next = array_shift($path);

				foreach (glob($next) as $file) {
					// If directory add to path array
					if (is_dir($file)) {
						$path[] = $file . '/*';
					}

					// Add the file to the files to be deleted array
					$files[] = $file;
				}
			}

			// Reverse sort the file array
			rsort($files);

			// Clear all modification files
			foreach ($files as $file) {
				if ($file != DIR_MODIFICATION . 'index.html') {
					// If file just delete
					if (is_file($file)) {
						unlink($file);

					// If directory use the remove directory function
					} elseif (is_dir($file)) {
						rmdir($file);
					}
				}
			}

			// Begin
			$xml = [];

			// Load the default modification XML
			$xml[] = file_get_contents(DIR_SYSTEM . 'modification.xml');

			// This is purly for developers so they can run mods directly and have them run without upload after each change.
			$files = glob(DIR_SYSTEM . '*.ocmod.xml');

			if ($files) {
				foreach ($files as $file) {
					$xml[] = file_get_contents($file);
				}
			}

			// Get the default modification file
			$results = $this->model_setting_modification->getModifications();

			foreach ($results as $result) {
				if ($result['status']) {
					$xml[] = $result['xml'];
				}
			}

			$modification = [];

			foreach ($xml as $xml) {
				if (empty($xml)){
					continue;
				}

				$dom = new DOMDocument('1.0', 'UTF-8');
				$dom->preserveWhiteSpace = false;
				$dom->loadXml($xml);

				// Log
				$log[] = 'MOD: ' . $dom->getElementsByTagName('name')->item(0)->textContent;

				// Wipe the past modification store in the backup array
				$recovery = [];

				// Set the a recovery of the modification code in case we need to use it if an abort attribute is used.
				if (isset($modification)) {
					$recovery = $modification;
				}

                if ($this->config->get('config_theme') == 'default') {
                    $theme = $this->config->get('theme_default_directory');
                } else {
                    $theme = $this->config->get('config_theme');
                }

                $store_id = (int)$this->config->get('config_store_id');

				$files = $dom->getElementsByTagName('modification')->item(0)->getElementsByTagName('file');

				foreach ($files as $file) {
					$operations = $file->getElementsByTagName('operation');

					$files = explode('|', str_replace("\\", '/', $file->getAttribute('path')));

					foreach ($files as $file) {
						$path = '';

						// Get the full path of the files that are going to be used for modification
						if ((substr($file, 0, 7) == 'catalog')) {
							$path = DIR_CATALOG . substr($file, 8);
						}

						if ((substr($file, 0, 5) == 'admin')) {
							$path = DIR_APPLICATION . substr($file, 6);
						}

						if ((substr($file, 0, 6) == 'system')) {
							$path = DIR_SYSTEM . substr($file, 7);
						}

						if ($path) {
							$files = glob($path, GLOB_BRACE);

							if ($files) {
								foreach ($files as $file) {
									// Get the key to be used for the modification cache filename.
									if (substr($file, 0, strlen(DIR_CATALOG)) == DIR_CATALOG) {
										$key = 'catalog/' . substr($file, strlen(DIR_CATALOG));
									}

									if (substr($file, 0, strlen(DIR_APPLICATION)) == DIR_APPLICATION) {
										$key = 'admin/' . substr($file, strlen(DIR_APPLICATION));
									}

									if (substr($file, 0, strlen(DIR_SYSTEM)) == DIR_SYSTEM) {
										$key = 'system/' . substr($file, strlen(DIR_SYSTEM));
									}

									// If file contents is not already in the modification array we need to load it.
									if (!isset($modification[$key])) {

                                        $route = substr(mb_strstr($key, 'template'), 9, -5);

                                        $theme_info = $this->model_design_theme->getTheme($store_id, $theme, $route);
										
										//https://liveopencart.ru/alexdw

                                        if ($theme_info) {
                                            $content = html_entity_decode($theme_info['code'], ENT_QUOTES, 'UTF-8');
                                        } else if (stristr($key, '/', true) === basename(DIR_CATALOG) && stristr($key, '.twig') != FALSE) {
											$fix_theme = basename(stristr($file, '/template/', true));
											$fix_route = stristr(substr(stristr($key, '/template/'), 10 ), '.twig', true);
											$fix_store_id = (int)$this->config->get('config_store_id');

											$theme_info = $this->model_design_theme->getTheme($fix_store_id, $fix_theme, $fix_route);
											$content = $theme_info ? html_entity_decode($theme_info['code']) : file_get_contents($file);
										} else {
                                            $content = file_get_contents($file);
                                        }

										$modification[$key] = preg_replace('~\r?\n~', "\n", $content);
										$original[$key] = preg_replace('~\r?\n~', "\n", $content);

										// Log
										$log[] = PHP_EOL . 'FILE: ' . $key;
									}

									foreach ($operations as $operation) {
										$error = $operation->getAttribute('error');

										// Ignoreif
										$ignoreif = $operation->getElementsByTagName('ignoreif')->item(0);

										if ($ignoreif) {
											if ($ignoreif->getAttribute('regex') != 'true') {
												if (strpos($modification[$key], $ignoreif->textContent) !== false) {
													continue;
												}
											} else {
												if (preg_match($ignoreif->textContent, $modification[$key])) {
													continue;
												}
											}
										}

										$status = false;

										// Search and replace
										if ($operation->getElementsByTagName('search')->item(0)->getAttribute('regex') != 'true') {
											// Search
											$search = $operation->getElementsByTagName('search')->item(0)->textContent;
											$trim = $operation->getElementsByTagName('search')->item(0)->getAttribute('trim');
											$index = $operation->getElementsByTagName('search')->item(0)->getAttribute('index');

											// Trim line if no trim attribute is set or is set to true.
											if (!$trim || $trim == 'true') {
												$search = trim($search);
											}

											// Add
											$add = $operation->getElementsByTagName('add')->item(0)->textContent;
											$trim = $operation->getElementsByTagName('add')->item(0)->getAttribute('trim');
											$position = $operation->getElementsByTagName('add')->item(0)->getAttribute('position');
											$offset = $operation->getElementsByTagName('add')->item(0)->getAttribute('offset');

											if ($offset == '') {
												$offset = 0;
											}

											// Trim line if is set to true.
											if ($trim == 'true') {
												$add = trim($add);
											}

											// Log
											$log[] = 'CODE: ' . $search;

											// Check if using indexes
											if ($index !== '') {
												$indexes = explode(',', $index);
											} else {
												$indexes = [];
											}

											// Get all the matches
											$i = 0;

											$lines = explode("\n", $modification[$key]);

											for ($line_id = 0; $line_id < count($lines); $line_id++) {
												$line = $lines[$line_id];

												// Status
												$match = false;

												// Check to see if the line matches the search code.
												if (stripos($line, $search) !== false) {
													// If indexes are not used then just set the found status to true.
													if (!$indexes) {
														$match = true;
													} elseif (in_array($i, $indexes)) {
														$match = true;
													}

													$i++;
												}

												// Now for replacing or adding to the matched elements
												if ($match) {
													switch ($position) {
														default:
														case 'replace':
															$new_lines = explode("\n", $add);

															if ($offset < 0) {
																array_splice($lines, $line_id + $offset, abs($offset) + 1, array(str_replace($search, $add, $line)));

																$line_id -= $offset;
															} else {
																array_splice($lines, $line_id, $offset + 1, array(str_replace($search, $add, $line)));
															}
															break;
														case 'before':
															$new_lines = explode("\n", $add);

															array_splice($lines, $line_id - $offset, 0, $new_lines);

															$line_id += count($new_lines);
															break;
														case 'after':
															$new_lines = explode("\n", $add);

															array_splice($lines, ($line_id + 1) + $offset, 0, $new_lines);

															$line_id += count($new_lines);
															break;
													}

													// Log
													$log[] = 'LINE: ' . $line_id;

													$status = true;
												}
											}

											$modification[$key] = implode("\n", $lines);
										} else {
											$search = trim($operation->getElementsByTagName('search')->item(0)->textContent);
											$limit = $operation->getElementsByTagName('search')->item(0)->getAttribute('limit');
											$replace = trim($operation->getElementsByTagName('add')->item(0)->textContent);

											// Limit
											if (!$limit) {
												$limit = -1;
											}

											// Log
											$match = [];

											preg_match_all($search, $modification[$key], $match, PREG_OFFSET_CAPTURE);

											// Remove part of the the result if a limit is set.
											if ($limit > 0) {
												$match[0] = array_slice($match[0], 0, $limit);
											}

											if ($match[0]) {
												$log[] = 'REGEX: ' . $search;

												for ($i = 0; $i < count($match[0]); $i++) {
													$log[] = 'LINE: ' . (substr_count(substr($modification[$key], 0, $match[0][$i][1]), "\n") + 1);
												}

												$status = true;
											}

											// Make the modification
											$modification[$key] = preg_replace($search, $replace, $modification[$key], $limit);
										}

										if (!$status) {
											// Abort applying this modification completely.
											if ($error == 'abort') {
												$modification = $recovery;
												// Log
												$log[] = 'NOT FOUND - ABORTING!';
												break 5;
											}
											// Skip current operation or break
											elseif ($error == 'skip') {
												// Log
												$log[] = 'NOT FOUND - OPERATION SKIPPED!';
												continue;
											}
											// Break current operations
											else {
												// Log
												$log[] = 'NOT FOUND - OPERATIONS ABORTED!';
											 	break;
											}
										}
									}
								}
							}
						}
					}
				}

				// Log
				$log[] = '----------------------------------------------------------------';
			}

			// Log
			$ocmod = new Log('ocmod.log');
			$ocmod->write(implode("\n", $log));

			// Write all modification files
			foreach ($modification as $key => $value) {
				// Only create a file if there are changes
				if ($original[$key] != $value) {
					$path = '';

					$directories = explode('/', dirname($key));

					foreach ($directories as $directory) {
						$path = $path . '/' . $directory;

						if (!is_dir(DIR_MODIFICATION . $path)) {
							@mkdir(DIR_MODIFICATION . $path, 0777);
						}
					}

					$handle = fopen(DIR_MODIFICATION . $key, 'w');

					fwrite($handle, $value);

					fclose($handle);
				}
			}

			// Maintance mode back to original settings
			$this->model_setting_setting->editSettingValue('config', 'config_maintenance', $maintenance);

			// Do not return success message if refresh() was called with $data
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			//$this->response->redirect($this->url->link(!empty($data['redirect']) ? $data['redirect'] : 'marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function clear() {
		$this->load->language('marketplace/modification');

		$this->load->model('setting/modification');
		
		$this->document->setTitle($this->language->get('heading_title'));

		if ($this->validate()) {
			$files = [];

			// Make path into an array
			$path = array(DIR_MODIFICATION . '*');

			// While the path array is still populated keep looping through
			while (count($path) != 0) {
				$next = array_shift($path);

				foreach (glob($next) as $file) {
					// If directory add to path array
					if (is_dir($file)) {
						$path[] = $file . '/*';
					}

					// Add the file to the files to be deleted array
					$files[] = $file;
				}
			}

			// Reverse sort the file array
			rsort($files);

			// Clear all modification files
			foreach ($files as $file) {
				if ($file != DIR_MODIFICATION . 'index.html') {
					// If file just delete
					if (is_file($file)) {
						unlink($file);

					// If directory use the remove directory function
					} elseif (is_dir($file)) {
						rmdir($file);
					}
				}
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function enable() {
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');

		$this->document->setTitle($this->language->get('heading_title'));

		if (isset($this->request->get['modification_id']) && $this->validate()) {
			$this->model_setting_modification->enableModification($this->request->get['modification_id']);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function disable() {
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');

		$this->document->setTitle($this->language->get('heading_title'));

		if (isset($this->request->get['modification_id']) && $this->validate()) {
			$this->model_setting_modification->disableModification($this->request->get['modification_id']);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function clearlog() {
		$this->load->language('marketplace/modification');
		
		$this->load->model('setting/modification');

		$this->document->setTitle($this->language->get('heading_title'));

		if ($this->validate()) {
			$handle = fopen(DIR_LOGS . 'ocmod.log', 'w+');

			fclose($handle);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = (int)$this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['refresh'] = $this->url->link('marketplace/modification/refresh', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['clear'] = $this->url->link('marketplace/modification/clear', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['delete'] = $this->url->link('marketplace/modification/delete', 'user_token=' . $this->session->data['user_token'] . $url, true);

		$data['modifications'] = [];

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$modification_total = $this->model_setting_modification->getTotalModifications();

		$results = $this->model_setting_modification->getModifications($filter_data);

		foreach ($results as $result) {
			$data['modifications'][] = array(
				'modification_id' => $result['modification_id'],
				'name'            => $result['name'],
				'author'          => $result['author'],
                'filename'        => $result['code'].".ocmod.xml",
				'version'         => $result['version'],
				'status'          => $result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
				'date_added'      => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'link'            => $result['link'],
                'edit'            => $this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $result['modification_id'], true),
                'download'        => $this->url->link('marketplace/modification/download', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $result['modification_id'], true),
                'enable'          => $this->url->link('marketplace/modification/enable', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $result['modification_id'], true),
				'disable'         => $this->url->link('marketplace/modification/disable', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $result['modification_id'], true),
				'enabled'         => $result['status']
			);
		}

		$data['user_token'] = $this->session->data['user_token'];

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = [];
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_name'] = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . '&sort=name' . $url, true);
		$data['sort_author'] = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . '&sort=author' . $url, true);
		$data['sort_version'] = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . '&sort=version' . $url, true);
		$data['sort_status'] = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . '&sort=status' . $url, true);
		$data['sort_date_added'] = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . '&sort=date_added' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $modification_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($modification_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($modification_total - $this->config->get('config_limit_admin'))) ? $modification_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $modification_total, ceil($modification_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;

		// Log
		$file = DIR_LOGS . 'ocmod.log';

		if (file_exists($file)) {
			$data['log'] = htmlentities(file_get_contents($file, FILE_USE_INCLUDE_PATH, null));
			
			$errors = [];
			
			$log = explode("\n", $data['log']);
			
			if ($log) {
				foreach ($log as $key => $line) {
					if (stripos($line, 'MOD:') !== false) {
						$mod = $line;
					}
				
					if (stripos($line, 'FILE:') !== false) {
						$file = $line;
					}
				
					if (stripos($line, 'NOT FOUND') !== false) {
						$errors[] = $mod."\n".$file."\n".$log[$key-1]."\n".$line."\n";
					}
				}
			}
			
			$data['log_errors'] = implode("\n", $errors);
		} else {
			$data['log'] = '';
			$data['log_errors'] = '';
		}

		$data['clear_log'] = $this->url->link('marketplace/modification/clearlog', 'user_token=' . $this->session->data['user_token'], true);
		$data['add'] = $this->url->link('marketplace/modification/add', 'user_token=' . $this->session->data['user_token'] . $url, true);

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('marketplace/modification', $data));
	}

	protected function getForm() {
		$this->load->language('marketplace/modification');

		$this->document->addStyle('view/javascript/codemirror/lib/codemirror.css');
		$this->document->addStyle('view/javascript/codemirror/theme/xq-dark.css');
		$this->document->addScript('view/javascript/codemirror/lib/codemirror.js');
		$this->document->addScript('view/javascript/codemirror/lib/xml.js');
		$this->document->addScript('view/javascript/codemirror/lib/formatting.js');

		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['user_token'] = $this->session->data['user_token'];

		$data['error_warning'] = isset($this->error['warning']) ? $this->error['warning'] : '';

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$is_create = empty($this->request->get['modification_id']);
		$modification_id = $is_create ? 0 : (int)$this->request->get['modification_id'];

		$url = '';

		if ($is_create) {
			$data['action'] = $this->url->link('marketplace/modification/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		} else {
			$data['action'] = $this->url->link('marketplace/modification/edit', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $modification_id . $url, true);
		}

		$data['cancel']  = $this->url->link('marketplace/modification', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['restore'] = $is_create ? '' : $this->url->link('marketplace/modification/restore', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $modification_id . $url, true);
		$data['history'] = $is_create ? '' : $this->url->link('marketplace/modification/clearhistory', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $modification_id . $url, true);

		$this->load->model('setting/modification');

		$modification = null;
		
		if (!$is_create) {
			$modification = $this->model_setting_modification->getModification($modification_id);
		}

		$data['backups'] = [];
		
		if (!$is_create) {
			$backups = $this->model_setting_modification->getModificationBackups($modification_id);
			
			if ($backups) {
				foreach ($backups as $backup) {
					$data['backups'][] = [
						'backup_id'  => $backup['backup_id'],
						'code'       => $backup['code'],
						'date_added' => $backup['date_added'],
						'restore'    => $this->url->link('marketplace/modification/restore', 'user_token=' . $this->session->data['user_token'] . '&modification_id=' . $modification_id . '&backup_id=' . (int)$backup['backup_id'] . $url, true)
					];
				}
			}
		}

		if (isset($this->request->post['xml'])) {
			$data['xml'] = html_entity_decode(ltrim($this->request->post['xml']), ENT_QUOTES, 'UTF-8');
		} elseif ($modification) {
			$data['xml'] = ltrim($modification['xml'], "﻿");
		} else {
			$xml = '<?xml version="1.0" encoding="utf-8"?>'."\r\n";
			$xml .= '<modification>'."\r\n";
			$xml .= '	<name></name>'."\r\n";
			$xml .= '	<code></code>'."\r\n";
			$xml .= '	<version>1.0.0</version>'."\r\n";
			$xml .= '	<author></author>'."\r\n";
			$xml .= '	<link></link>'."\r\n";
			$xml .= '	<!-- пример:'."\r\n";
			$xml .= '	<file path="catalog/controller/common/home.php">'."\r\n";
			$xml .= '		<operation>'."\r\n";
			$xml .= '		<search><![CDATA[$this->document->setTitle(]]></search>'."\r\n";
			$xml .= '		<add position="after"><![CDATA['."\r\n";
			$xml .= '			// demo'."\r\n";
			$xml .= '		]]></add>'."\r\n";
			$xml .= '		</operation>'."\r\n";
			$xml .= '	</file>'."\r\n";
			$xml .= '	-->'."\r\n";
			$xml .= '</modification>';

			$data['xml'] = ltrim($xml);
		}

		$data['header']      = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer']      = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('marketplace/modification_form', $data));
	}

    protected function validateForm($xml = '') {
        if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
		
		if (!empty($this->request->post['xml'])) {
			$xml = $this->request->post['xml'];
		}
		
		if ($xml) {
			$xml  = html_entity_decode($xml, ENT_QUOTES, 'UTF-8');
			$meta = $this->parseMetaFromXml($xml);
		
			$modification_id = isset($this->request->get['modification_id']) ? (int)$this->request->get['modification_id'] : 0;
		
			if (empty($meta['name'])) {
				$this->error['warning'] = $this->language->get('error_name');
			} else {
				$exists = $this->model_setting_modification->getModificationByName($meta['name']);
		
				if ($exists && $exists['modification_id'] != $modification_id) {
					$this->error['warning'] = $this->language->get('error_name_exists');
				}
			}
		
			if (empty($meta['code'])) {
				$this->error['warning'] = $this->language->get('error_code');
			} else {
				$exists = $this->model_setting_modification->getModificationByCode($meta['code']);
		
				if ($exists && $exists['modification_id'] != $modification_id) {
					$this->error['warning'] = $this->language->get('error_code_exists');
				}
			}
		
			if (empty($meta['version'])) {
				$this->error['warning'] = $this->language->get('error_version');
			}
			
			if (!empty($meta['error'])) {
				$this->error['warning'] = $meta['error'];
			}
		} else {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'marketplace/modification')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
	
	private function parseMetaFromXml($xml) {
		$meta = ['name' => '', 'code' => '', 'author' => '', 'version' => '', 'link' => ''];
		
		$dom = new DOMDocument('1.0', 'UTF-8');
		$dom->preserveWhiteSpace = false;
		
		if ($dom->loadXml($xml)) {
			$name = $dom->getElementsByTagName('name')->item(0);
			
			if ($name) {
				$meta['name'] = $name->textContent;
			}
			
			$code = $dom->getElementsByTagName('code')->item(0);
			
			if ($code) {
				$meta['code'] = $code->textContent;
			}
			
			$author = $dom->getElementsByTagName('author')->item(0);
			
			if ($author) {
				$meta['author'] = $author->textContent;
			}
			
			$version = $dom->getElementsByTagName('version')->item(0);
			
			if ($version) {
				$meta['version'] = $version->textContent;
			}
			
			$link = $dom->getElementsByTagName('link')->item(0);
			
			if ($link) {
				$meta['link'] = $link->textContent;
			}
		} else {
			$meta['error'] = $this->language->get('error_syntaxis');
		}

		return $meta;
	}
}