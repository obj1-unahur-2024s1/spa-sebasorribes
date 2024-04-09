# Spa

Se trata de estudiar el efecto que produce en distintas personas visitar un spa. Vamos por partes.


## Tres personas

En particular, vamos a estudiar algunos aspectos de Olivia, Bruno y Ramiro. De cada uno de ellos nos van a interesar distintas cosas.


### Olivia
Lo que nos interesa es conocer su grado de concentración, que es un número que arranca en 6, y varía de acuerdo a estos criterios:
- cuando Olivia _recibe masajes_, su grado de concentración aumenta 3 puntos.
- cuando _discute_, su grado de concentración baja un punto.

Tenemos que poder consultar `olivia.gradoDeConcentracion()`.


### Bruno
De Bruno nos interesan tres cosas: si es feliz o no (digamos que "nace" feliz), si tiene sed (al principio no), y su peso (que arranca en 55 kilos, o sea 55000 gramos). Los eventos que nos interesan son estos:
- _recibir masajes_ es suficiente para que Bruno sea feliz.
- cuando _se da un baño de vapor_, baja de peso 500 gramos y le da sed.
- cuando _toma agua_ se le va la sed.
- cuando _come fideos_ aumenta de peso 250 gramos, y le da sed.
- cuando _corre_ baja de peso 300 gramos.
- cuando _ve el noticiero_, se le va la felicidad.

De Bruno también nos interesa 
- saber si `estaPerfecto()`. Esto se cumple cuando: es feliz, no tiene sed, y está pesando entre 50 y 70 kilos; y
- poder simular un `mediodiaEnCasa()` que consiste en: comer fideos, tomar agua y ver el noticiero.



### Ramiro
Nos interesa: qué tan contracturado está (según un nivel que es un número, 0 es "nada contracturado", cuanto más alto el número más contracturado está), y si tiene la piel grasosa o no. Las acciones de Ramiro relevantes para este modelo son:
- cuando recibe masajes, baja dos puntos su nivel de contractura. <br> OJO nunca puede ser negativo, o sea, si estaba en 1 pasa a 0, si estaba en 0 se queda en 0.
- cuando se da un baño de vapor, se le va la grasa de la piel.
- cuando come un big mac, la piel pasa a estar grasosa.
- cuando baja a la fosa (Ramiro trabaja en un taller mecánico), la piel pasa a estar grasosa, y el nivel de contractura aumenta en un punto.
- cuando juega al paddle, el nivel de contractura aumenta en tres puntos.

Finalmente, un `diaDeTrabajo()` de Ramiro consiste en: bajar a la fosa, después comerse un Big Mac, y finalmente volver a bajar a la fosa.

<br>

## El Spa

Agregar al modelo un objeto que represente al Spa. Lo único que esperamos del spa es que entienda el mensaje `atender(persona)`, donde la persona puede ser, p.ej., cualquiera de las tres definidas más arriba.

Cuando el spa atiende una persona pasan dos cosas: la persona recibe masajes, y se da un baño de vapor.

Probar haciendo que el spa atienda a Ramiro, y verificando que después de la visita, Ramiro baja su nivel de contractura y no tiene la piel grasosa.


## Atender a todo el mundo

Probar haciendo que el spa atienda a Olivia y a Bruno. Hay uno con el que no va a andar ¿por qué? Agregar lo que haga falta para que el spa pueda atender a las tres personas definidas. Las acciones que no están definidas, y que tengan que definirse, no tienen ningún efecto sobre la persona. 
