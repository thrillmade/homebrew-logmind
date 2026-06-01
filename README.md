# homebrew-logmind (deprecated)

> ⚠️ **This tap is deprecated.** Use [`thrillmade/homebrew-tap`](https://github.com/thrillmade/homebrew-tap) instead — it hosts current versions of logmind + clud-bug + the `skdd` meta-formula together (one-tap-per-org best practice, mirrors `aws/homebrew-tap`, `hashicorp/homebrew-tap`).

## New install path

```bash
# logmind only
brew install thrillmade/tap/logmind

# OR the full SkDD toolchain (logmind + clud-bug + baseline skills) in one command
brew install thrillmade/tap/skdd
```

## Existing installs

Existing `brew install thrillmade/logmind/logmind` continues to work — this tap is left in place for backward compatibility. The formula here is pinned at logmind v0.3.4 (the version when this tap was last active); for current versions, switch to `thrillmade/tap`.

## Migration

```bash
# Untap the old, tap the new
brew untap thrillmade/logmind
brew uninstall logmind                       # remove the v0.3.4 install
brew install thrillmade/tap/logmind          # current version
# OR
brew install thrillmade/tap/skdd   # logmind + clud-bug together
```

---

## Historical (the original tap contents)

```bash
brew tap thrillmade/logmind
brew install logmind        # pinned at v0.3.4
brew upgrade logmind
brew uninstall logmind
brew untap thrillmade/logmind
```
