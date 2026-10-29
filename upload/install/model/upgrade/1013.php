<?php
class ModelUpgrade1013 extends Model {
	public function upgrade() {
		$config = new Config();
		
		$query = $this->db->query("show columns FROM `" . DB_PREFIX . "product` WHERE Field = 'certification_link'");
				
		if (!$query->num_rows) { 
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "product` ADD `certification_link` varchar(512) SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `location`");
		}
		
		if($config->get('config_certification_status') == null) {
			$this->db->query("INSERT INTO `" . DB_PREFIX . "setting` SET store_id = '0', `code` = 'config', `key` = 'certification_link_status', `value` = '0'");
		}
	}
}