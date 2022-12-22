### 22 December review

# Sum scanner
- Extracts sum from strings
- Evalulated sum is outputted along with the result
- Evalulated sum contains either one ("1") or two terms ("1 + 2") (CORE functionality)
- Output is a float 
  
### INPUT
  - String examples "1" or "1.5" or "1.0" 
  - Basic operations, + * / - 
  - Negative input values, and output negative (if needed)
  - "1" or "1.5 + -2.3"

### EGDE CASES
- Empty string results in 0
- Non-string input raise error (integer or an array)
- String input without a number (for example string of words) raises error
- "1   + 1" (multiple spaces between characters) 
- "1+1" (no spaces) raises error: MathError "Input must be a valid mathematical string separated by spaces"


## Input and Output table 

| INPUT  | OUTPUT   | Notes          |
|--------|---------|------------------|
|  "1"   | ["1",1.0]|                  |
|  "20.5"   | ["20.5",20.5]|                  |
| "1 + 1"| ["1 + 1",2.0]    |          |
| "2 - 1"| ["2 - 1",1.0]    |          |
| "10 / 2"| ["10 - 2",5.0]    |          |
| "5 * 2"| ["5 * 2",10.0]    |          |
| "5.5 * 2"| ["5.5 * 2",11.0]    |          |
| "3.5 + 2.5"| ["3.5 * 2.5",6.0]    |          |
| "-2 * 10"| ["-2 * 10",-20.0]    |          |
| "-20 / 2"| ["-20 * 2",-10.0]    |          |
|  ""      |  ["", 0.0]     |                   |
| ["1"]     | Raises error: "Input must be a valid mathematical string separated by spaces"         |                   |
|  123      | Raises error: "Input must be a valid mathematical string separated by spaces"        |                   |
| "words"       | Raises error: "Input must be a valid mathematical string separated by spaces"         |                   |
| "1+1"       | Raises error: "Input must be a valid mathematical string separated by spaces"           | No spaces between number and operator                   |
|        |         |                   |
|        |         |                   |