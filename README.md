# semantic-build
Build ID which can tell you something

## What is semantic build?
It's information soft build/compile time. 
Helpful with problems with complex cache strategies and often builds.

## Example
Example of semantic build:  
> 17.07.29.96ea305

> 17.07.29.20.36.96ea305

Explanation of example:  
> 17.07.29 - date of build (YY.MM.DD)

>20:36 - time of build (HH.MM)

> 96ea305 - commit short hash

## Implementation
Bash: 
```
$(date +'%y.%m.%d.')$(git log --format="%H" -n 1 | cut -c 1-7)
```
```
$(date +'%y.%m.%d.%H.%M.')$(git log --format="%H" -n 1 | cut -c 1-7
```

## Format
> YY.MM.DD<.HH.MM>.HASH

* Hour and minutes are optional.
* Numbers should have leading zeros.
* Hash should have at least 7 characters.
> 17.07.29.96ea305
