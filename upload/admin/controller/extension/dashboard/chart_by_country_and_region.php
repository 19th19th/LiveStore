<?php
class ControllerExtensionDashboardChartByCountryAndRegion extends Controller {
	private $error = [];

	public function index() {
		$this->load->language('extension/dashboard/chart_by_country_and_region');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('dashboard_chart_by_country_and_region', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=dashboard', true));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=dashboard', true)
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/dashboard/chart_by_country_and_region', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['action'] = $this->url->link('extension/dashboard/chart_by_country_and_region', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=dashboard', true);

		if (isset($this->request->post['dashboard_chart_by_country_and_region_width'])) {
			$data['dashboard_chart_by_country_and_region_width'] = $this->request->post['dashboard_chart_by_country_and_region_width'];
		} else {
			$data['dashboard_chart_by_country_and_region_width'] = $this->config->get('dashboard_chart_by_country_and_region_width');
		}

		$data['columns'] = [];
		
		for ($i = 3; $i <= 12; $i++) {
			$data['columns'][] = $i;
		}
				
		if (isset($this->request->post['dashboard_chart_by_country_and_region_status'])) {
			$data['dashboard_chart_by_country_and_region_status'] = $this->request->post['dashboard_chart_by_country_and_region_status'];
		} else {
			$data['dashboard_chart_by_country_and_region_status'] = $this->config->get('dashboard_chart_by_country_and_region_status');
		}

		if (isset($this->request->post['dashboard_chart_by_country_and_region_sort_order'])) {
			$data['dashboard_chart_by_country_and_region_sort_order'] = $this->request->post['dashboard_chart_by_country_and_region_sort_order'];
		} else {
			$data['dashboard_chart_by_country_and_region_sort_order'] = $this->config->get('dashboard_chart_by_country_and_region_sort_order');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/dashboard/chart_by_country_and_region_form', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/dashboard/chart_by_country_and_region')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
		
	public function dashboard() {
		$this->load->language('extension/dashboard/chart_by_country_and_region');

		$this->document->addScript('view/javascript/jquery/flot/jquery.flot.js');
		$this->document->addScript('view/javascript/jquery/flot/jquery.flot.pie.js');

		$data['user_token'] = $this->session->data['user_token'];
		
		return $this->load->view('extension/dashboard/chart_by_country_and_region_info', $data);
	}
	
	public function chartByRegion() {
		$json = [];
		
		$country_id = isset($this->request->get['country_id']) ? (int)$this->request->get['country_id'] : 0;
		
		if($country_id) {
			$this->load->model('extension/dashboard/chart_by_country_and_region');

			$results = $this->model_extension_dashboard_chart_by_country_and_region->getTotalOrdersByRegion($country_id);
		
			if($results) {
				foreach ($results as $result) {
					$json[] = [
						'name' 	=> $result['name'],
						'total'	=> $result['total']
					];
				}
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function chartByCountry() {
		$json = [];
		
		$this->load->model('extension/dashboard/chart_by_country_and_region');
		
		$results = $this->model_extension_dashboard_chart_by_country_and_region->getTotalOrdersByCountry();
		
		if($results) {
			foreach ($results as $key => $result) {
				$json['data'][] = [
					'country_id'=> $result['country_id'],
					'name'		=> $result['name'],
					'total'		=> $result['total']
				];
				
				$json['countries'][] = $result['country_id'];
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
