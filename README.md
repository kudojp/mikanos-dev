```sh
$ docker build . -t dev-mikanos
$ make run DIR=mikanos

# 以下コンテナ内で実行。
$ cd edk2
$ ln -s ~/mikanos/MikanLoaderPkg ./
$ source edksetup.sh
$ cp /tmp/target.txt Conf/target.txt

# mikanOSのビルド
$ source $HOME/osbook/devenv/buildenv.sh # This sets CPPFLAGS and LDFLAGS.
$ cd $HOME/mikanos/kernel
$ make

# BootLoaderのビルド
$ build
$ run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/mikanos/kernel/kernel.elf
```

Ignore below now.

```
# mikanosのビルド & QEMUの実行
$ cd ../mikanos/
$ APPS_DIR=apps RESOURCE_DIR=resource ./build.sh run
```
