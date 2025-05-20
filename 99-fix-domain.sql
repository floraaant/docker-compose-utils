USE tradecorp;

UPDATE psac_shop_url 
SET domain = 'localhost:8888', 
    domain_ssl = 'localhost:8888', 
    physical_uri = '/' 
WHERE id_shop_url = 1;

UPDATE psac_configuration 
SET value = 'localhost:8888' 
WHERE name IN ('PS_SHOP_DOMAIN', 'PS_SHOP_DOMAIN_SSL');

UPDATE psac_configuration 
SET value = '0' 
WHERE name IN ('PS_SSL_ENABLED', 'PS_SSL_ENABLED_EVERYWHERE');