# MNpIC
Repositorio general de la asignatura Métodos Numéricos para Ingeniería Civil

## Temario


### Interpolación

Función que pasa por los puntos

Dados n puntos diferentes existe un unico polinomio de grado n-1 que pasa por todos ellos

#### Lagrange


### Aproximación

Cuando los datos presentan errores grandes las interpolaciones pueden ser erroneas. Por ejemplo con datos obtenidos experimentalmente.

#### Regresión lineal

y = a0 + ax1 + e

e es un error, se busca tener un valor optimo

* Minimizar la suma de errores residuales.
* Minimizar la syma de los valores absolutos del error.
* minimax - Minimizar la máxima distancia. 
* Minimizar la suma de cuadrados de los residuos entre _y_ medida y _y_ calculada.
![equation](https://latex.codecogs.com/svg.image?S_{r}=&space;\sum&space;\varepsilon_{i}^{2}&space;=&space;\sum&space;{(y_{i}-a_{0}-a_{1}x_{i})}^{2})

