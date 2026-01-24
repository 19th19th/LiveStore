<?php
class ModelUpgrade1010 extends Model {
	public function upgrade() {

        $config = new Config();

        $setting_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "setting` WHERE store_id = '0'");

        foreach ($setting_query->rows as $setting) {
            $config->set($setting['key'], $setting['value']);
        }

        $query = $this->db->query("SELECT language_id FROM `" . DB_PREFIX . "language` WHERE `code` = '".$config->get('config_language')."'" );

        $language_id = $query->row["language_id"];
		
		$query = $this->db->query("show tables FROM `".DB_DATABASE."` LIKE '" . DB_PREFIX . "url_alias'");
		
		if ($query->num_rows) {
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "url_alias`");

			if ($query->rows) {
				// Migrating url alias to new table
				foreach ($query->rows as $url) {
					$this->db->query("INSERT INTO `" . DB_PREFIX . "seo_url` SET `store_id` = '0', `language_id` = '".(int)$language_id."', `query` = '" . $this->db->escape($url['query']) . "', `keyword` = '" . $this->db->escape($url['keyword']) . "'");
				}
			}
		}
	}
}
