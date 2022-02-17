Excersise #1:
   public class FullExercise1
    {
        // The following method should return true if each element in the squares sequence
        // is equal to the square of the corresponding element in the numbers sequence.
        // Try to write the entire method using only LINQ method calls, and without writing
        // any loops.
        public static bool TestForSquares(IEnumerable<int> numbers, IEnumerable<int> squares)
        {
            return numbers.Select(number => number*number).SequenceEqual(squares);
        
        }
    }
Excersise #2:
public class FullExercise2
    {
        // Given a sequence of words, get rid of any that don't have the character 'e' in them,
        // then sort the remaining words alphabetically, then return the following phrase using
        // only the final word in the resulting sequence:
        //    -> "The last word is <word>"
        // If there are no words with the character 'e' in them, then return null.
        //
        // TRY to do it all using only LINQ statements. No loops or if statements.
        public static string GetTheLastWord(IEnumerable<string> words)
        {
            return words.Where(word => word.Contains('e')).OrderBy(word => word).Select(word => $"The last word is {word}").LastOrDefault();
                
        }
    }
