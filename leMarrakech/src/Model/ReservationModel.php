<?php

namespace Src\Model;

use Src\Classes\Database;

class ReservationModel {

	public function add($BookingDate, $NumberOfSeats, $BookingHour, $FirstName, $LastName, $email, $phone, $message) {
		$db = new Database();

		$db->executeSql(
			"INSERT INTO Booking
			( BookingDate, NumberOfSeats, CreationTimestamp, BookingHour, FirstName, LastName, Email, Phone, Message)
			VALUES ( ?, ?, NOW(), ?, ?, ?, ?, ?, ?)",
			[ $BookingDate, $NumberOfSeats, $BookingHour, $FirstName, $LastName, $email, $phone, $message ]
		);
	}

  public function ListAllRes(){
    $db = new Database();
    $booking= $db->query("SELECT *
                           FROM Booking
                           ORDER BY BookingDate DESC ");
    return $booking;
  }

}
