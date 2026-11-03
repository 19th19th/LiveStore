<?php
namespace Cache;
class File {
	private $expire;

	public function __construct($expire = 3600) {
		$this->expire = $expire;

		$files = glob(DIR_CACHE . 'cache.*');

		if ($files) {
			foreach ($files as $file) {
				$time = substr(strrchr($file, '.'), 1);

				if ($time < time()) {
					if (file_exists($file)) {
						@unlink($file);
					}
				}
			}
		}
	}

	public function get($key) {
		$files = glob(DIR_CACHE . 'cache.' . preg_replace('/[^A-Z0-9\._-]/i', '', $key) . '.*');

		if ($files) {
			if (file_exists($files[0])) {
				try {
					$handle = @fopen($files[0], 'r');

					if ( $handle === false ) {
						return false;
					}

					if ( flock($handle, LOCK_SH) ) {
						$size = @filesize($files[0]);

						if ($size === false) {
							flock($handle, LOCK_UN);
							fclose($handle);
							return false;
						}

						if ($size > 0) {
							$data = fread($handle, $size);
						} else {
							$data = '';
						}

						flock($handle, LOCK_UN);

						fclose($handle);

						return json_decode($data, true);
					}
				} catch (Exception $e) {
					return false;
				}
			}
		}

		return false;
	}

	public function set($key, $value) {
		$this->delete($key);

		$file = DIR_CACHE . 'cache.' . preg_replace('/[^A-Z0-9\._-]/i', '', $key) . '.' . (time() + $this->expire);

		$handle = fopen($file, 'w');

		flock($handle, LOCK_EX);

		fwrite($handle, json_encode($value));

		fflush($handle);

		flock($handle, LOCK_UN);

		fclose($handle);
	}

	public function delete($key) {
		if ($key == '*') {
			$files = glob(DIR_CACHE . 'cache.*.*');
		} else {
			$files = glob(DIR_CACHE . 'cache.' . preg_replace('/[^A-Z0-9\._-]/i', '', $key) . '.*');
		}

		if ($files) {
			foreach ($files as $file) {
				if (file_exists($file)) {
					@unlink($file);
				}
			}
		}
	}
}

