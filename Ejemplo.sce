// Copyright (C) 2020 - UES - Andrea Melissa Monterrosa Morales
//
// Materia: MEP115           Carnet: MM18057
//
// Date of creation: Aug 26, 2020
//
function ri = generateInRange0M1 ( m , numeroFilas , numeroColumnas )
ri = floor ( rand ( numeroFilas , numeroColumnas ) * m )
//crea una matriz de 100x100 con numeros aleatorios entre 0 y 5, los resultados posibles son 1,2,3 y 4 porque los redondea usando el metodo floor
endfunction



r = generateInRange0M1 ( 5 , 100 , 100 );



counter = zeros (1 ,5);//crea un vector de longitud 5 vacia o llena de ceros por decirlo asi, la inicializa


//ciclo for para recorrer la matriz de 100x100
 for i = 1:100
   for j = 1:100
   k = r(i , j );//variable temporal que guarda el valor de la posicion i,j dentro de la matriz
   
   counter ( k +1) = counter ( k +1) + 1;
   //suma uno dentro del vector contador si en la posicion k+1, recordando que k solo puede tomar valores de 0 a 4 por eso se le suma 1
  end
  end

counter = counter / 10000;//casos probables entre casos posibles

counter//imprime los resultados obtenidos en el conteo de los valores aleatorios en la matriz de 100x100
bar(counter)//imprime el contador en forma de grafico
