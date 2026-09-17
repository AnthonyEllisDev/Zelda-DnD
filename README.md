# Zelda DnD

A Zelda-themed tabletop roleplaying game built on the D&D 5th Edition (2014) engine — a
complete Player's Handbook and DM Guide, written in [Homebrewery](https://homebrewery.naturalcrit.com).

**342 pages.** Ten races, ten original classes, a magic system built on Magic Points instead of
spell slots, a Stamina economy for Zelda-style physical heroics, called shots and weak points,
armour sets and Great Fairy upgrades, a bestiary of 65 stat blocks, four full boss encounters,
a relic ladder topped by the Triforce, and a DM guide on building Zelda dungeons and bosses.

---

## What's in here

| | |
|:--|:--|
| `Zelda DnD.md` | The complete Homebrewery source. Paste into a new brew and it renders. |
| `images/` | Every image the book uses, 112 files. |
| `images/manifest.csv` | What each image is, its size, and which pages it appears on. |

## Using the source

Open [Homebrewery](https://homebrewery.naturalcrit.com), create a new brew, and paste the whole
of `Zelda DnD.md` into the editor. The theme is **V3 / 5e Player's Handbook**. Every image link in
the file points at `raw.githubusercontent.com` in this repository, so the artwork loads without
any further setup.

## Why the images live here

The book previously loaded its artwork from Imgur and a handful of other third-party hosts. That
works until it doesn't — an album gets cleaned up, a host re-encodes a file or changes a URL, and
pages quietly lose their art with no warning. Everything is now checked in alongside the text, so
the book is self-contained and a given commit renders the same way in five years as it does today.

Filenames are deliberately not descriptive. Each one is the last segment of the URL the image was
originally served from, which makes the mapping between the source and the files mechanical rather
than a matter of judgement — there is no way to put the wrong picture on the wrong page. The
human-readable index is `images/manifest.csv`.

## Layout

The book is laid out for print at 8.5 × 11 in, two columns. It is checked by rendering every page
through Homebrewery's own build at print size and measuring the result, so that:

- no text runs past the page edge into the column Homebrewery clips
- no text sits underneath artwork
- no framed block is split across a column break
- every table of contents entry points at the page its heading is actually on

Homebrewery hides overflow silently, so content that runs off a page simply vanishes from the
exported PDF with nothing to show it was there. That failure mode is the reason the layout is
verified by measurement rather than by eye.

## Credits

Artwork is from the Zelda series and from the community wikis that catalogue it, used here for a
non-commercial fan project. *The Legend of Zelda* and all related characters and imagery are the
property of Nintendo. This project is not affiliated with or endorsed by Nintendo.

Rules text is original work built on the D&D 5th Edition (2014) rules, which you will need a copy
of to play.
