sudo apt purge libreoffice-common unity-webapps-common thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese gnome-sudoku transmission-common gnome-orca webbrowser-app landscape-client-ui-install deja-dup unity-webapps-common -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo add-apt-repository ppa:caffeine-developers/ppa -y
sudo apt-get install apt-transport-https -y
sudo add-apt-repository 'deb https://typora.io/linux ./' -y
sudo apt-get update
sudo apt-get install -f
sudo apt-get install sublime-text terminator okular typora nautilus-actions vim-gtk cmake  cmake-curses-gui curl wget rar flashplugin-installer shutter unity-tweak-tool unity-webapps-service preload redshift-gtk openjdk-8-jdk caffeine git ros-kinetic-desktop-full zsh -y
sudo apt-get install -y python-catkin-pkg python-rosdep ros-$ROS_DISTRO-catkin gksu
sudo apt-get install -y python3-pip python3-colcon-common-extensions python3-setuptools python3-vcstool
pip3 install -U setuptools
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh
sudo snap install cloudcompare
sudo snap install mathpix-snipping-tool
sudo snap install vlc




#ceres
# CMake
sudo apt-get install cmake
# google-glog + gflags
sudo apt-get install libgoogle-glog-dev
# BLAS & LAPACK
sudo apt-get install libatlas-base-dev
# Eigen3
sudo apt-get install libeigen3-dev
# SuiteSparse and CXSparse (optional)
# - If you want to build Ceres as a *static* library (the default)
#   you can use the SuiteSparse package in the main Ubuntu package
#   repository:
sudo apt-get install libsuitesparse-dev
# - However, if you want to build Ceres as a *shared* library, you must
#   add the following PPA:
sudo add-apt-repository ppa:bzindovic/suitesparse-bugfix-1319687
sudo apt-get update
sudo apt-get install libsuitesparse-dev


tar zxf ceres-solver-1.14.0.tar.gz
mkdir ceres-bin
cd ceres-bin
cmake ../ceres-solver-1.14.0
make -j3
make test
# Optionally install Ceres, it can also be exported using CMake which
# allows Ceres to be used without requiring installation, see the documentation
# for the EXPORT_BUILD_DIR option for more information.
make install




sudo apt install cmake libeigen3-dev libsuitesparse-dev libqt4-dev qt4-qmake libqglviewer-dev qt5-qmake libqglviewer-dev
mkdir build
cd build
cmake ../
make -j4



sudo apt-get install libproj-dev openni2-utils libeigen3-dev













1）报错：rospack: error while loading shared libraries: librospack.so: cannot open shared object file: No such file or directory
解决：首先我们要先确定操作系统里面是否包含了这个共享库：在终端中输入命令：
　　　　　sudo updatedb
　　　　　locate rospack
　　　　 可以看到librospack.so所在的地址：
　　　　　将共享库目录添加到共享库配置文件/etc/ld.so.conf中
　　　　　由于权限问题，需要在root下输入以下命令：
　　　　　　cat /etc/ld.so.conf
　　　　　　echo "/opt/ros/kinetic/lib" >> /etc/ld.so.conf
　　　　　　ldconfig　　
