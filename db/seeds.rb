User.destroy_all
Goal.destroy_all
JournalEntry.destroy_all
Stage.destroy_all
AdvicePost.destroy_all

denial = Stage.create!(name: 'denial')

# user
user = User.create!(username: 'sampleuser', password: 'password', stage: denial )

# goals
user.goals << Goal.create(content: 'Hit the gym', completed: false)
user.goals << Goal.create(content: 'Retail therapy', completed: false)
user.goals << Goal.create(content: 'Bowling night with coworkers', completed: false)
user.goals << Goal.create(content: 'Brunch date with the girls', completed: false)
user.goals << Goal.create(content: 'Hike Alamere Falls', completed: false)
user.goals << Goal.create(content: 'Get a haircut', completed: false)

# journals
user.journal_entries << JournalEntry.create(content: "I have not posted in a while. There is not much to report. I don’t date, I work, or don’t work.  I take each day as it comes, and try to get through it. I have gotten away from the intense pain. I have resigned myself to the fact that we will not be together, though the thought still pisses me off to the point of hitting my keyboard. I have gone through 4 in the last two years. I am bitter, and still angry even if I do not show it. And when, like tonight, I drink to much it creeps up in me. The hurt, the anger, the feeling of what the fuck was she thinking. Its weird, cause if I have few drinks I am fine. But there is a threshold, and when I hit it, all I want to do is hit shit and scream.")
user.journal_entries << JournalEntry.create(content: "I have friends. Most of them are females, and they are trying their best to get me laid. Which is funny when you think about it, cause if it was that serious, wouldn’t they just screw me themselves? I mean really? Come on. It seems they cannot fathom a 100\% male that could care less about sex, making love, or fucking. It's not that I would turn it down. Would you turn down a free meal? But I do not pursue, and the word date sends chills up my spine. I was talking to a friend the other day, and she asked if I was gonna take this girl we know on a date, and 5 seconds after she said the words, she said, \"I could just feel you cringe the moment I said that.\" And she was right I did cringe. It sent a chill up my spine and not in a good way. what that means I have no clue. But I hope I have a problem and its just some stupidity in my mind, cause the alternative…that something that was supposed to happen didn’t drives me nuts.")
user.journal_entries << JournalEntry.create(content: "I don’t remember what the dream was about. But I know it was a bad one, cause I’m wake with a start and I’m covered in a cold sweat. Could’ve been about her, could be about bunny rabbits for all I know, but the feeling I have is not good. I wake with the knowledge that I’ll always be alone. I feel this with certainty. Alone and without love.  It feels like a hard pit in my stomach. I lay there and just know. My mind goes into defensive mode, I think about friends, about my morals, about how I’m a good person, how I can treat others. But it doesn’t help. It all feels like empty shouts, after a verdict has already been read.")
user.journal_entries << JournalEntry.create(content: "This dawned on me just a few minutes ago. See, it’s that time again. The holiday season, of which I hate. I don’t feel thankful. And I get annoyed with people who point out all the reasons I should be. What good is all that, if you don’t have what you really want. And truth be told, I want what I had. I want my past, my future back. Yeah yeah I know. I cannot have that, at least I don’t know a single thing I can do to get it either. If I did, I’m sure I would have tried by now. Maybe that is one reason the hooks are still in me? But I digress.")
user.journal_entries << JournalEntry.create(content: "I thought I had recovered a bit from the meltdowns I felt I had in the last three weeks or so. Not overly ticked off through the day, less annoyed, able to keep my mind off certain things, and then WHAM. I’m up late, and little tired, just surfing the channels and I stop on one of those house buying shows, with a newlywed couple looking for their first house. And all the little jokes, and memories of me and my ex looking for houses together slams into my mind and emotions. I think I get more annoyed with the feeling of needing to damn near be asleep all the time to avoid stuff like this, because it's everything. You expect those episodes to happen if you look at pictures, or talk about her, or listen to soft music, or see a romantic comedy (which I avoid like the ebola virus) but how the hell do you shield yourself from the most innocuous things? I mean fictional Jesus. I know some of the readers here may think I just dwell on it constantly every day. And I promise you I don't. I don't want to at all. It just comes unbidden, without conscious thought or desire.")

# stages
# stages = ["Denial", "Anger", "Bargaining", "Depression", "Acceptance"]
# stages.each { |stage| Stage.create!(name: stage) }


# advice posts
user.advice_posts << AdvicePost.create(content: "MY awesome advice works.", stage: denial)
user.advice_posts << AdvicePost.create(content: "Denial isn't just a river in Egypt.", stage: denial)
user.advice_posts << AdvicePost.create(content: "Watch something funny.", stage: denial)
