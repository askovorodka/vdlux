<?php

  define("DB_HOST","mysql_vdlux");
  define("DB_NAME","vdlux");
  define("DB_USER","vdlux");
  define("DB_PASS","pwd");

  define("ROOT", dirname(__FILE__) . "/../");
  define("DOMAIN", 'http://'.$_SERVER['SERVER_NAME'].'/');
  define("SHOP_IMAGE", DOMAIN . 'uploaded_files/shop_images/');
  define("TPL_PATH", ROOT . "templates/");
  define("TPL_SHOP_PATH", ROOT . "modules/shop/front/templates/");
  define('PROPERTY_COLOR_ID', 9);
  define('PROPERTY_ENTITY_BRAND', 'brand');
  define('PROPERTY_ENTITY_COLOR', 'color');
  define('PROPERTY_ENTITY_SIZE', 'size');
  define('PROPERTY_SIZE_ID', 8);
  define('PROPERTY_BRAND_ID', 7);
  
?>
