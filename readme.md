# 'Make build script for go'

1. it makes build for golang
2. it gets process version after 'make'

## Version Rules
 - builddate.major.minor.patch 
 Ex)
 ```
    20240701.1.1.1
 ```

 ## Manual

 ### Manage build version
 - param 0 or empty : no version up
 - param 1 : only patch version up
 - param 2 : only minor version up
 - param 3: only major version up

 #### 1. No version up (only compile)
  * command: $ make_all
 ```
Compile and Get your process version
1st param =
Compile source (No version up)
buildate:20240705 MAJOR:1 MINOR:1 PATCH:1
buildate2:20240705 20240719  MAJOR:1 MINOR:1 PATCH:1
version:20240705.1.1.1
 ```

 #### 2. Patch version up
  * command: $ make_all 1
 ```
Compile and Get your process version
1st param = 1
Compile source (patch version up)
buildate1:20240705 MAJOR:1 MINOR:1 PATCH:1
BUILDDT 20240719
buildate2:20240719 20240719  MAJOR:1 MINOR:1 PATCH:2
version:20240719.1.1.2
 ```

 #### 3. Minor version up
  * command: $ make_all 2
 ```
Compile and Get your process version
1st param = 2
Compile source (minor version up)
buildate1:20240719 MAJOR:1 MINOR:1 PATCH:2
BUILDDT 20240719
buildate2:20240719 20240719  MAJOR:1 MINOR:2 PATCH:1
version:20240719.1.2.1
 ```

 #### 4. Major version up
  * command: $ make_all 3
 ```
Compile and Get your process version
1st param = 3
Compile source (major version up)
buildate1:20240719 MAJOR:1 MINOR:2 PATCH:1
BUILDDT 20240719
buildate2:20240719 20240719  MAJOR:2 MINOR:1 PATCH:1
version:20240719.2.1.1
 ```