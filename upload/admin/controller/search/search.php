<?php
// *	@source		See SOURCE.txt for source and other copyright.
// *	@license	GNU General Public License version 3; see LICENSE.txt

class ControllerSearchSearch extends Controller {
	public function index() {
		if(empty($this->session->data['user_token'])) {
			return;
		}
	
		$this->load->language('search/search');

        $data = array();
		
		$data['user_token'] = $this->session->data['user_token'];
		
		return $this->load->view('search/search', $data);
	}

    public function search(){
        $this->load->language('search/search');
		
		$this->load->model('tool/image');
		$this->load->model('search/search');

        $data['user_token'] = $this->session->data['user_token'];

        if(!empty($this->request->get['query'])) {
            $_data['query'] = $this->request->get['query'];
        } else {
            $json['error'] = $this->language->get('text_empty_query');
        }

        if(!empty($this->request->get['search-option'])) {
            $search_option = $this->request->get['search-option'];
        } else {
            $search_option = 'catalog';
        }

        if(!empty($json['error'])) {
            $this->response->setOutput(json_encode($json));
            return;
        }

        $data['no_image'] = $this->model_tool_image->resize('no_image.png', 30, 30);
        
        switch($search_option) {
            case 'catalog':
                // Get products
                $data['products'] = $this->model_search_search->getProducts($_data);

                foreach($data['products'] as $key => $product){
                    if(!empty($product['image'])) {
                        $data['products'][$key]['image'] = $this->model_tool_image->resize($product['image'], 30, 30);
                    } else {
                        $data['products'][$key]['image'] = $this->model_tool_image->resize('no_image.png', 30, 30);
                    }

                    $data['products'][$key]['url'] = $this->url->link('catalog/product/edit', 'user_token=' . $this->session->data['user_token'] . '&product_id=' . $product['product_id'], true);
                }

                // Get categories
                $data['categories'] = $this->model_search_search->getCategories($_data);

                foreach($data['categories'] as $key => $category){
                    if(!empty($category['image'])) {
                        $data['categories'][$key]['image'] = $this->model_tool_image->resize($category['image'], 30, 30);
                    } else {
                        $data['categories'][$key]['image'] = $this->model_tool_image->resize('no_image.png', 30, 30);
                    }

                    $data['categories'][$key]['url'] = $this->url->link('catalog/category/edit', 'user_token=' . $this->session->data['user_token'] . '&category_id=' . $category['category_id'], true);
                }
				
                // Get manufacturers
                $data['manufacturers'] = $this->model_search_search->getManufacturers($_data);

                foreach($data['manufacturers'] as $key => $manufacturer){
                    if(!empty($manufacturer['image'])) {
                        $data['manufacturers'][$key]['image'] = $this->model_tool_image->resize($manufacturer['image'], 30, 30);
                    } else {
                        $data['manufacturers'][$key]['image'] = $this->model_tool_image->resize('no_image.png', 30, 30);
                    }

                    $data['manufacturers'][$key]['url'] = $this->url->link('catalog/manufacturer/edit', 'user_token=' . $this->session->data['user_token'] . '&manufacturer_id=' . $manufacturer['manufacturer_id'], true);
                }

                $json['result'] = $this->load->view('search/catalog_result', $data);

                break;
            case 'customers':
                $data['customers'] = $this->model_search_search->getCustomers($_data);

                foreach($data['customers'] as $key => $customer) {
                    $data['customers'][$key]['url'] = $this->url->link('customer/customer/edit', 'user_token=' . $this->session->data['user_token'] . '&customer_id=' . $customer['customer_id'], true);
                }

                $json['result'] = $this->load->view('search/customers_result', $data);
					
                break;
            case 'orders':
                $data['orders'] = $this->model_search_search->getOrders($_data);

                foreach($data['orders'] as $key => $order) {
                    $data['orders'][$key]['url'] = $this->url->link('sale/order/info', 'user_token=' . $this->session->data['user_token'] . '&order_id=' . $order['order_id'], true);
                }

                $json['result'] = $this->load->view('search/orders_result', $data);
                break;
            default:
                break;
        }
		
		$this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }
}