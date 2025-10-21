<?php
class ModelUpgrade1011 extends Model {
	public function upgrade() {

		$query = $this->db->query("SHOW KEYS FROM `" . DB_PREFIX . "manufacturer_description` WHERE Key_name = 'PRIMARY'");

		if (!$query->num_rows) {
			$this->db->query("ALTER TABLE `" . DB_PREFIX . "manufacturer_description` ADD PRIMARY KEY (`manufacturer_id`, `language_id`)");
		}
	}
}
