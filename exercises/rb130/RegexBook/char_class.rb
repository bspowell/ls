#1.  Write a regex that matches any sequence of three characters 
# delimited by whitespace characters (the regex should match 
# both the delimiting whitespace and the sequence of 3 characters). 
# test it with these strings:

# reds and blues
# the lazy cat sleeps

/\s...\s/

#2.  Test the pattern /\s...\s/ from the previous exercise against 
# this text (be sure to delete the previous text first):

# Doc in a big red box.
# Hup! 2 3 4

# Doc doesn't match since Doc doesn't follow any whitespace.
# big matches since it is three characters with both leading and trailing whitespace.
# red doesn't match since the regex engine consumes the space character that precedes red when it matches big (note the trailing space). Once consumed as part of a match, the character is no longer available for subsequent matches.
# box doesn't match since a period follows it.
# Hup doesn't match since an exclamation point follows it.
# 2 3 matches since 2 3 is three characters long and it has both leading and trailing whitespace.

# 3. Write a regex that matches any four digit hexadecimal number 
# that is both preceded and followed by whitespace. 
# Note that 0x1234 is not a hexadecimal number in this exercise: 
# there is no space before the number 1234.

/\s\h\h\h\h\s/

# 4. Write a regex that matches any sequence of three letters. Test it with these strings:

/[a-zA-Z][a-zA-Z][a-zA-Z]/