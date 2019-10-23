#! /bin/sh
#! /bin/bash
echo "此脚本仅在ubuntu 19.10使用通过
建议在安装前先卸载已安装工具
执行此脚本需要root权限，建议命令:sudo ssh tools.sh
a:安装mysql服务端
b:安装sql-server服务端
c:安装PHP脚本
d:安装.net core 3.0 + .net core 2.2"
read id
if [ "${id}" = "a" ];then
	service mysqld start
	if [ $? -eq 0 ];then
          echo "mysql已被安装,程序自动退出"
        else
          echo "功能暂未添加"
	fi
elif [ "${id}" = "b" ];then
	echo "功能暂未加"
elif [ "${id}" = "c" ];then
	echo "功能暂未添加"
elif [ "${id}" = "d" ];then
	echo "请选择您的操作系统：
	a:Ubuntu 16.04
	b:Ubuntu 18.04
	c:Ubuntu 19.04
	d:Debian 9
	e:Debian 10
	f:Centos 7
	g:RHEL 7
	h:RHEL 8
	i:退出
	"
	read systemid
	if [ "${systemid}" = "a" ];then
		wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
		sudo dpkg -i packages-microsoft-prod.deb
		sudo apt-get update
		sudo apt-get install apt-transport-https
		sudo apt-get update
		sudo apt-get install dotnet-sdk-3.0
		if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
		sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
		if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

	elif [ "${systemid}" = "b" ];then
                wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
                sudo dpkg -i packages-microsoft-prod.deb
		sudo add-apt-repository universe
                sudo apt-get update
                sudo apt-get install apt-transport-https
                sudo apt-get update
                sudo apt-get install dotnet-sdk-3.0
                if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

	elif [ "${systemid}" = "c" ];then
                wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
                sudo dpkg -i packages-microsoft-prod.deb
                sudo apt-get update
                sudo apt-get install apt-transport-https
                sudo apt-get update
                sudo apt-get install dotnet-sdk-3.0
                if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

	elif [ "${systemid}" = "d" ];then
                wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
		sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
		wget -q https://packages.microsoft.com/config/debian/9/prod.list
		sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
		sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
		sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
		sudo apt-get update
		sudo apt-get install apt-transport-https
		sudo apt-get update
		sudo apt-get install dotnet-sdk-3.0
		if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

	elif [ "${systemid}" = "e" ];then
                wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
                sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
                wget -q https://packages.microsoft.com/config/debian/9/prod.list
                sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
                sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
                sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
                sudo apt-get update
                sudo apt-get install apt-transport-https
                sudo apt-get update
                sudo apt-get install dotnet-sdk-3.0
                if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

	elif [ "${systemid}" = "f" ];then
                sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
		sudo yum install dotnet-sdk-3.0
		 if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo yum install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi
	elif [ "${systemid}" = "g" ];then
		yum install rh-dotnet30 -y
		scl enable rh-dotnet30 bash
          	if [ $? -eq 0 ];then
          		echo ".NET Core 3.0 安装成功"
       		else
        	  	echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
	        fi
		yum install rh-dotnet22 -y
                scl enable rh-dotnet22 bash
		if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
			dotnet
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi
      
	elif [ "${systemid}" = "h" ];then
               	sudo dnf install dotnet-sdk-3.0
	       	if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 安装成功"
                else
                        echo ".NET Core 3.0安装失败，正在尝试安装.NET Core 2.2"
                fi
                sudo dnf install dotnet-sdk-3.0
	       	if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 安装成功"
                        dotnet 
                else
                        echo ".NET Core 2.2安装失败，请到 https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install 查看帮助内容"
                fi

        elif [ "${systemid}" = "i" ];then
		exit

	fi
fi
