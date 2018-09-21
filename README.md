# cz-parsley-changelog

A [commitizen](https://github.com/commitizen/cz-cli) adapter for [Parsley Health Engineering](https://www.parsleyhealth.com/).

## Usage

You should already have the [commitizen CLI](https://github.com/commitizen/cz-cli) installed.

`npm install --save-dev cz-parsley-changelog`

Then add this to your project's `package.json`:

```
"config": {
  "commitizen": {
    "path": "node_modules/cz-parsley-changelog"
  }
}
```

Don't forget to use `git cz` to commit!
