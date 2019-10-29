# cz-parsley-changelog

A [commitizen](https://github.com/commitizen/cz-cli) adapter for [Parsley Health Engineering](https://www.parsleyhealth.com/).

## Usage

You should already have the [commitizen CLI](https://github.com/commitizen/cz-cli) installed.

`npm install --save-dev @parsleyhealth/cz-changelog`

Then add this to your project's `package.json`:

```
"config": {
  "commitizen": {
    "path": "node_modules/@parsleyhealth/cz-changelog"
  }
}
```

Don't forget to use `git cz` to commit! If you're inclined, you can also 💪🏼force🥵 people into using commitizen with [pre-commit](https://github.com/pre-commit/pre-commit) hooks. See how [dr-parsley](https://github.com/parsleyhealth/dr-parsley/blob/master/package.json) handles this.
