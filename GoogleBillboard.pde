public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
System.out.println(tenDigits());
}
public double tenDigits()
{

    for(int i = 2; i < e.length(); i++){
      String digits = e.substring(i, i+10);
      double dNum = Double.parseDouble(digits);
      if(isPrime(dNum) == true){
      System.out.println(e.substring(i,i+10) + " " + isPrime(dNum));
      break;
    }
}
return 0;
}
public boolean isPrime(double dNum)
{
  if(dNum<2){//Checks the number inside the parameter to show false if the number is less than 2 since it wont be prime if less than 2
    return false;
  }
  for(int i = 2; i <= Math.sqrt(dNum); i++){//Starts for loop on 2 because the smallest prime # is 2
    if(dNum%i == 0){//Checks if the number is even which returns false
      return false;
    }
  }
  return true;
}
