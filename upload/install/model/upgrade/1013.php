<?php
class ModelUpgrade1013 extends Model {
	public function upgrade() {
		// Product
		$query = $this->db->query("SHOW COLUMNS FROM `" . DB_PREFIX . "product` WHERE Field = 'certification_link'");

		if (!$query->num_rows) {
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "product` ADD `certification_link` varchar(512) NOT NULL DEFAULT '' AFTER `location`");
		}

		// Setting
		$store_ids = array(0);

		$stores = $this->db->query("SELECT store_id FROM `" . DB_PREFIX . "store`");

		foreach ($stores->rows as $store) {
			$store_ids[] = (int)$store['store_id'];
		}

		foreach ($store_ids as $store_id) {
			$query = $this->db->query("SELECT setting_id FROM `" . DB_PREFIX . "setting`
				WHERE store_id = '" . (int)$store_id . "'
					AND `code` = 'config'
					AND `key` = 'config_certification_link_status'");

			if (!$query->num_rows) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "setting`
					SET store_id = '" . (int)$store_id . "',
						`code` = 'config',
						`key` = 'config_certification_link_status',
						`value` = '0',
						serialized = '0'");
			}
		}
	}
}
