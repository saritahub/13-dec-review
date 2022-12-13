# MegaSoft Weird 
- Word processor 
- Spellchecker 
- Build a simple spellchecker 
- Ideally all words, but today it will be however many words needed to pass test (no minimum)

INPUT
- Should be a string
- System should raise an error if not a string 
- Punctuation: Word processor will strip away punctuation, assume there is no punctuation 
- Single sentence at a time, no new line characters

OUTPUT 
- Returns the same string
- All misspelt words returned with a tilda before and after the word 
- Same case (preserved between input and output)

"These words are ~spnelt~ ~correclty~

# Example input and outputs
| INPUT          | OUTPUT           |
| ""             | ""               |
| "Hello"        | "Hello"          |
| "ello"         | "~ello~"         |
| "Hello there"  | "Hello there"    |
| "Hello thre"   | "Hello ~thre~"      |
| "What tme is it" | "What ~tme~ is it"|

EDGE CASES
1. Not a string (Array)
   => Returns error message "Please enter a string"

2.  Not a string (Integer)
=> Returns error message "Please enter a string"
