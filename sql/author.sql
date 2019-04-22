/**create table author(
authorId binary(16) not null,
authorAvatarUrl varchar(255),
authorActivationToken char(32),
authorEmail varchar(128) not null,
authorHash char(97) not null,
authorUsername varchar(32) not null,
unique(authorEmail),
unique(authorUsername),
INDEX(authorEmail),
primary key(authorId)
);
**/

<?php

jamparan3\Edu\Cnm\oop;

require_once(dirname(__DIR__, 2) . "composer/vendor/autoload.php");

use Ramsey\Uuid\Uuid;
/**
 * creating a table for DDL author class
 * @author jamparan3 <jamparan3@cnm.edu>
 * @version 4.0.0
 **/

class Profile