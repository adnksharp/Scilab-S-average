# Calcular calificaciones

El presente código calcula la calificación de varios alumnos tomando en cuenta:
- La cantidad y nombre de factores a calificar (materias, rubros, etc.).
- El peso de cada rubro (ejemplo: 10, 0.1,...).
- El número de personas a calificar y la cantidad de unidades calificadas.
- El nombre de la persona calificada y la calificación de cada factor en cada una de las unidades.

La calificacion de cada unidad se obtiene de la suma de cada calificación por cada factor 

$\overline{x}_U = \sum _{i = 0}^{n}{{c_i * b_i} \over n}$

donde: 
- $\overline{x}_U$ es el promedio de la unidad.
- $c_i$ es la calificación del factor $i$.
- $b_i$ es el peso del factor que es tomado como el valor del factor $i$ entre la suma de todos los factores.
- $n$ es la cantidad de factores/calificaciones por unidad.

Mientras que el promedio final como la suma del promedio de cada unidad entre la cantidad de unidades.

$\overline{x}_F = \sum _{i = 0}^{m}{{\overline{x}_i} \over m}$

donde:
- $\overline{x}_F$ es el promedio final.
- $\overline{x}_i$ es el promedio de la unidad $i$.
- $m$ es la cantidad de unidades.

### Ejemplo de uso
Al ejecutar el proyecto, se piden los datos antes mencionado de la siguiente forma:

```
	Promedio de notas de los alumnos

Cantidad de factores a considerar:--> 4

Ingrese el nombre del factor 1 considerado: --> tareas

Ingrese el nombre del factor 2 considerado: --> trabajos
...

Ingrese el peso del factor tareas: --> 5

Ingrese el peso del factor trabajos: --> 2
...


Ingrese el número de alumnos a considerar: --> 2

Ingrese el número de unidades a considerar: --> 3


Ingrese el nombre del alumno: --> aks

Ingrese la calificación de tareas (U1): --> 9.99

Ingrese la calificación de trabajos (U1): --> 7.45
...

Ingrese la calificación de tareas (U2): --> 10
...

Ingrese la calificación de examenes (U3): --> 7.51


Ingrese el nombre del alumno: --> akm

Ingrese la calificación de tareas (U1): --> 7
...

```

Mientras que los datos ingresados como los resultados de los promedios finales como por unidad se ven de la forma:

```Octave
Alumno: aks
Promedio final: 9.3255

fact		U1	U2	U3
tareas	9.99	10	10
trabajos	7.45	8.78	10
proyectos	10	10	10
examenes	8	9.01	7.51
total		9.1425	9.581	9.253


Alumno: akm
Promedio final: 8.25

fact		U1	U2	U3
tareas	7	8	9
trabajos	8	8	7
proyectos	9	8	6
examenes	10	8	10
total		8.7	8	8.05
```

###### Como recomendación: Usar nombres para los factores mayores a 8 caracteres para evitar que los datos se muestren de forma desalineada como en el caso de ```tareas```.
