<a href="https://jank-lang.org">
  <img src="https://media.githubusercontent.com/media/jank-lang/jank/main/.github/img/banner.png" alt="jank banner" />
</a>

<div align="center">
  <a href="https://clojurians.slack.com/archives/C03SRH97FDK" target="_blank"><img src="https://img.shields.io/badge/slack-%23jank-e01563.svg?style=flat&logo=slack&logoColor=fd893f&colorA=363636&colorB=363636" /></a>
  <a href="https://github.com/sponsors/jeaye" target="_blank"><img src="https://img.shields.io/github/sponsors/jeaye?style=flat&logo=github&logoColor=fd893f&colorA=363636&colorB=363636" /></a>
  <a href="https://twitter.com/jeayewilkerson" target="_blank"><img src="https://img.shields.io/twitter/follow/jeayewilkerson?style=flat&logo=x&logoColor=fd893f&colorA=363636&colorB=363636" /></a>
  <br/>
  <a href="https://github.com/jank-lang/homebrew-jank/actions" target="_blank"><img src="https://img.shields.io/github/actions/workflow/status/jank-lang/homebrew-jank/test.yml?branch=master&style=flat&logo=github&logoColor=fd893f&colorA=363636&colorB=363636" alt="CI" /></a>
</div>

# Installing a pre-built binary
> [!NOTE]
> Depending on what packages you have installed already, you're likely to get warnings about `brew link` not completing.
>
> It's up to you how you handle these, you can safely "overwrite" the files that jank installs. Homebrew keeps all the original files in `$(brew --repo)/Cellar` and just links them to the main `bin`, `etc`, `include` and `lib` folders after install.
>
> If you want to recover them later, you can do `brew link --overwrite --force <formula>`, optionally with `--dry-run` to see what will get wiped.

Currently, jank doesn't have a stable versioning scheme so the only
version will be 0.1. As such, if you want a new version you'll have to
reinstall the package.

You can either:

```bash
brew install jank-lang/jank/jank
```

To just install jank, or you can tap this repo using the below:

```bash
brew tap jank-lang/jank
```

And use brew as normal:

```bash
brew install jank
```

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "jank-lang/jank"
brew "jank"
```

# Installing a source-built binary
The options are the same as above, but the formula is called `jank-git` instead
of `jank`.

```bash
brew install jank-lang/jank/jank-git
```

If you get an error about `git-lfs` missing, you may have to run the
below:

```bash
git lfs install
sudo ln -s "$(which git-lfs)" "$(git --exec-path)/git-lfs"
```

# Documentation

For more on `brew`, check `brew help`.

For more on jank, check out [the repo](https://github.com/jank-lang/jank)

# Reporting issues
If you run into any issues with this formula, please report them on the main
jank repo here: https://github.com/jank-lang/jank
