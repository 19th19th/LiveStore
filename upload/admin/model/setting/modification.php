<?php
class ModelSettingModification extends Model {
	public function addModification($data) {
		$sql = "INSERT INTO `" . DB_PREFIX . "modification` SET";
		$sql .= " `extension_install_id` = '" . (int)$data['extension_install_id'] . "',";
		$sql .= " `name` = '" . $this->db->escape($data['name']) . "',";
		$sql .= " `code` = '" . $this->db->escape($data['code']) . "',";
		$sql .= " `author` = '" . $this->db->escape($data['author']) . "',";
		$sql .= " `version` = '" . $this->db->escape($data['version']) . "',";
		$sql .= " `link` = '" . $this->db->escape($data['link']) . "',";
		$sql .= " `xml` = '" . $this->db->escape($data['xml']) . "',";
		$sql .= " `status` = '" . (int)$data['status'] . "',";
		$sql .= " `date_added` = NOW()";
		
		$this->db->query($sql);
	}

	public function addModificationBackup($modification_id, $data) {
		$xml = html_entity_decode($data['xml'], ENT_QUOTES, 'UTF-8');
		
		$sql = "INSERT INTO `" . DB_PREFIX . "modification_backup` SET";
		$sql .= " `modification_id` = '" . (int)$modification_id . "',";
		$sql .= " `code` = '" . $this->db->escape($data['code']) . "',";
		$sql .= " `xml` = '" . $this->db->escape($data['xml']) . "',";
		$sql .= " `date_added` = NOW()";
		
		$this->db->query($sql);
	}

	public function editModification($modification_id, $data) {
		$sql = "UPDATE `" . DB_PREFIX . "modification` SET";
		$sql .= " `name` = '" . $this->db->escape($data['name']) . "',";
		$sql .= " `code` = '" . $this->db->escape($data['code']) . "',";
		$sql .= " `author` = '" . $this->db->escape($data['author']) . "',";
		$sql .= " `version` = '" . $this->db->escape($data['version']) . "',";
		$sql .= " `link` = '" . $this->db->escape($data['link']) . "',";
		$sql .= " `xml`  = '" . $this->db->escape($data['xml']) . "',";
		$sql .= " `status` = '" . (int)$data['status'] . "'";

		if ($this->columnExists(DB_PREFIX . 'modification', 'date_modified')) {
			$sql .= ", `date_modified` = NOW()";
		}

		$sql .= " WHERE `modification_id` = '" . (int)$modification_id . "'";
		
		$this->db->query($sql);
	}

	public function deleteModification($modification_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "modification` WHERE `modification_id` = '" . (int)$modification_id . "'");
	}

	public function deleteModificationBackups($modification_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "modification_backup` WHERE `modification_id` = '" . (int)$modification_id . "'");
	}

	public function deleteModificationsByExtensionInstallId($extension_install_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "modification` WHERE `extension_install_id` = '" . (int)$extension_install_id . "'");
	}

	public function enableModification($modification_id) {
		$this->db->query("UPDATE `" . DB_PREFIX . "modification` SET `status` = '1' WHERE `modification_id` = '" . (int)$modification_id . "'");
	}

	public function disableModification($modification_id) {
		$this->db->query("UPDATE `" . DB_PREFIX . "modification` SET `status` = '0' WHERE `modification_id` = '" . (int)$modification_id . "'");
	}

	public function getModification($modification_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `modification_id` = '" . (int)$modification_id . "'");
		
		return $query->row;
	}
	
	public function getModifications($data = array()) {
		$sql = "SELECT * FROM `" . DB_PREFIX . "modification`";

		$sort_data = array(
			'name',
			'author',
			'version',
			'status',
			'date_added'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getModificationBackups($modification_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification_backup` WHERE `modification_id` = '" . (int)$modification_id . "' ORDER BY `date_added` DESC");
		
		return $query->rows;
	}

	public function getModificationBackup($modification_id, $backup_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification_backup` WHERE `modification_id` = '" . (int)$modification_id . "' AND `backup_id` = '" . (int)$backup_id . "' ORDER BY `date_added` DESC");
		
		return $query->row;
	}

	public function getTotalModifications() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "modification`");
		
		return $query->row['total'];
	}
	
	public function getModificationByName($name) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `name` = '" . $this->db->escape($name) . "'");
		
		return $query->row;
	}

	public function getModificationByCode($code) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `code` = '" . $this->db->escape($code) . "'");
		
		return $query->row;
	}
	
	private function columnExists($table, $column) {
		$query = $this->db->query("SHOW COLUMNS FROM `" . $table . "` LIKE '" . $this->db->escape($column) . "'");
		
		return (bool)$query->num_rows;
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
		}

		return $meta;
	}
}