REM JDK >= 11 needed!
set JAVA_HOME=D:\dev\java\AdoptOpenJDK\jdk-14.0.2.12-hotspot
path %JAVA_HOME%\bin;%PATH%

REM rename all groovy files to .java, ideally groovy code should be very similar to java code
forfiles /S /M *.groovy /C "cmd /c rename @file @fname.java"

mvn clean generate-sources
pause

