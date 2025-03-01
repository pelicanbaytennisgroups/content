---
title: "Template"
---

See the title block above? That's important to automatically generate the title of the post.

This folder (`page`) is where you can create a new post. Each `.md` document corresponds to a new post automatically.

Here's how you can embed a PDF:

First, place the PDF into the `page/pdfs` directory.
Then, you can use the format below, replacing the file name to match your pairings.
I'ts very important to ensure the path starts with `../pdfs/` :

{{< embed-pdf url="../pdfs/<YOUR MONTH HERE>-<YOUR YEAR HERE>-matchpoint-pairings.pdf" renderPageNum="1" >}}
