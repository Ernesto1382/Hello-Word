@ECHO OFF
:: Open first window with Selenium Grid
cd C:\SeleniumGrid\server
start cmd /k "java -jar selenium-server-standalone-3.141.59.jar -role hub" 

SLEEP 20
:: Open second window with appium mobile A50
start cmd /k "appium -p 4723 --nodeconfig C:/SeleniumGrid/devices/SamsungA50.json"

:: Open second window with appium mobile GalaxuA3
start cmd /k "appium -p 4733 --nodeconfig C:/SeleniumGrid/devices/SamsungGalaxyA3.json"