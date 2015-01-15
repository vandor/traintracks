# traintracks
Punch card for tracking times the train comes by the office.

I recently moved to a new office building near some train tracks. I want to find a pattern for when the train comes by, and no schedule is available (it's not a passenger train). It occurred to me to leverage github's punchcard graph to visualize this data. Whenever I hear the train come by, I'll run punch.sh, which will log the current time in punchcard.txt and commit it with the same timestamp.
