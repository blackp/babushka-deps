# Philip’s Babushka Deps

[Babushka](http://babushka.me) deps for building my standard computing environment.

## Installation

On a fresh copy of macOS, install Xcode from the Mac App Store, then agree to the Xcode license:

```
sudo xcodebuild -license
```

Make relevant parts of `/usr/local` writeable:

```
sudo mkdir -p /usr/local/{bin,babushka}
sudo chown `whoami`:wheel /usr/local/{bin,babushka}
```

Install Babushka:

```
sh -c "`curl https://babushka.me/up`"
```

Copy over my `~/.ssh` keys to grant access to various GitHub repos.

Then download these deps:

```
mkdir -p ~/.babushka
git clone https://github.com/blackp/babushka-deps ~/.babushka/deps
```

Bootstrap the workstation:

```
babushka "mac bootstrapped"
```

When this completes, close the shell and open a new one, then continue the installation:

```
babushka "macbook"
```

Or, for a heavier install:

```
babushka "imac"
```

## Manual steps

- [ ] [Copy Keychain](https://support.apple.com/kb/PH20120?locale=en_US)
- [ ] Disable the guest user
- [ ] Open 1Password and sign in
- [ ] Configure charles proxy
