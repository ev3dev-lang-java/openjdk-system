EV3DEV OpenJDK integration
==========================

This repo contains shell scripts integrating Java to ev3dev.

Model
-----

/opt/elj/bin/elj-change-java
  - change ELJ java

/opt/elj/bin/elj-shjar
  - build shjar
    - per-app config
      - java path
      - appcds path
      - additional flags
      - jarpath
      - modulepath

/opt/elj/bin/elj-run
  - run JAR file manually

/opt/elj/etc.d/01-selected-java
  - JAVA_HOME

/opt/elj/etc.d/02-default-flags
  - additional Java flags

/opt/elj/etc.d/03-appcds
  - AppCDS base path

/opt/elj/etc.d/04-default-paths
  - jarpath/classpath/modulepath

/opt/elj/runtimes/jri1
/opt/elj/runtimes/jri2
/opt/elj/runtimes/jdk3
  - JRIs/JDKs

/opt/elj/appcds/${ID1}
/opt/elj/appcds/${ID2}
/opt/elj/appcds/${ID3}
  - AppCDS caches

/opt/elj/lib/jar
  - libA.jar
  - libB.jar

/opt/elj/lib/jmod
  - libC.jmod
  - libD.jmod

/home/robot/app.shjar
  - run application
  - change its config
  - rebuild appcds cache
