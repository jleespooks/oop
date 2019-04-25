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

$authorId = new Author("9bfacccd-75fe-413e-9886-2bf4e0d7f89e",
	"avatar", "9bfacccd75fe413e98862bf4e0d7f89e", "new@email",
	'$argon2i$v=19$m=1024,t=384,p=2$T1B6Ymdqa3FJdmZqaDdqYg$hhyC1jf2WjbgfD8Jp6GZE9Tg3IpsYpXKm2VWYOJq8LA',
	"newAuthorUsername");
var_dump($authorId);