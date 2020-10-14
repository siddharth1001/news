echo "drop database if exists news_store;" | mysql -uroot
echo "create database news_store;" | mysql -uroot
# grant permission
echo "grant all on news_store.* to 'ruser'@'localhost' identified by 'ruser';" | mysql -uroot
