<?php
$db_conf = array (
        'db' => array( 
                'DSN'      => 'pgsql:dbname=matrix',
                'user'     => 'squiz',
                'password' => '',
                'type'     => 'pgsql',
               ),
        'db2' => array (
                'DSN'      => 'pgsql:dbname=matrix',
                'user'     => 'squiz',
                'password' => '',
                'type'     => 'pgsql',
               ),
        'db3' => array (
                'DSN'      => 'pgsql:dbname=matrix',
                'user'     => 'squiz_secondary',
                'password' => '',
                'type'     => 'pgsql',
               ),
        'dbcache' => NULL,
        'dbsearch' => NULL,
        );

return $db_conf;
?>
