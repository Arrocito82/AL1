clc;
format(15);
ieee(2);
funcprot(0);
TRUE = 1;
FALSE = 0;
OK=FALSE;

while OK == FALSE 
    n = input('Introduzca el número de valores binomiales a generar--->');
    if n <= 0  
        printf('Debe ingresar un valor entero positivo\n');
    else 
        OK = TRUE;
    end
end
OK = FALSE; 
while OK == FALSE 
    NEnsayos = input('Introduzca el número de veces que se repite cada bernoulli--->');
    if NEnsayos <= 0  
        printf('Debe ingresar un valor entero positivo\n');
    else 
        OK = TRUE;
    end
end
OK=FALSE;
while OK == FALSE 
    P = input('Introduzca la probabilidad de exito--->');
    if (P < 0  | P > 1)
        printf('Debe ingresar un valor entre cero y uno\n');
    else 
        OK = TRUE;
    end
end
//j representa la repetion del experimento en el que estamos
acumulador=zeros(1,n);//acumula la x de cada iteracion, no excede Numero de ensayos
frecuencia=zeros(1,NEnsayos);
frecuencia_acumulada=zeros(1,NEnsayos);
for j=1:n
   for i=1:NEnsayos
        if grand(1,1,"def")<= P then
            acumulador(j)=acumulador(j)+1;         
        end
        i=i+1;
    end
   printf('\nEl Número de éxitos en la iteración %d  fue %d ',j,acumulador(j));
    r=acumulador(j);
    frecuencia(r)=frecuencia(r)+1;
    j=j+1;
end


for i=1:NEnsayos
frecuencia(i) = frecuencia(i) / n;
    if i==1 then
        frecuencia_acumulada(1)=frecuencia(1);
        
        elseif i>1 & i<=NEnsayos then
        frecuencia_acumulada(i)=frecuencia_acumulada(i-1)+frecuencia(i);
    end 
end
clf;
plot(frecuencia)
plot(frecuencia_acumulada)//imprime el contador en forma de grafico
