<?php
/**
 * setup require_onces, namespaces (make sure to include both autoloaders
 * use the new keyword to call the constructor in the class and add all required parameters
 * var_dump() the result from the step above
 *
 **/
require_once(dirname(__DIR__) . "/vendor/autoload.php");
require_once(dirname(__DIR__) . "/classes/autoload.php");

use jamparan3\Oop\Author;

$authorId = new Author("21883ebd-c227-46b1-8288-2eb995d98f31", "something.com", "bc55b0a785e84f74b690d643f1e8fc45", "something2019@gmail.com", "badpassword", '$argon2i$v=19$m=1024,t=384,p=2$T1B6Ymdqa3FJdmZqaDdqYg$hhyC1jf2WjbgfD8Jp6GZE9Tg3IpsYpXKm2VWYOJq8LA');
var_dump($authorId);