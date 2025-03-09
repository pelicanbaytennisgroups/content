---
title: "MatchPoint Signup Page"
description: "My page's description as I'd like it previewed on the home page"
publishDate: "2025-03-07"
---

See the `title` block above? That's important to automatically generate the title of the post. The same is true for `description` and `publishDate`.

This folder (`page`) is where you can create a new post. Each `.md` document corresponds to a new post automatically.

Here's how you can embed a PDF:

[Sign up here for pairings](https:///yourlinkhere)

First, place the PDF into the `page/pdfs` directory.
Then, you can use the format below, replacing the file name to match your pairings.
I'ts very important to ensure the path starts with `../pdfs/` :

embed-pdf url="/page/pdfs/march-2025-matchpoint-pairings.pdf" renderPageNum="1"


You can do the same with images by placing them into the `/page/content-images` directory.

![avatar](/page/content-imaguges/tennis-guy.png)
