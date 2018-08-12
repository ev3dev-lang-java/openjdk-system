EV3DEV OpenJDK integration
==========================

This repo contains shell scripts integrating Java to ev3dev.

Model
-----

```
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

/etc/elj.d/01-default-flags
  - additional Java flags

/etc/elj.d/02-appcds
  - AppCDS base path

/etc/elj.d/03-default-paths
  - jarpath/classpath/modulepath

/usr/lib/jvm/jri1
/usr/lib/jvm/jri2
/usr/lib/jvm/jdk3
  - system-managed Java versions

/home/robot/appcds/${ID1}
/home/robot/appcds/${ID2}
/home/robot/appcds/${ID3}
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
