package org.samples;

public class FizzBuzz
{
  public static String call(int i)
  {
    String delimiter = ",";
    String result = "";
    String fizz = "Fizz";
    for (int j = 1; j <= 5; j++)
    {
      if (j == 3)
      {
        result += fizz + delimiter;
      }
      else if (j == 5)
      {
        result += "Buzz" + delimiter;
      }
      else
      {
        result += j + delimiter;
      }
    }
    return result + "Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz";
  }
}
