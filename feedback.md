# Project 2 Evaluation
[inline code comments]()
## Technical Requirements
**2: Performing**
>The app contains 2 models, with at least 1 association. At least 1 model is full CRUD.

Good job here. I see 2+ models and at least one association. CRUD functionality seems to be working fully as well. I would encourage you to revisit your vote model. The way I see it, you can implement the same exact functionality by making the vote count as an attribute on game. That is, unless you plan on building out the vote model later on.

## Creativity and Interface
**1: Progressing**
>The app is styled and has an interface of value to the end user: it is not just a nav bar and an index page

While I know CSS isn't your favorite thing in the world, I would encourage you implement just a little bit of styling just so that anybody looking at your app -- potential employer or otherwise -- doesn't see the default browser styling. This could be as simple as just changing the font, maybe converting some links into stylized buttons. Even if CSS isn't in the description for whatever job you get after WDI, the fact is that styling is the first thing anybody sees when using a web app.

Styling aside, I dig the idea and like that you were able to implement something that you care about!

## Code Quality
**2: Performing**
>Code is well-formatted, well-named, and contains few style / quality issues

Solid job here. Had no problem reading through your code. While there might be some opportunities to make your code a bit more DRY (e.g., because you use `before_filter`, you can go ahead and remove some repeated code from your controller), it's clear what each bit of code in your application does.

## Deployment and Functionality
**2: Performing**
>Application contains no major errors, is deployed correctly, and contains a custom Heroku app name appropriate for the app.

Your deployed application appears to be functioning just like the local one. Nice! If you'd like a challenge, I encourage you to look into how to deploy a site on Digital Ocean. If you need a place to start, [here's a previous mini-lesson](https://github.com/ga-dc/wdi6-formerly-curriculum/tree/3071663bc9aaac00fe5eee4b11c171af60f826b5/12-project-4/deployment_digital_ocean_postgres_node).

## Planning / Process / Submission
**2: Performing**
>Submission contains clear evidence of planning, adequate documentation, include all from previous category, as well as additional information such as unsolved issues.

What a readme! Informative and entertaining. I do not, however, see a planning directory. Would be great to see an ERD and/or wireframe so I can get a better sense of the models in play and how they relate to one another.
