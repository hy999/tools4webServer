#! /bin/sh
#! /bin/bash
echo "
when you install the software,you must sure you server don't have it!
The script need root'pression to do,you should use: sudo sh tools.sh
chose what you want it do(eg:a,b,c,d.....):
a:install mysql server
b:install sql server 
c:install php script
d:install .net core 3.0 and .net core 2.2"
read id
if [ "${id}" = "a" ];then
	service mysqld start
	if [ $? -eq 0 ];then
          echo "mysql is installed,the program will exit."
        else
          echo "The tools wasn't add,please wait for it"
	fi
elif [ "${id}" = "b" ];then
	echo "The tools wasn't add,please wait for it"
elif [ "${id}" = "c" ];then
	echo "The tools wasn't add,please wait for it"
elif [ "${id}" = "d" ];then
	echo "chose you system-id(eg:a,b,c...)：
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
                        echo ".NET Core 3.0 installed successful!"
                else
                        echo "fail to install .NET Core 3.0，try install .NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 installed successful!"
                        dotnet
                else
                        echo "fail to install .NET Core 2.2, link to  https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install to get help"
                fi

	elif [ "${systemid}" = "c" ];then
                wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
                sudo dpkg -i packages-microsoft-prod.deb
                sudo apt-get update
                sudo apt-get install apt-transport-https
                sudo apt-get update
                sudo apt-get install dotnet-sdk-3.0
                if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 install successful!"
                else
                        echo "fail to install .NET Core 3.0，try to install .NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 install successeful!"
                        dotnet
                else
                        echo "fail to install .NET Core 2.2，link to  https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install get help"
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
                        echo ".NET Core 3.0 install successful!"
                else
                        echo "fail to install .NET Core 3.0，try to install .NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 install successful!"
                        dotnet
                else
                        echo "fail to install .NET Core 2.2 link to https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install get hlep"
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
                        echo ".NET Core 3.0 install successful!"
                else
                        echo "fail to install .NET Core 3.0 ，try to install .NET Core 2.2"
                fi
                sudo apt-get update
                sudo apt-get install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 install successful!"
                        dotnet
                else
                        echo "fail to install .NET Core 2.2，link to https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install get help"
                fi

	elif [ "${systemid}" = "f" ];then
                sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
		sudo yum install dotnet-sdk-3.0
		 if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 install successful!"
                else
                        echo "fail to install .NET Core 3.0，try to install .NET Core 2.2"
                fi
                sudo yum install dotnet-sdk-2.2
                if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 installed successful!"
                        dotnet
                else
                        echo "fail to install .NET Core 2.2，link to  https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install to get help"
                fi
	elif [ "${systemid}" = "g" ];then
		yum install rh-dotnet30 -y
		scl enable rh-dotnet30 bash
          	if [ $? -eq 0 ];then
          		echo ".NET Core 3.0 install successful!"
       		else
        	  	echo "fail to install .NET Core 3.0，try to install .NET Core 2.2"
	        fi
		yum install rh-dotnet22 -y
                scl enable rh-dotnet22 bash
		if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 install successful!"
			dotnet
                else
                        echo "fail to install .NET Core 2.2，link to  https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install get help"
                fi
      
	elif [ "${systemid}" = "h" ];then
               	sudo dnf install dotnet-sdk-3.0
	       	if [ $? -eq 0 ];then
                        echo ".NET Core 3.0 install successful!"
                else
                        echo "fail to install .NET Core 3.0，try to install .NET Core 2.2"
                fi
                sudo dnf install dotnet-sdk-3.0
	       	if [ $? -eq 0 ];then
                        echo ".NET Core 2.2 install successful!"
                        dotnet 
                else
                        echo "fail to install .NET Core 2.2，link to https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install get help"
                fi

        elif [ "${systemid}" = "i" ];then
		exit
	fi
fi
