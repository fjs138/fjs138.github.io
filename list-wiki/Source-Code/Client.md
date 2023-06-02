---
layout: post
title: Client
---

# JavaScript client

[=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client)

For JavaScript/TypeScript libraries used, see `package.json` [=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client/package.json)

Folder structure:

* `lib` [=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client/lib)\
  Some libraries that were either not available via npm, or had to be patched
* `recipe` [=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client/recipe)\
  The recipe templates available in LiST. Recipe templates are defined as TypeScript \
  These recipes are compiled into JavaScript and executed with node.js to get the json the backend serves to the client. To be integrated in the database when a suitable editor in the customizing part has been included, see #31. \
  Recipe templates are JSON serializations of the TypeScript classes the frontend uses, so defining them here allows at least for type checking, writing this the json directly would be ugly.
* `src` [=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client/src)\
  The [TypeScript Sources](#typescript-source-code-in-src) of the client implementation
* `testSrc`\
  Tests for the client (no working tests for the moment :see_no_evil: )
* `viewTemplates`\ 
  HTML templates loaded lazily.
* `webpack.config.js` [=> Repository](https://git.psu.edu/rkh24/LiST/tree/master/client/webpack.config.js)\
  Configuration for compilation TypeScript -> few big JavaScript files

## Typescript source code in `/src`

* `app`
* `css`
* `ext`
* `styles.js`\
  List imports of css files that webpack shall include.
* `tsconfig.json`\
  Typescript config

### `client/src/app`

* `helper`\
  Helper classes.
* `model` and `model/masterdata`\
  Definition of typescript models. This is the client side definition of the data exchanged with the sever. The server sends/expects data consistent with its Data Transfer Objects. The TypeScript models have to be matched to the DTOs manually. For the rest of the client, the TypeScript compiler will then check that all data sent and expected matches this transfer format.

  The package `model/masterdata` contains Customizing data that normally does not change during a session and therefore is only fetched once (Collaborators, instruments, etc.). Interfaces, have to correspond to DTOs on backend side.

  `Constants.js`\
  Constant used throughout the application, some of them are also defined in the backend.
* `repository`\
  Service classes for reading/writing data from the backend. Basically one repository per Backend Controller used.
* `services/project`
* `services/remote`\
  Service that manages the communication with the backend (interface and implementation)
* `viewModel`

### `client/src/css`

Stylesheets for the application

### `Client/src/ext`

Typescript functions loaded during startup, providing custom bindings for the MVVM Framework knockout.js\
Richtext editor summernote, using a custom modification (to be removed, standard should be used)





