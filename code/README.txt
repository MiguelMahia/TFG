El workflow es: filtrado.sh (filtra paquetes .pcap y guarda los que nos interesan) ->
creacionImagenes.ipynb (Transformamos de .pcap a .bin, despues pasamos de .bin a imagen, ya sea
con la transformacion de Morton o sin transformación) ->
datasetCreation.ipynb (especificas cuantas imagenes quieres que haya por clase, y genera una carpeta
donde junta todas sin subcarpetas, estando preparada para ser pasada al modelo) ->
modelX.ipynb (modelo de predicción).

En todos los archivos el unico cambio necesario es la ruta de origen y final de los datos.
En el repo hay un pequeño dataset con 14.5k imagenes Morton para testeo de modelo.