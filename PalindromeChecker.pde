import processing.core.PApplet;

public class Sketch extends PApplet {
  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      if(palindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String word)
  {
    String backwards = reverse(word);
    String wordNoSpaces = noSpaces(word);
    String wordNoCapitals = noCapitals(word);
    String wordOnlyLetters = onlyLetters(word);
    String newVar = noSpaces(noCapitals(onlyLetters(word)));
      
      if (backwards.equals(word)) 
      {
        return true;
      } else if (backwards.equals(wordNoSpaces))
      {
        return true;
      } else if (backwards.equals(wordNoCapitals))
      {
        return true;
      } else if (backwards.equals(wordOnlyLetters))
      {
        return true;
      } else if (backwards.equals(newVar))
      {
        return true;
      } else {
        return false;
      }
  }
  
  public String reverse(String str)
  {
    String sNew = new String();
      for (int i = str.length(); i > 0; i--) 
      {
        sNew = sNew + str.substring(i - 1, i);
      }
    sNew = noSpaces(sNew);
    sNew = noCapitals(sNew);
    sNew = onlyLetters(sNew);
    return sNew;
  }
  
  public String noSpaces(String sWord)
  {
    String var = "";
    for (int i = 0; i < sWord.length(); i++) 
    {
      if (!sWord.substring(0 + i, 1 + i) .equals(" ")) 
      {
        var = var + sWord.substring(0 + i, 1 + i);
      } 
    }
  return var;
  }

  public String noCapitals(String sWord){
    return sWord.toLowerCase();
  }

  public String onlyLetters(String sString)
  {
  String word = "";
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      word = word + sString.charAt(i);
    }
  }
  return word;
  }
}
  
