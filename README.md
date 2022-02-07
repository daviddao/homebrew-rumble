# homebrew-rumble

Experimental brew installer for [RumbleDB](https://github.com/RumbleDB/rumble) on MacOS

### Installation

```
brew tap daviddao/rumble
brew install --build-from-source rumble
```

### Usage

```
rumbledb serve -p 9090
rumbledb run -q '1+1'
rumbledb repl
```
