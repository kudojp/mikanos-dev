```sh
$ make run DIR=mikanos

# 以下コンテナ内で実行。
$ cd edk2
$ ln -s ~/mikanos/MikanLoaderPkg ./
$ source edksetup.sh
$ vim Conf/target.txt

# BootLoaderのビルド
$ build
$ run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi

# mikanosのビルド & QEMUの実行
$ source $HOME/osbook/devenv/buildenv.sh
$ cd ../mikanos/
$ APPS_DIR=apps RESOURCE_DIR=resource ./build.sh run
```
