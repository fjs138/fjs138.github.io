---
layout: post
title: Source-Code
---

[Branches and Versions](source-code/git-branches)

1.  [Server](source-code-structure/server)

    The backend is a dot net core application, using C# (net5.0) and running on the server. 
   

2.  [Client](source-code-structure/client)

    The frontend running in the browser is written in TypeScript and compiled to JavaScript.
    It uses the MVVM library knockout.js and JQuery ajax calls.

    All TypeScript files are compiled to JavaScript (ES 5) and bundled using webpack, 
    together with CSS.
    The resulting files are put to server/wwwroot/build:
    *  customizing.bundle.js       
    *  project.bundle.js
    *  public.bundle.js
    *  vendor.bundle.js

        Contains libraries required by all three pages.
    *  styles.css
    *  some fonts in *.ttf and *.woff2 files






