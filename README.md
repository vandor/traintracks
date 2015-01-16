# traintracks
[Punch card](https://github.com/vandor/traintracks/graphs/punch-card) for tracking times when a train passes by the office.

I recently moved to a new office building sandwiched between a busy intersection and some train tracks. I want to find a pattern for when the train comes by, and no schedule is available (it's not a passenger train). It occurred to me to leverage github's punchcard graph to visualize this data. Whenever I hear the train come by, I'll just run `punch.sh`, which will log the current time to `punchcard.txt` and commit it with the same timestamp.

## Examples
By default, `punch.sh` uses the current timestamp returned from `date`.
```bash
$ ./punch.sh
[master 84682a7] Fri Jan 16 10:14:55 CST 2015
 1 file changed, 1 insertion(+)
```
But you can specify anything that `date` can parse.
```bash
$ ./punch.sh "1/15 13:42"
[master a05d944] Thu Jan 15 13:42:00 CST 2015
 1 file changed, 1 insertion(+)

$ ./punch.sh 3:14pm
[master 5bacaaa] Fri Jan 16 15:14:00 CST 2015
 1 file changed, 1 insertion(+)

$ ./punch.sh 9
[master 3e9cb8c] Fri Jan 16 09:00:00 CST 2015
 1 file changed, 1 insertion(+) 
```

## Reusability
There's nothing train-specific about this code. Fork the initial commit and you'll have a fresh punch card to track whatever you like!
