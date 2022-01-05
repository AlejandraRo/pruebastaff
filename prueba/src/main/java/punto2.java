
import java.util.Scanner;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Jaime Rosero
 */


public class punto2 {
   
Scanner leer= new Scanner(System.in);
public int first;
public int second;

public punto2()
{
System.out.println("Escriba el primer número");
this.first=leer.nextInt();
System.out.println("Escriba el segundo número");
this.second=leer.nextInt();
}

public int division()
{
return this.first/this.second;
}
}

