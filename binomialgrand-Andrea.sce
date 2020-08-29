clc;
funcprot(0);
format(15);
ieee(2);
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

for j=1:n
   for i=1:NEnsayos
        if grand(1,1,"def")<= P then
            acumulador(j)=acumulador(j)+1;         
        end
        i=i+1;
    end
   printf('\nEl Número de éxitos en la iteración %d  fue %d ',j,acumulador(j));
    r=acumulador(j);
    j=j+1;
end
frecuencia_acumulada=zeros(1,NEnsayos);
frecuencia=histplot(NEnsayos,acumulador);
for i=1:NEnsayos
    if i==1 then
        frecuencia_acumulada(i)=frecuencia(i);
        end
    if i<=NEnsayos & i>1 then
        frecuencia_acumulada(i)=frecuencia(i)+frecuencia_acumulada(i-1);
    end
end


clf;

bar(frecuencia);plot(frecuencia_acumulada);
//histplot(frecuencia_acumulada)//imprime el contador en forma de grafico

