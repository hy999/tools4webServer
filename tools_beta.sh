#! /bin/sh
#! /bin/bash
echo "
/*********************ToolsForwebServer beta for centos *************/
The script need root pression to do,you should use:sudu sh tools_beta.sh
chose what you want to do(eg:a,b,c,d......):

a)install PHP 5.6 + PHP 7.2 + nginx +mysql 5.7
b)install PHP 5.6 + PHP 7.2 +Apache + mysql 5.7
c) exit
"
read id
if [ "${id}" = "a" || "${id}"="b" ];then
	wget https://www.php.net/distributions/php-5.6.40.tar.gz
	tar -xf php-5.6.40.tar.gz
	cd php-5.6.40/
	./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php --enable-mbstring --enable-ftp --with-gd --with-jpeg-dir=/usr --with-png-dir=/usr --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-pear --enable-sockets --with-freetype-dir=/usr --with-zlib --with-libxml-dir=/usr --with-xmlrpc --enable-zip --enable-fpm --enable-xml --enable-sockets --with-gd --with-zlib --with-iconv --enable-zip --with-freetype-dir=/usr/lib/ --enable-soap --enable-pcntl --enable-cli --with-curl --with-openssl
	cd ../
	wget https://www.php.net/distributions/php-7.2.22.tar.gz
	tar -xf php-7.2.22.tar.gz
	cd php-7.2.22/
	./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php --enable-mbstring --enable-ftp --with-gd --with-jpeg-dir=/usr --with-png-dir=/usr --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-pear --enable-sockets --with-freetype-dir=/usr --with-zlib --with-libxml-dir=/usr --with-xmlrpc --enable-zip --enable-fpm --enable-xml --enable-sockets --with-gd --with-zlib --with-iconv --enable-zip --with-freetype-dir=/usr/lib/ --enable-soap --enable-pcntl --enable-cli --with-curl --with-openssl
	yum install -y gcc gcc-c++  make zlib zlib-devel pcre pcre-devel  libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel glibc glibc-devel glib2 glib2-devel bzip2 bzip2-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel openssl openssl-devel openldap openldap-devel nss_ldap openldap-clients openldap-servers
	yum -y install gcc pcre-devel zlib-devel openssl openssl-devel
	cd ../
	#wget https://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.28-linux-glibc2.12-i686.tar.gz
	#tar -xf mysql-5.7.28-linux-glibc2.12-i686.tar.gz -C ../../usr/local/
	#cd 
fi
if [ "${id}"="a" ];then
	wget https://nginx.org/download/nginx-1.17.5.tar.gz
	tar -xf nginx-1.17.5.tar.gz
	cd ngins-1.17.5
	./configure --prefix=/usr/local/nginx
	make
	make install
	cd ../../../usr/local/nginx
	./sbin/nginx -t
	if [ $? -ep 0  ];then

	else
		mkdir logs
		chmod 700 logs
		cd ../../../usr/local/nginx/sbin
		./nginx
		if [ $? -ep 0  ];then
			echo "nginx install success!"
		else
			echo "nginx install false! "
		fi

	fi
fi
if [ "${id}"="b" ];then 
	echo "php 7.2 and php 5.6 installed,and Apache wasn't install in this system!"
