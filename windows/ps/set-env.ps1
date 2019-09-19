# 声明采用UTF-8编码
# 在华为云系统 win7下会导致powershell停止运行
chcp 65001

Write-Host $(Get-Date) 设置系统环境变量开始

$PS_HOME="D:\01.Resources\06.Project\myproject\deploy\windows\ps"
$BAT_HOME="D:\01.Resources\06.Project\myproject\deploy\windows\bat"
$BASH_HOME="D:\01.Resources\06.Project\myproject\deploy\linux"

$JAVA_HOME="D:\Workspace\jdk\jdk1.8.0_181"
$IBM_JAVA_PATH="C:\ProgramData\Oracle\Java\javapath"
$classpath=".;"
$GIT_HOME="D:\Workspace\PortableGit"
$MAVEM_HOME="D:\Workspace\apache-maven-3.5.4"
$GRADLE_HOME="D:\Workspace\gradle-4.8.1-all\gradle-4.8.1"
$TOMCAT_HOME="D:\Workspace\apache-tomcat-7.0.92"
$CATALINA_HOME="D:\Workspace\apache-tomcat-7.0.92"
$H2_HOME="D:\Workspace\h2"
$NLS_LANG="SIMPLIFIED CHINESE_CHINA.AL32UTF8"
$GRADLE_USER_HOME="D:\Workspace\.gradle"

# %USERPROFILE%\AppData\Local\Microsoft\WindowsApps
# 系统默认path变量值
$env_path="%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;%SYSTEMROOT%\System32\OpenSSH\"

# 扩展path变量值
$env_ext_path=$env_path+";%JAVA_HOME%\bin;%GIT_HOME%\bin;%MAVEM_HOME%\bin;%GRADLE_HOME%\bin;%TOMCAT_HOME%\bin;%H2_HOME%\bin;C:\Program Files\TortoiseSVN\bin;%PS_HOME%;%BASH_HOME%"

[environment]::SetEnvironmentvariable("BAT_HOME", $BAT_HOME, "machine")
[environment]::SetEnvironmentvariable("PS_HOME", $PS_HOME, "machine")
[environment]::SetEnvironmentvariable("BASH_HOME", $BASH_HOME, "machine")

[environment]::SetEnvironmentvariable("JAVA_HOME", $JAVA_HOME, "machine")
[environment]::SetEnvironmentvariable("classpath", $classpath, "machine")
[environment]::SetEnvironmentvariable("GIT_HOME", $GIT_HOME, "machine")
[environment]::SetEnvironmentvariable("MAVEM_HOME", $MAVEM_HOME, "machine")
[environment]::SetEnvironmentvariable("GRADLE_HOME", $GRADLE_HOME, "machine")
[environment]::SetEnvironmentvariable("TOMCAT_HOME", $TOMCAT_HOME, "machine")
[environment]::SetEnvironmentvariable("CATALINA_HOME", $CATALINA_HOME, "machine")
[environment]::SetEnvironmentvariable("H2_HOME", $H2_HOME, "machine")
[environment]::SetEnvironmentvariable("NLS_LANG", $NLS_LANG, "machine")
[environment]::SetEnvironmentvariable("GRADLE_USER_HOME", $GRADLE_USER_HOME, "machine")

[environment]::SetEnvironmentvariable("path", $env_ext_path, "machine")

Write-Host $(Get-Date) 设置系统环境变量成功

pause
