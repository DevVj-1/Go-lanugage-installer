# !/bin/bash

#install go
if [[ -z  ]];then
echo It looks like go is not installed, would you like to install it now
PS3=Please select an option : 
choices=(yes no)
select choice in ; do
        case  in
                yes)

					echo Installing Golang
					wget https://dl.google.com/go/go1.17.6.linux-amd64.tar.gz
					sudo tar -xvf go1.17.6.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=/root/go
					export PATH=/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/usr/local/go/bin
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=/root/go'	>> ~/.bash_profile			
					echo 'export PATH=/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/usr/local/go/bin' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo Please install go and rerun this script
					echo Aborting installation...
					exit 1
					;;
	esac	
done
fi
