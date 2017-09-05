# semantic-build
Build ID which can tell you something

## What is semantic build?
It's data which tells you when software was built and with which commit.

## Example
Example of semantic build:  
> 17.07.29.96ea305

Explanation of example:  
> 17.07.29 - date of build (YY.MM.DD)  
> 96ea305 - commit short hash

## Implementation
Bash: 
> $(date +'%y.%m.%d.')$(git log --format="%H" -n 1 | cut -c 1-7)

## Format
> YY.MM.DD<.HH.MM>.HASH

* Hour and minutes are optional.
* Numbers should have leading zeros.
* Hash should have at least 7 characters.
