# What is Doomsday Algorithm ?
This was inspited by [this video](https://www.youtube.com/watch?v=z2x3SSBVGJU) which explains the [Doomsday Rule](https://en.wikipedia.org/wiki/Doomsday_rule), which is an algorithm of determination of the day of the week(**DotW**) for a given day.

This method requires trivial memorization (of 'Memorable dates') & simple arithmetic to detemine the DotW.

# What does this repo do ?
This repo does not teach you how to how to determine the DotW, the video & wiki page do an excellect job for that.

The repo has a standalone page which can be used to practice your mastery. The [HTML5 version](index.html) allow
Alternately, you can use the UNIX Shell script to practice the same.

Note that for now, both of them are configured to test you for dates between 1-Jan-2025 & 1-Jan-2027. These can be extended by updating the respective code.


## Co-Development with Microsoft 465 Copilot
The initial version of the code was generated using Copilot. The quick prototyping allowed revision & refinement of requirements.

The final code was created after many back-and-forth as the generated code had to be troubleshooted.


### Prompt used 
<details closed>
<summary>Copilot prompt to generate UNIX Script  </summary>

```
Give me a short UNIX shell script which will  print a random date between 1-Jan-2025 to 1-Jan-2027 in a loop, and ask user to guess which day of the week that date corresponds to.
The user would respond with 0-6 (0 for Sun, 1 for Mon ..6 for Sat).
There after, the script will print the user response as string ("Sun", "Mon"...) and also the actual day of the week of the date it had generated earlier.

The script should keep score of how many user guesses were correct & the total question asked.
The loop should exit if user inputs date of week as 99
```

</details>

<details closed>
<summary>Copilot prompt to generate HTML5 version</summary>
```
now, I need a standalone HTML version for this.
The page should generate random date, but instead of typing user input, I should have 7 boxes for each day (include the number 0-6 in the captions along with the name of the day).
The score should be easily visible too.
```
</details>
