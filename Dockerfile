FROM debian:jessie

RUN apt-get update &&\                   
    apt-get install -y build-essential libncurses5-dev gawk git subversion libssl-dev \
                       gettext unzip zlib1g-dev file python wget sudo &&\  
    apt-get clean &&\
    wget https://downloads.lede-project.org/releases/17.01.2/targets/ramips/rt305x/lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz &&\
    tar xf lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz &&\
    rm -f lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz
#    sudo /lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64/scripts/feeds update
    
ENV STAGING_DIR="/lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64/staging_dir/" \
    PATH="/lede-sdk-17.01.2-ramips-rt305x_gcc-5.4.0_musl-1.1.16.Linux-x86_64/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.16/bin/:${PATH}"
