# Contributing guidelines to Awesome Community

Contributing to this list is as simple as possible. You can open an [issue](https://github.com/peterkokot/awesome-community/issues)
or open a pull request. Typos and grammatical corrections are perfectly fine as well!


## What makes community awesome?

Communities listed here include programming, development and technical discussion channels, groups, support communities and similar resources.

Here are some guidelines for community managers and administrators to make community awesome:

* Clear rules for members of a community or a code of conduct.
* Community should be large, vibrant and active


## Contributing procedure

* Fork a project over GitHub

* Set up your repository and set a remote branch for future updates

  ```bash
  $ git add remote upstream git://github.com/peterkokot/awesome-community.git
  $ git config branch.master.remote upstream
  ```

  That way you can update your repository (when the `upstream` gets updated) and automatically pull `upstream` commits:

  ```bash
  $ git pull
  ```

* Create a new Git branch for instance `patch-1`:

  ```bash
  $ git checkout -b patch-1
  ```

  This ensures that your repository will not need rebasing when the `upstream` gets updated.

* Make changes to the `patch-1` branch

* Commit and push to your GitHub repository

  ```bash
  $ git add .
  $ git commit -m "my new changes"
  $ git push origin
  ```

* Send a pull request
