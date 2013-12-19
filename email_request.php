<?php
/***************************************************************************
 *   copyright				: (C) 2008 - 2013 WeBid
 *   site					: http://www.webidsupport.com/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

include 'common.php';
$ERR;
// Get auction_id from sessions variables
if (isset($_REQUEST['auction_id']))
{
	$auction_id = $_SESSION['CURRENT_ITEM'] = intval($_REQUEST['auction_id']);
}
elseif (isset($_SESSION['CURRENT_ITEM']))
{
	$auction_id = $_SESSION['CURRENT_ITEM'];
}

if (!$user->is_logged_in())
{
	$_SESSION['REDIRECT_AFTER_LOGIN'] = 'email_request.php';
	header('location: user_login.php');
	exit;
}

$query = "SELECT id, email, nick, company FROM " . $DBPrefix . "users WHERE id = " . intval($_REQUEST['user_id']);
$result = mysql_query($query);
$system->check_mysql($result, $query, __LINE__, __FILE__);
$user_id = mysql_result($result, 0, 'id');
$email = mysql_result($result, 0, 'email');
$username = mysql_result($result, 0, 'nick');
$company = mysql_result($result, 0, 'company');

$sent = false;
if (isset($_POST['action']) && $_POST['action'] == 'pvt_msg')
{
    
    $query = "SELECT id, email, nick, company FROM " . $DBPrefix . "users WHERE id = " . intval($user->user_data['id']);
    $result = mysql_query($query);
    $system->check_mysql($result, $query, __LINE__, __FILE__);

    $item_title = $system->uncleanvars('Message from ' . mysql_result($result, 0, 'company'));
    $from_email = ($system->SETTINGS['users_email'] == 'n') ? $user->user_data['email'] : $system->SETTINGS['adminmail'];
    // Send e-mail message
    //$subject = $MSG['335'] . ' ' . $system->SETTINGS['sitename'] . ' ' . $MSG['336'] . ' ' . $item_title;
//    $subject = $system->uncleanvars($_POST['sender_question']);
    $subject = $item_title;
    $message = $system->uncleanvars($_POST['sender_question']);
    $emailer = new email_handler();
    $emailer->email_uid = $user_id;
    $emailer->email_basic($subject, $email, nl2br($message), $user->user_data['name'] . '<'. $from_email . '>'); //send the email :D
    // send a copy to their mesasge box
    $nowmessage = nl2br($system->cleanvars($message));
    $query = "INSERT INTO " . $DBPrefix . "messages (sentto, sentfrom, sentat, message, subject)
    		VALUES (" . $user_id . ", " . $user->user_data['id'] . ", '" . time() . "', '" . $nowmessage . "', '" . $system->cleanvars(sprintf($item_title)) . "')";
    $system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
    $sent = true;
    $user->setMessage('email_request', 'Message successfully send');
}

$template->assign_vars(array(
		'B_SENT' => $sent,
		'ERROR' => (isset($TPL_error_text)) ? $TPL_error_text : '',
		'USERID' => $user_id,
		'USERNAME' => $username,
		'AUCTION_ID' => $auction_id,
		'MSG_TEXT' => (isset($_POST['TPL_text'])) ? $_POST['TPL_text'] : '',
		'COMPANY' => $company
		));

$template->assign_vars($user->getMessageVars('email_request'));

include 'header.php';
$template->set_filenames(array(
		'body' => 'email_request.tpl'
		));
$template->display('body');
include 'footer.php';
?>
