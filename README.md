my little forum
===============

<a href="https://mylittleforum.net/">my little forum</a> is a simple PHP and MySQL based internet forum that displays the messages in classical threaded view (tree structure). It is Open Source licensed under the GNU General Public License. The main claim of this web forum is simplicity. Furthermore it should be easy to install and run on a standard server configuration with PHP and MySQL.

* <a href="https://github.com/ilosuna/mylittleforum/wiki">More about my little forum</a>
* [Demo and project discussion forum](https://mylittleforum.net/forum/)

System requirements
-------------------

* Webserver with PHP >= 5.4 and MySQL >= 5.5.3 and < 7.3

**Attention**

Because of changes in PRCE 2 that got introduced in PHP 7.3 the forum script currently fails to check for valid e-mail-addresses. We have a proper fix in the pipeline for My Little Forum 2.5. If you want to run your forum under PHP 7.3 or newer, please read https://mylittleforum.net/forum/index.php?id=12129 (last paragraphs and followups).

Installation
------------

1. Unzip the script package.
2. Upload the complete folder "forum" to your server.
3. Depending on your server configuration the write permissions of the subdirectory templates_c (CHMOD 770, 775 or 777) and the file config/db_settings.php (CHMOD 666) might need to be changed in order that they are writable by the script.
4. Run the installation script by accessing yourdomain.tld/forum/install/ in your web browser and follow the instructions.
