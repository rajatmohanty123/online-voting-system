<?php	
	function sendOTP($email,$otp) {
		require('phpmailer/class.phpmailer.php');
		require('phpmailer/class.smtp.php');
	
		$message_body = "One Time Password for Online Voting System login authentication is:<br/><br/>" . 
                $otp;
		$mail = new PHPMailer();
                $mail->AddReplyTo('rajatmohanty64@gmail.com','OVS');
                $mail->SetFrom('rajatmohanty64@gmail.com','OVS');
                $mail->AddAddress($email);
                $mail->Subject="OTP to Login";
                $mail->MsgHTML($message_body);
                $result=$mail->Send();
                if(!$result){
                   echo "Mailer Error:".$mail->ErrorInfo;
                   }
                else
                 {
                 return $result;
                 }
		//$mail->IsSMTP();
		//$mail->SMTPDebug = 0;
		//$mail->SMTPAuth = TRUE;
		//$mail->SMTPSecure = 'tls'; // tls or ssl
		//$mail->Port     = 587;
		//$mail->Username = "rajatmohanty64@gmail.com";
		//$mail->Password = "Jackmohanty@65";
		//$mail->Host     = "localhost";
		//$mail->Mailer   = "smtp";
		//$mail->SetFrom("rajatmohanty64@gmail.com", "OVS");
		//$mail->AddAddress($email);
		//$mail->Subject = "OTP to Login";
		//$mail->MsgHTML($message_body);
		//$mail->IsHTML(true);		
		//$result = $mail->Send();
		
		//return $result;
	}
?>