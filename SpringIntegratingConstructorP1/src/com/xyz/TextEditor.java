package com.xyz;

public class TextEditor
{
   private Spellchecker spellChecker;
   
   
   public TextEditor(Spellchecker spellChecker)
   {
	   System.out.println("Inside the TextEditor");
	   this.spellChecker=spellChecker;
   }
   public void spellCheck()
   {
	   spellChecker.checkSpelling();
   }
}
