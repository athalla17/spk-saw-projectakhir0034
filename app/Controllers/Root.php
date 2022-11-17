<?php
namespace App\Controllers;
use CodeIgniter\Config\Services;
use App\Models\Databasemodel;
class Root extends BaseController{

	public function index(){
		if(session()->get('admin')){
			return redirect()->to(base_url('admin'));
		}else if(session()->get('supplier')){
			return redirect()->to(base_url('supplier'));
		}else{
			return view('situs/landing');
		}
	}

	public function proseslogin(){
		$dbm = new Databasemodel();
		$db = db_connect();
		$username = $this->request->getPost('username');
		$password = md5($this->request->getPost('password'));
		$cek = $db->query("select * from pengguna where username = '".$username."' and password = '".$password."'")->getResultArray();
		if(count($cek) > 0){
			echo "asejsdbaskdjs";
			$akses = $dbm->pilih("pengguna",['username' => $username, 'password' => $password]);
			session()->set($akses['level'],$akses['kodepengguna']);
			return redirect()->to(base_url(''));
		}else{
			session()->setFlashdata('gagal','Kombinasi log in salah!');
			return view('situs/landing');
		}
	}

	public function proseslogout(){
		session_unset();
		if(session()->get('admin')){
			session()->remove('admin');
		}
		if(session()->get('supplier')){
			session()->remove('supplier');
		}
		return redirect()->to(base_url(''));
	}
}
?>