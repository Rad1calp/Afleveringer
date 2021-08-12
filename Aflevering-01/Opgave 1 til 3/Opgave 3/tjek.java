public class HelloWorld {

     public static void main(String []args){
        System.out.println("Er 0.2 = 0.1 + 0.1:");
        System.out.println( 0.2 == 0.1 + 0.1 );
        System.out.println("Er 0.3 = 0.1 + 0.1 + 0.1:");
        System.out.println( 0.3 == 0.1 + 0.1 + 0.1 );
        // System.out.println( 0.3 == 0.1 + 0.1 + 0.1 ); resultere i false
        // hvis man kører System.out.println( 0.1 + 0.1 + 0.1 ); retunere det 0.30000000000000004
        // dette er ikke lig 0.3 og derfor retuneres "false"
        // dette sker grundet en afrundingsfejl
     }
}