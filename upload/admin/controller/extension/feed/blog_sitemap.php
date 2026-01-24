<?php
class ControllerExtensionFeedBlogSitemap extends Controller {
	private $error = [];

	public function index() {
		$this->load->language('extension/feed/blog_sitemap');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('feed_blog_sitemap', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=feed', true));
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
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=feed', true)
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/feed/blog_sitemap', 'user_token=' . $this->session->data['user_token'], true)
		];

		$data['action'] = $this->url->link('extension/feed/blog_sitemap', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=feed', true);

		if (isset($this->request->post['feed_blog_sitemap_status'])) {
			$data['feed_blog_sitemap_status'] = $this->request->post['feed_blog_sitemap_status'];
		} else {
			$data['feed_blog_sitemap_status'] = $this->config->get('feed_blog_sitemap_status');
		}

		$data['data_feed'] = HTTP_CATALOG . 'index.php?route=extension/feed/blog_sitemap';

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/feed/blog_sitemap', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/feed/blog_sitemap')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}