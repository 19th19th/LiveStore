<?php
class ModelUpgrade1012 extends Model {
	public function upgrade() {
		$store_ids = array(0);

		$stores = $this->db->query("SELECT store_id FROM `" . DB_PREFIX . "store`");

		foreach ($stores->rows as $store) {
			$store_ids[] = (int)$store['store_id'];
		}

		foreach ($store_ids as $store_id) {
			$query = $this->db->query("SELECT setting_id FROM `" . DB_PREFIX . "setting`
				WHERE store_id = '" . (int)$store_id . "'
					AND `code` = 'config'
					AND `key` = 'config_limit_filemanager'");

			if (!$query->num_rows) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "setting`
					SET store_id = '" . (int)$store_id . "',
						`code` = 'config',
						`key` = 'config_limit_filemanager',
						`value` = '16',
						serialized = '0'");
			}
		}
	}
}