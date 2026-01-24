<?php
class ModelExtensionDashboardChartByCountryAndRegion extends Model {
	public function getTotalOrdersByRegion($country_id) {
		$implode = [];
		$result = [];
		$results = [];
		
		$zone_id = (int)$this->config->get('config_zone_id');
		
		$this->load->model('localisation/zone');
		$zone_info = $this->model_localisation_zone->getZone($zone_id);
		
		if (is_array($this->config->get('config_complete_status'))) {
			foreach ($this->config->get('config_complete_status') as $order_status_id) {
				$implode[] = (int)$order_status_id;
			}
		}
		
		if ($implode) {
			$sql = "SELECT COUNT(*) AS total, z.name, z.zone_id FROM `" . DB_PREFIX . "order` o";
			$sql .= " LEFT JOIN `" . DB_PREFIX . "zone` z ON (o.payment_zone_id = z.zone_id)";
			$sql .= " WHERE o.order_status_id IN (".implode(',', array_map('intval', $implode)).")";
			
			if($country_id == $this->config->get('config_country_id')) {
				$sql .= " AND o.payment_country_id IN (0, ".(int)$country_id.")";
			} else {
				$sql .= " AND o.payment_country_id = '".(int)$country_id."'";
			}
			
			$sql .= " GROUP BY z.zone_id ORDER BY total DESC";
			
			$query = $this->db->query($sql);
			
			if($query->rows) {
				$total = 0;
				
				foreach($query->rows as $result) {
					if($result['zone_id']) {
						$results[$result['zone_id']] = [
							'zone_id'	=> $result['zone_id'],
							'name' 		=> $result['name'],
							'total' 	=> $result['total']
						];
					} else {
						$total = $total + $result['total'];
					}
				}
				
				if($total) {
					if(!isset($results[$zone_id])) {
						$results[$zone_id] = [
							'zone_id'	=> $zone_id,
							'name' 		=> $zone_info['name'],
							'total' 	=> $total
						];
					} else {
						$results[$zone_id]['total'] = $results[$zone_id]['total'] + $total;
					}
					
					if(count($results) > 1) {
						array_multisort(array_column($results, 'total'), SORT_DESC, $results);
					}
				}
			}
		}
		
		return $results;
	}
	
	public function getTotalOrdersByCountry() {
		$implode = [];
		$result = [];
		$results = [];
		
		$country_id = (int)$this->config->get('config_country_id');
		
		$this->load->model('localisation/country');
		$country_info = $this->model_localisation_country->getCountry($country_id);
		
		if (is_array($this->config->get('config_complete_status'))) {
			foreach ($this->config->get('config_complete_status') as $order_status_id) {
				$implode[] = (int)$order_status_id;
			}
		}
		
		if ($implode) {
			$sql = "SELECT COUNT(*) AS total, c.name, c.country_id FROM `" . DB_PREFIX . "order` o";
			$sql .= " LEFT JOIN `" . DB_PREFIX . "country` c ON (o.payment_country_id = c.country_id)";
			$sql .= " WHERE o.order_status_id IN (".implode(',', array_map('intval', $implode)).")";
			$sql .= " GROUP BY c.country_id ORDER BY total DESC";
			
			$query = $this->db->query($sql);
			
			if($query->rows) {
				$total = 0;
				
				foreach($query->rows as $result) {
					if($result['country_id']) {
						$results[$result['country_id']] = [
							'country_id'	=> $result['country_id'],
							'name' 			=> $result['name'],
							'total' 		=> $result['total']
						];
					} else {
						$total = $total + $result['total'];
					}
				}
				
				if($total) {
					if(!isset($results[$country_id])) {
						$results[$country_id] = [
							'country_id'	=> $country_id,
							'name' 			=> $country_info['name'],
							'total' 		=> $total
						];
					} else {
						$results[$country_id]['total'] = $results[$country_id]['total'] + $total;
					}
					
					if(count($results) > 1) {
						array_multisort(array_column($results, 'total'), SORT_DESC, $results);
					}
				}
			}
		}
		
		return $results;
	}
}