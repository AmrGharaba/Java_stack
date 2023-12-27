import java.util.Random;
import java.util.ArrayList;
import java.util.Arrays;


public class PuzzleJava {
    
    public static ArrayList<Integer> getTenRolls(){
        ArrayList<Integer> array = new ArrayList<Integer>();
        for(int i = 0; i < 10; i++){
            Random randMachine = new Random();
            Integer randomnumber = randMachine.nextInt(21);
            array.add(randomnumber);

        }
        return array;
    }
    public static char getRandomLetter(){
        char[] alphabet  = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        Random randMachine = new Random();
        int randomnumber = randMachine.nextInt(26);
        return alphabet[randomnumber];

    }
    public static String generatePassword(){
        char[] array = new char[8];
        for(int i = 0; i < 8 ; i++){
            char randomletter = getRandomLetter();
            array[i] = randomletter;
        }
        return Arrays.toString(array);
    }
    public static ArrayList<String>  getNewPasswordSet(int length ){
        ArrayList<String> array = new ArrayList<String>();

        for(int i = 0; i < length; i++){
            String word = generatePassword();
            array.add(word);
            

        }
        return array;
        

    }

    
}



