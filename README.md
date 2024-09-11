"Specification"

"Your task at hand is to decode the cipher left for you by the detective. How you do so is up to you, but you should ensure that—at the end of your process—you have a view structured as follows:

The view should be named message
The view should have a single column, phrase
When the following SQL query is executed on private.db, your view should return a single column in which each row is one phrase in the message.
SELECT "phrase" FROM "message";
In private.sql, you should write all SQL statements required to replicate your creation of the view. That is:

If creating the view requires creating a separate table and inserting data into it, you should ensure that private.sql contains the statements to create that table and insert that data. (Don’t be afraid to add tables and add data as you wish!)
private.sql, when run a fresh instance of private.db, should be able to fully reconstruct your view.


Advice
Turns out that SQLite handily comes with a function that implements the very functionality of the book cipher: substr. The function substr takes three inputs (“arguments”):

A string (i.e., text) from which to take a substring (i.e., a subset of the string’s characters)
The starting character of the substring, identified by its number (the first character is 1)
The length of the substring
For instance, suppose you have a table called sentences which includes the following:

id
sentence
1	Quite so!
2	You have not observed.
3	And yet you have seen.
Should you run the following SQL query…

SELECT substr("sentence", 1, 2)
FROM "sentences";
you would receive the following results:

substr(“sentence”, 1, 2)
Qu
Yo
An
Keep in mind that the other arguments to substr can be entire columns themselves, too!"
