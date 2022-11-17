<?php
namespace App\Controllers;
use CodeIgniter\Config\Services;
use App\Models\Databasemodel;
class Admin extends BaseController{

	public function index(){
		if(session()->get('admin')){
			return view('admin/landing');
		}else if(session()->get('supplier')){
			return redirect()->to(base_url('supplier'));
		}else{
			return redirect()->to(base_url(''));
		}
	}
}
?>