jar_file = ap-Practica2.jar

limpiar:
	rm -rf bin juegoVidaDocs ap-Practica2.jar
compilar:limpiar
	mkdir bin
	find src -name *.java | xargs javac -cp "lib/*:bin" -d bin 
	javadoc	-d juegoVidaDocs ./src/aplicacion/Principal.java ./src/dominio/Tablero.java
	jar cvfm $(jar_file) Manifest.txt -C bin .
ejecutar:
	java -cp bin aplicacion.Principal
ejecutar_jar:
	java -jar ap-Practica2.jar
