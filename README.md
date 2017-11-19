# elecciones2017
Funciones y scripts para analizar datos de las elecciones chilenas en 2017

Para poder calcular el número de escaños por pacto, tiene que hacer lo siguiente:

1. Correr get_diputados.R o get_senadores.R para bajar los datos.
2. Calcular el número de votos por pacto y agregarlo como variable en la tabla
3. Correr la función dhont_por_pacto.R

Hay que tener cuidado con que la función dhont_por_pacto() asume nombres de columnas distintos a los de los otros scripts. No tuve tiempo para corregir eso, pero lo van a tener que hacer manual.
