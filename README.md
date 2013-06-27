# My dotfiles

My dotfiles (with a little thievery from some other dotfiles :P).

Choice scriplets etc lifted from...

* https://github.com/gf3/dotfiles
* https://github.com/mathiasbynens/dotfiles

## Bootstrapping

The bootstrapper will back up all your existing files before it installs anything new, it'll also warn you if a dependency isn't met.

```bash
$ bash < <( curl https://raw.github.com/breenie/dotfiles/master/bootstrap.sh )
```

Alternatively, if you like things nice and tidy as I do checkout to where ever you keep your repositories and
symlink ```.dotfiles``` into your home directory.

On my machine...

```bash
$ ln -s /Volumes/projects/github/src/dotfiles ~/.dotfiles
```


## To reload

```
$ ~/.dotfiles/bootstrap.sh
```
