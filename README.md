## Advent of Code 2021

I solved the puzzles both in [PostScript](#postscript) and [Awk](#awk).
Couple days are still missing a PostScript solution.

Each day's solution solves both parts of the puzzle for that day. The answers
are printed on separate lines. Input can be provided to standard in.

For the problem descriptions, and to get your own input, head over to
[Advent of Code](https://adventofcode.com/2021).

### PostScript

I picked PostScript as a language to learn for this year's event.

To run with GhostScript:

```sh
gs -q- -dBATCH -dNOPAUSE solution.ps <input.txt
```

Few days also produce visualisations, either single page or multiple frames.
For example, an animated gif could then be generated using ImageMagick's
`convert` command:

```sh
mkdir frames
gs -sDEVICE=png16 -o frames/%03d.png solution.ps <input.txt
convert frames/*.png animation.gif
```

### Awk

I had the goal of 5 lines 80 columns for each day's solution. There are two
days where this goal was not reached: [day 19](day_19/solution.awk) at 10
lines, and [day 23](day_23/solution.awk) at 7 lines.

The solutions use exactly 100 lines of code in total, so *on average* the goal
was achieved :)

To run:

```sh
awk -f solution.awk <input.txt
```
