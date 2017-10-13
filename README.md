# Calculadora
Ejemplo calculadora Xcode

** Compilar un proyecto en Xcode desde linea de comandos:

1. Crear un provisional profile
2. Instalar desde terminal: xcode-select --install
3. Configurar el archivos exportOptions.plist
4. Compilar el proyecto con el comando:
  xcodebuild -scheme Calculadora clean archive -archivePath build/Calculadora
5. Crear el archivo .ipa con el siguiente comando:
  xcodebuild -exportArchive -archivePath "build/Calculadora.xcarchive" -exportOptionsPlist exportOptions.plist -exportPath $PWD/build

** Para Xcode 9:
- Si no sabemos como configurar el archivo exportOptions.plist, podemos generarlo por primer vez de la siguiente forma:
Product>Archive, luego exportar el archivo .ipa, en la carpeta encontraremos el archivo exportOptions.plist ya configurado.
