
import java.util.Scanner;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Jaime Rosero
 */

public class punto4 {

public int[] numeros;

public punto4(){
    numeros=new int[100];
    for(int i=0;i<100;i++)
    {
        numeros[i]=i+1;
        
    }   
}
public void cadenas()
{
for(int i=0;i<numeros.length;i++)
{

if (numeros[i]%3==0)
{
    if (numeros[i]%5==0){
System.out.println("FizzBuzz");
}else 
 System.out.println("Fizz");
}
   
else if (numeros[i]%5==0)
     System.out.println("Buzz");

else
System.out.println(numeros[i]);
}
}


      


    
}
