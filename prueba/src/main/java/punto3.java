
import java.util.Scanner;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Jaime Rosero
 */
public class punto3 {

public int numero;
Scanner leer= new Scanner(System.in);

public punto3()
{   
System.out.println("Ingrese la cantidad de números que desea imprimir");
numero=leer.nextInt();
for (int i=0;i<numero;i++){
number tmp=new number(i+1);
System.out.println("Número "+(i+1));
System.out.println(tmp.divisores());
System.out.println(tmp.perfecto());



}

}
    
}
