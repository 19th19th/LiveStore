<?php
namespace Cache;
class Redis {
	private $expire;
	private $cache;

	public function __construct($expire) {
		if (!extension_loaded('redis')) {
			throw new \RuntimeException('The server does not support redis extension!');
		}

		$this->expire = $expire;

		$this->cache = new \Redis();
		$this->cache->pconnect(CACHE_HOSTNAME, CACHE_PORT);

		if (!empty(CACHE_PASSWORD)) {
			if (!$this->cache->auth((string)CACHE_PASSWORD)) {
				throw new \RuntimeException('redis: wrong password!');
			}
		}
	}

	public function get($key) {
		$data = $this->cache->get(CACHE_PREFIX . $key);
		if ($data === false || $data === null) {
			return null;
		}

		return json_decode($data, true);
	}

	public function set($key, $value) {
		$status = $this->cache->set(CACHE_PREFIX . $key, json_encode($value));

		if ($status) {
			$this->cache->expire(CACHE_PREFIX . $key, $this->expire);
		}

		return $status;
	}

	public function delete($key) {
		$pattern = CACHE_PREFIX . $key . '*';
		$iterator = null;

		do {
			$keys = $this->cache->scan($iterator, $pattern, 1000);
			if ($keys !== false && !empty($keys)) {
				foreach ($keys as $matched_key) {
					$this->cache->del($matched_key);
				}
			}
		} while ($iterator > 0);
	}
}