<?php
class ControllerMarketplaceEvent extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		$this->getList();
	}

	public function enable() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		if (isset($this->request->get['event_id']) && $this->validate()) {
			$this->model_setting_event->enableEvent($this->request->get['event_id']);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function disable() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		if (isset($this->request->get['event_id']) && $this->validate()) {
			$this->model_setting_event->disableEvent($this->request->get['event_id']);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}

	public function add() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_setting_event->addEvent($this->request->post['code'], $this->request->post['trigger'], $this->request->post['action'], $this->request->post['status'], $this->request->post['sort_order']);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_setting_event->editEvent($this->request->get['event_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getForm();
	}
	
	public function delete() {
		$this->load->language('marketplace/event');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/event');

		if (isset($this->request->post['selected']) && $this->validate()) {
			foreach ($this->request->post['selected'] as $event_id) {
				$this->model_setting_event->deleteEvent($event_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getList();
	}	
	
	public function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'code';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = (int)$this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true)
		);

		$data['delete'] = $this->url->link('marketplace/event/delete', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['add'] = $this->url->link('marketplace/event/add', 'user_token=' . $this->session->data['user_token'] . $url, true);

		$data['events'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$event_total = $this->model_setting_event->getTotalEvents();

		$results = $this->model_setting_event->getEvents($filter_data);

		foreach ($results as $result) {
			$data['events'][] = array(
				'event_id'   => $result['event_id'],
				'code'       => $result['code'],
				'trigger'    => $result['trigger'],
				'action'     => $result['action'],
				'sort_order' => $result['sort_order'],
				'status'     => $result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
				'enable'     => $this->url->link('marketplace/event/enable', 'user_token=' . $this->session->data['user_token'] . '&event_id=' . $result['event_id'] . $url, true),
				'disable'    => $this->url->link('marketplace/event/disable', 'user_token=' . $this->session->data['user_token'] . '&event_id=' . $result['event_id'] . $url, true),
				'edit'       => $this->url->link('marketplace/event/edit', 'user_token=' . $this->session->data['user_token'] . '&event_id=' . $result['event_id'] . $url, true),
				'enabled'    => $result['status']
			);
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_code'] = $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . '&sort=code' . $url, true);
		$data['sort_sort_order'] = $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . '&sort=sort_order' . $url, true);
		$data['sort_status'] = $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . '&sort=status' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $event_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($event_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($event_total - $this->config->get('config_limit_admin'))) ? $event_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $event_total, ceil($event_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('marketplace/event', $data));
	}

	protected function getForm() {
		$data['text_form'] = !isset($this->request->get['event_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['code'])) {
			$data['error_code'] = $this->error['code'];
		} else {
			$data['error_code'] = '';
		}

		if (isset($this->error['trigger'])) {
			$data['error_trigger'] = $this->error['trigger'];
		} else {
			$data['error_trigger'] = '';
		}

		if (isset($this->error['action'])) {
			$data['error_action'] = $this->error['action'];
		} else {
			$data['error_action'] = '';
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true)
		];

		if (isset($this->request->get['event_id'])) {
			$data['form_action'] = $this->url->link('marketplace/event/edit', 'user_token=' . $this->session->data['user_token'] . '&event_id=' . $this->request->get['event_id'] . $url, true);
		} else {
			$data['form_action'] = $this->url->link('marketplace/event/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		}

		$data['cancel'] = $this->url->link('marketplace/event', 'user_token=' . $this->session->data['user_token'] . $url, true);

		if (isset($this->request->get['event_id']) && $this->request->server['REQUEST_METHOD'] != 'POST') {
			$event_info = $this->model_setting_event->getEvent($this->request->get['event_id']);
		}

		$fields = [
			'code',
			'trigger',
			'action',
			'status',
			'sort_order'
		];

		foreach ($fields as $field) {
			if (isset($this->request->post[$field])) {
				$data[$field] = $this->request->post[$field];
			} elseif (isset($event_info[$field])) {
				$data[$field] = $event_info[$field];
			} else {
				if ($field == 'status') {
					$data[$field] = 1;
				} else {	
					$data[$field] = '';
				}
			}
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('marketplace/event_form', $data));
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'marketplace/event')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (empty($this->request->post['code'])) {
			$this->error['code'] = $this->language->get('error_code');
		} elseif (utf8_strlen($this->request->post['code']) < 3 || utf8_strlen($this->request->post['code']) > 64) {
			$this->error['code'] = $this->language->get('error_code_length');
		}

		if (empty($this->request->post['trigger'])) {
			$this->error['trigger'] = $this->language->get('error_trigger');
		} elseif (!preg_match('/^[a-zA-Z0-9_\/]+\/(before|after)$/', $this->request->post['trigger'])) {
			$this->error['trigger'] = $this->language->get('error_trigger_format');
		}

		if (empty($this->request->post['action'])) {
			$this->error['action'] = $this->language->get('error_action');
		} elseif (!preg_match('/^[a-zA-Z0-9_\/]+$/', $this->request->post['action'])) {
			$this->error['action'] = $this->language->get('error_action_format');
		}

		return !$this->error;
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'marketplace/event')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}