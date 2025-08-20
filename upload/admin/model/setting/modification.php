<?php
class ModelSettingModification extends Model {

	private function parseMeta($xml) {
		$meta = array('name'=>'','code'=>'','author'=>'','version'=>'','link'=>'');
		if (!$xml) return $meta;

		if (preg_match('/<name>([^<]*)<\/name>/i',     $xml, $m)) $meta['name']    = trim($m[1]);
		if (preg_match('/<code>([^<]*)<\/code>/i',     $xml, $m)) $meta['code']    = trim($m[1]);
		if (preg_match('/<author>([^<]*)<\/author>/i', $xml, $m)) $meta['author']  = trim($m[1]);
		if (preg_match('/<version>([^<]*)<\/version>/i',$xml, $m)) $meta['version']= trim($m[1]);
		if (preg_match('/<link>([^<]*)<\/link>/i',     $xml, $m)) $meta['link']    = trim($m[1]);

		return $meta;
	}

	private function columnExists($table, $column) {
		$q = $this->db->query("SHOW COLUMNS FROM `" . $table . "` LIKE '" . $this->db->escape($column) . "'");
		return (bool)$q->num_rows;
	}

	public function addModification($data) {
		$this->db->query("INSERT INTO `" . DB_PREFIX . "modification` SET 
			`extension_install_id` = '" . (int)$data['extension_install_id'] . "',
			`name` = '"    . $this->db->escape($data['name'])    . "',
			`code` = '"    . $this->db->escape($data['code'])    . "',
			`author` = '"  . $this->db->escape($data['author'])  . "',
			`version` = '" . $this->db->escape($data['version']) . "',
			`link` = '"    . $this->db->escape($data['link'])    . "',
			`xml` = '"     . $this->db->escape($data['xml'])     . "',
			`status` = '"  . (int)$data['status'] . "',
			`date_added` = NOW()
		");
	}

	public function addModificationBackup($modification_id, $data) {
		$xml = html_entity_decode($data['xml'], ENT_QUOTES, 'UTF-8');
		$this->db->query("INSERT INTO `" . DB_PREFIX . "modification_backup` SET 
			`modification_id` = '" . (int)$modification_id . "',
			`code` = '" . $this->db->escape($data['code']) . "',
			`xml` = '" . $this->db->escape($xml) . "',
			`date_added` = NOW()
		");
	}

	public function editModification($modification_id, $data) {
		$curQ = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `modification_id` = '" . (int)$modification_id . "'");
		$cur  = $curQ->row ? $curQ->row : array();

		$xml  = isset($data['xml'])  ? html_entity_decode($data['xml'],  ENT_QUOTES, 'UTF-8') : (isset($cur['xml'])  ? $cur['xml']  : '');
		$name = isset($data['name']) ? html_entity_decode($data['name'], ENT_QUOTES, 'UTF-8') : (isset($cur['name']) ? $cur['name'] : '');

		$meta = $this->parseMeta($xml);

		$name    = ($meta['name']    !== '') ? $meta['name']    : $name;
		$code    = isset($data['code'])    ? $data['code']    : ($meta['code']    !== '' ? $meta['code']    : (isset($cur['code'])    ? $cur['code']    : ''));
		$author  = isset($data['author'])  ? $data['author']  : ($meta['author']  !== '' ? $meta['author']  : (isset($cur['author'])  ? $cur['author']  : ''));
		$version = isset($data['version']) ? $data['version'] : ($meta['version'] !== '' ? $meta['version'] : (isset($cur['version']) ? $cur['version'] : ''));
		$link    = isset($data['link'])    ? $data['link']    : ($meta['link']    !== '' ? $meta['link']    : (isset($cur['link'])    ? $cur['link']    : ''));
		$status  = isset($data['status'])  ? (int)$data['status'] : (isset($cur['status']) ? (int)$cur['status'] : 1);

		$sql = "UPDATE `" . DB_PREFIX . "modification` SET
			`name`    = '" . $this->db->escape($name)    . "',
			`code`    = '" . $this->db->escape($code)    . "',
			`author`  = '" . $this->db->escape($author)  . "',
			`version` = '" . $this->db->escape($version) . "',
			`link`    = '" . $this->db->escape($link)    . "',
			`xml`     = '" . $this->db->escape($xml)     . "',
			`status`  = '" . (int)$status . "'";

		if ($this->columnExists(DB_PREFIX . 'modification', 'date_modified')) {
			$sql .= ", `date_modified` = NOW()";
		}

		$sql .= " WHERE `modification_id` = '" . (int)$modification_id . "'";
		$this->db->query($sql);
	}

	public function setModificationRestore($modification_id, $xml_raw) {
		$xml  = html_entity_decode($xml_raw, ENT_QUOTES, 'UTF-8');
		$meta = $this->parseMeta($xml);

		$curQ = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `modification_id` = '" . (int)$modification_id . "'");
		$cur  = $curQ->row ? $curQ->row : array();

		$name    = ($meta['name']    !== '' ? $meta['name']    : (isset($cur['name'])    ? $cur['name']    : ''));
		$code    = ($meta['code']    !== '' ? $meta['code']    : (isset($cur['code'])    ? $cur['code']    : ''));
		$author  = ($meta['author']  !== '' ? $meta['author']  : (isset($cur['author'])  ? $cur['author']  : ''));
		$version = ($meta['version'] !== '' ? $meta['version'] : (isset($cur['version']) ? $cur['version'] : ''));
		$link    = ($meta['link']    !== '' ? $meta['link']    : (isset($cur['link'])    ? $cur['link']    : ''));
		$status  = isset($cur['status']) ? (int)$cur['status'] : 1;

		$sql = "UPDATE `" . DB_PREFIX . "modification` SET
			`name`    = '" . $this->db->escape($name)    . "',
			`code`    = '" . $this->db->escape($code)    . "',
			`author`  = '" . $this->db->escape($author)  . "',
			`version` = '" . $this->db->escape($version) . "',
			`link`    = '" . $this->db->escape($link)    . "',
			`xml`     = '" . $this->db->escape($xml)     . "',
			`status`  = '" . (int)$status . "'";

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
		$q = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `modification_id` = '" . (int)$modification_id . "'");
		return $q->row;
	}

	public function getModifications($data = array()) {
		$sql = "SELECT * FROM `" . DB_PREFIX . "modification`";

		$sort_data = array('name','author','version','status','date_added');

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
			if ($data['start'] < 0) $data['start'] = 0;
			if ($data['limit'] < 1) $data['limit'] = 20;
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$q = $this->db->query($sql);
		return $q->rows;
	}

	public function getModificationBackups($modification_id) {
		$q = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification_backup` WHERE `modification_id` = '" . (int)$modification_id . "' ORDER BY `date_added` DESC");
		return $q->rows;
	}

	public function getModificationBackup($modification_id, $backup_id) {
		$q = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification_backup` WHERE `modification_id` = '" . (int)$modification_id . "' AND `backup_id` = '" . (int)$backup_id . "' ORDER BY `date_added` DESC");
		return $q->row;
	}

	public function getTotalModifications() {
		$q = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "modification`");
		return $q->row['total'];
	}

	public function getModificationByCode($code) {
		$q = $this->db->query("SELECT * FROM `" . DB_PREFIX . "modification` WHERE `code` = '" . $this->db->escape($code) . "'");
		return $q->row;
	}
}
