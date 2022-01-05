/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Jaime Rosero
 */
public class number {

public int num;
public number(int i){
num=i;
}

public String divisores(){

String cadena="Los divisores son\n";
for (int j=1;j<=num;j++)
    if(num%j==0)
       cadena+=Integer.toString(j)+"\n";
return cadena;
}
public String perfecto(){
int suma=0;
for (int z=1;z<num;z++)
     if(num%z==0){
         suma+=z;
}
if (suma==num){
     return "El número es Perfecto";
}
else return "El número No es perfecto";
}


    
}
