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

?php
namespace jleespooks\oop;
require_once("autoload.php");
require_once(dirname(__DIR__,2) . "/vendor/autoload.php");
use Ramsey\Uuid\Uuid;
/**
 * Cross Section of an Author
 *
 * This is a cross section of what is probably stored about an author. This entity is a top level entity that
 * holds the keys to the other entities in this example.
 *
 * @author jleespooks <jamparan3@cnm.edu>
 * @version 1.0.0
 **/
class Author {
	use ValidateUuid;
	use ValidateDate;
	/**
	 * id and P.K. for author
	 * @var string Uuid $authorId
	 */
	private $authorId;
	/**
	 * Avatar for this Profile;
	 * @var  $authorAvatarUrl
	 **/
	private $authorAvatarUrl;
	/**
	 *This is the activation token verifying author isn't malicious
	 * @var $authorActivationToken
	 */
	private $authorActivationToken;
	/**
	 * This is the authors email, this is a unique index;
	 * @var $authorEmail
	 */
	private $authorEmail;
	/**
	 * This is part of password protection;
	 * @var $authorHash
	 */
	private $authorHash;
	/**
	 * This is the authors username, its unique;
	 * @var $authorUsername
	 */
	private $authorUsername;
	/**
	 * constructor for this Author
	 *
	 * @param string|Uuid $newAuthorId id of this Author or null if a new Author.
	 * @param string $newAuthorAvatarUrl url for authors avatar.
	 * @param string $newAuthorActivationToken string containing activation token.
	 * @param string $newAuthorEmail authors email address.
	 * @param string $newAuthorHash string for authors password.
	 * @param string $newAuthorUsername string containing authors username.
	 * @throws \InvalidArgumentException if data types are not valid
	 * @throws \RangeException if data values are out of bounds (e.g., strings too long, negative integers)
	 * @throws \TypeError if data types violate type hints
	 * @throws \Exception if some other exception occurs
	 * @Documentation https://php.net/manual/en/language.oop5.decon.php
	 **/
