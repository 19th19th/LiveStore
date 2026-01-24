<?php
// *	@source		See SOURCE.txt for source and other copyright.
// *	@license	GNU General Public License version 3; see LICENSE.txt

class ModelSearchSearch extends Model {
    public function getProducts($data = []) {
        $sql = "SELECT p.product_id, pd.name, p.model, p.image";
        $sql .= " FROM " . DB_PREFIX . "product p";
        $sql .= " LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)";
        $sql .= " WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
        $sql .= " AND pd.name LIKE '%" . $this->db->escape($data['query']) . "%' OR p.model LIKE '" . $this->db->escape($data['query']) . "%' OR p.sku LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " GROUP BY p.product_id";
        $sql .= " ORDER BY pd.name ASC";
        $sql .= " LIMIT 5";

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getCategories($data = []) {
		$language_id = (int)$this->config->get('config_language_id');
		
        $sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(cdpath.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, cmain.image";
        $sql .= " FROM " . DB_PREFIX . "category_path cp";
        $sql .= " LEFT JOIN " . DB_PREFIX . "category cmain ON (cp.category_id = cmain.category_id)";
        $sql .= " LEFT JOIN " . DB_PREFIX . "category cpath ON (cp.path_id = cpath.category_id)";
        $sql .= " LEFT JOIN " . DB_PREFIX . "category_description cdmain ON (cp.category_id = cdmain.category_id)";
        $sql .= " LEFT JOIN " . DB_PREFIX . "category_description cdpath ON (cp.path_id = cdpath.category_id)";
        $sql .= " WHERE cdpath.language_id = '" . $language_id . "'";
        $sql .= " AND cdmain.language_id = '" . $language_id . "'";
        $sql .= " AND cdmain.name LIKE '%" . $this->db->escape($data['query']) . "%'";
        $sql .= " GROUP BY cp.category_id";
        $sql .= " ORDER BY name ASC";
        $sql .= " LIMIT 5";

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getManufacturers($data = []) {
        $sql = "SELECT DISTINCT m.manufacturer_id, m.name, m.image";
        $sql .= " FROM " . DB_PREFIX . "manufacturer m";
        $sql .= " LEFT JOIN " . DB_PREFIX . "manufacturer_description md ON (m.manufacturer_id = m.manufacturer_id)";
        $sql .= " WHERE m.name LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " ORDER BY m.name ASC";
        $sql .= " LIMIT 5";

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getCustomers($data = []) {
        $sql = "SELECT customer_id, email, CONCAT(c.firstname, ' ', c.lastname) AS name";
        $sql .= " FROM " . DB_PREFIX . "customer c";
        $sql .= " WHERE c.firstname LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " OR c.email LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " OR c.lastname LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " ORDER BY name ASC";
        $sql .= " LIMIT 5";

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getOrders($data = []) {
        $sql = "SELECT o.order_id, CONCAT(o.firstname, ' ', o.lastname) AS customer, o.total, o.currency_code, o.currency_value, o.date_added, o.email";
        $sql .= " FROM `" . DB_PREFIX . "order` o";
        $sql .= " WHERE o.order_status_id > '0'";
        $sql .= " AND (o.order_id = '" . (int)$this->db->escape($data['query']) . "'";
        $sql .= " OR o.firstname LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " OR o.email LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " OR o.lastname LIKE '" . $this->db->escape($data['query']) . "%'";
        $sql .= " OR CONCAT(o.invoice_prefix, o.invoice_no) LIKE '" . $this->db->escape($data['query']) . "%')";
        $sql .= " ORDER BY o.order_id ASC";
        $sql .= " LIMIT 5";

        $query = $this->db->query($sql);

        return $query->rows;
    }
}