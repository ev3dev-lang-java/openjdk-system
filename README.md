EV3DEV OpenJDK integration
==========================

This repo contains shell scripts integrating Java to ev3dev.

Model
-----

```
/usr/bin/elj-change-java
  - change ELJ java

/usr/bin/elj-shjar
  - build shjar
    - per-app config
      - java path
      - appcds path
      - additional flags
      - jarpath
      - modulepath

/usr/bin/elj-run
  - run JAR file manually

/etc/elj.d/01-selected-java
  - JAVA_HOME

/etc/elj.d/02-default-flags
  - additional Java flags

/etc/elj.d/03-appcds
  - AppCDS base path

/etc/elj.d/04-default-paths
  - jarpath/classpath/modulepath

/usr/lib/jvm/jri1
/usr/lib/jvm/jri2
/usr/lib/jvm/jdk3
  - JRIs/JDKs

/var/cache/elj/appcds/${ID1}
/var/cache/elj/appcds/${ID2}
/var/cache/elj/appcds/${ID3}
  - AppCDS caches

/usr/lib/elj/jar
  - libA.jar
  - libB.jar

/usr/lib/elj/jmod
  - libC.jmod
  - libD.jmod

/home/robot/app.shjar
  - run application
  - change its config
  - rebuild appcds cache
```
