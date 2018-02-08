<?php

namespace Src\Model;

use Src\Classes\Database;

class ContactModel {


	public function add($name, $mail, $content) {
		$db = new Database();

		$db->executeSql(
			"INSERT INTO Contact
			(Name, Mail, Content, Date)
			VALUES ( ?, ?, ?, NOW())",
			[ $name, $mail, $content ]
		);
	}


	public function ListAllMes(){
    $db = new Database();
    $message= $db->query("SELECT *
                           FROM Contact
                           ORDER BY Date DESC ");
    
    return $message;
  }
}
