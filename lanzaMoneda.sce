// Copyright (C) 2020 - UES - Andrea Melissa Monterrosa Morales
//
// Materia: MEP115           Carnet: MM18057
//
// Date of creation: Aug 26, 2020
//
rand ( " seed " ,0);//reinicia el seed del generador de numeros aleatorios
nb = 10000;
success = 0;
for i = 1: nb
faces = floor ( 2 * rand (1 ,10) );
//crea un vector de longitud 10 con valores aleatorios entre [0,2[, es decir los unicos valores posibles son 1 para cara y 0 para sello

nbheads = sum ( faces );
//cuenta la cantidad de caras en el vector de longitud 10

if ( nbheads == 5 ) then
    //si la mitad de los 10 lanzamientos dieron cara entonces se toma como exito
success = success + 1;//aumenta el contador de exitos en 1
end
end
pc = success / nb//casos probables entre casos posibles
