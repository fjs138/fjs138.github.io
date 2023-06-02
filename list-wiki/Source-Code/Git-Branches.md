---
layout: post
title: Git-Branches
---

See <https://git.psu.edu/2DCC/LiST/-/branches>

The master branch is the main development version (Larger developments can be done in a branch and integrated into master when done).

The master branch is automatically compiled, tested and deployed to the Dev environment, and can be deployed to Staging manually.

Development branches can only be deployed to the Dev Environment, and only manually.

For the Production environment, stable branches are created, usually every other month or whenever needed. Naming scheme: vYYYY-MM Only those branches can be deployed to the production (and are compiled, tested, and automatically deployed to Dev, too). Deploy to Staging and Production is manual.

All manual deployments are done through [GitLab CI/CD Piplines](https://git.psu.edu/2DCC/LiST/-/pipelines).





