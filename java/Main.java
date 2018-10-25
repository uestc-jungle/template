import java.io.*; 
import java.util.*;  
import java.math.*;

public class Main {
    public static final int maxn = 50050;
    public static int[] int_array = new int[maxn]; /** Array */
    public static int[] another_arr = {1, 2, 3, 5};
    public static void main(String[] args) throws Exception {  
        Scanner cin = new Scanner(System.in); 
        int a = cin.nextInt(), b = cin.nextInt();  
        System.out.println(a + b); 
        for (int i = 0; i < 4; i++)
            System.out.println(another_arr[i]);
    }
}
