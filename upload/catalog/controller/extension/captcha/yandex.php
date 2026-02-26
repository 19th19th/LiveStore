<?php
class ControllerExtensionCaptchaYandex extends Controller {
    public function index($error = array()) {
        $this->load->language('extension/captcha/yandex');

        if (isset($error['captcha'])) {
			$data['error_captcha'] = $error['captcha'];
		} else {
			$data['error_captcha'] = '';
		}

		$data['site_key'] = $this->config->get('captcha_yandex_key');

        $data['route'] = $this->request->get['route']; 

		return $this->load->view('extension/captcha/yandex', $data);
    }

	public function validate() {

		if (!empty($this->session->data['ycapcha'])) {
			return;
		}

		$this->load->language('extension/captcha/yandex');

		if (empty($this->request->post['smart-token'])) {
			return $this->language->get('error_captcha');
		}

		$ip = $this->request->server['HTTP_CF_CONNECTING_IP']
			?? $this->request->server['HTTP_X_FORWARDED_FOR']
			?? $this->request->server['REMOTE_ADDR']
			?? '';

		$args = http_build_query([
			"secret" => $this->config->get('captcha_yandex_secret'),
			"token"  => $this->request->post['smart-token'],
			"ip"     => $ip
		]);

		$ch = curl_init("https://smartcaptcha.yandexcloud.net/validate?$args");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_TIMEOUT, 3);

		$response = curl_exec($ch);
		$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
		curl_close($ch);

		if ($httpcode !== 200 || !$response) {
			return $this->language->get('error_captcha');
		}

		$result = json_decode($response, true);

		if (isset($result['status']) && $result['status'] === 'ok') {
			$this->session->data['ycapcha'] = true;
		} else {
			return $this->language->get('error_captcha');
		}
	}
}
