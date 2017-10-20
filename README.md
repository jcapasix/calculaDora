# Calculadora
Ejemplo calculadora Xcode

**Compilar un proyecto en Xcode desde linea de comandos:***

1. Crear un provisional profile
2. Instalar desde terminal: xcode-select --install
3. Configurar el archivos exportOptions.plist
4. Compilar el proyecto con el comando:
**xcodebuild -scheme Calculadora clean archive -archivePath build/Calculadora**

5. Crear el archivo .ipa con el siguiente comando:
**xcodebuild -exportArchive -archivePath "build/Calculadora.xcarchive" -exportOptionsPlist exportOptions.plist -exportPath $PWD/build**

**Para Xcode 9:**
- Si no sabemos como configurar el archivo exportOptions.plist podemos generarlo por primer vez de la siguiente manera:
Product > Archive -> Export > [App Store], en la carpeta que creamos al exportar el archivo .ipa encontraremos el archivo **exportOptions.plist** ya configurado.
