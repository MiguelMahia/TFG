El workflow es: filtrado.sh (filtra paquetes .pcap y guarda los que nos interesan) ->
binary_creator.ipynb (Transformamos de .pcap a .bin y los limitamos a 1024B) ->
image_creation.ipynb (creacion de imagenes, especificando la curva a aplicar, si es que procede) ->
dataset_creation (ordena las imagenes en subcarpetas por cada tipo de clase, en preparacion para modelar) ->
model_x.ipynb (modelo de predicción) ->
pickles.ipynb (lectura de resultados, GUARDAR PICKLE TRAS ENTRENAMIENTO!!!!)

En todos los archivos el unico cambio necesario es la ruta de origen y final de los datos.
En el repo hay un pequeño dataset con 14.5k imagenes Morton para testeo de modelo.
En el link de google drive que hay en la root del repo se puede acceder al dataset final, tras todo el preprocesamiento, habiendo aplicado la curva Z