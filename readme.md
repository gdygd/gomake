# 'Make build script for go'

**1. it makes build for golang**
**2. it gets process version after 'make'**

## Set .profile or .bash_profile 
 * **It is important to set env varialble**
```
$MAKE_DIR : make file directory path

$YOUR_BIN : your target process path

$YOUR_SRC : your main source path
```


## usage 
 - param 0 or empty : no version up
 - param 1 : only patch version up
 - param 2 : only minor version up
 - param 3: only major version up

 **Ex) make**
  * **ubuntu@ubuntu:~/work/go/src/gomake$ make_all**
 ```
    Compile and Get your process version
    1st param =
    Compile source (No version up)
    buildate:20240719 MAJOR:2 MINOR:1 PATCH:1
    buildate2:20240719 20240719  MAJOR:2 MINOR:1 PATCH:1
    go build -o /home/ubuntu/work/go/src/gomake/process main.go
    version:20240719.2.1.1
 ```
 **Ex) version check**
  * **ubuntu@ubuntu:~/work/go/src/gomake$ ./process**
 ```
    Makefile and version test...
    process version: 20240719.2.1.1

    ubuntu@ubuntu:~/work/go/src/gomake$
 ```