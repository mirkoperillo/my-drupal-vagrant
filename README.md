
Vagrant machine to work with my drupal 7 sites

# Tech stack
* Ubuntu 12.04
* Apache 2.2.x
* Mysql 5.5.x
* Php 5.3.x
* Phpmyadmin 3.4.x

# Quickstart
* visit localhost:8000/phpmyadmin
* login with root/admin
* create database <DB_NAME>
* import your dump
* cp site code in wwww/<YOUR_SITE> folder
* config db data in settings.php
    ```
      $databases = array (
      'default' => 
      array (
        'default' => 
        array (
          'database' => '<DB_NAME>',
          'username' => 'root',
          'password' => 'admin',
          'host' => '127.0.0.1',
          'port' => '',
          'driver' => 'mysql',
          'prefix' => '',
        ),
      ),
    );
    ```
* visit localhost:8000/<YOUR_SITE>
