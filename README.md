# GitHub Action for SwiftFormat

This Action executes [Nick Lockwood's SwiftFormat](https://github.com/nicklockwood/SwiftFormat). The implementation and scripts were adapted from the excellent [Sinoru's actions-swiftlint](https://github.com/sinoru/actions-swiftlint).

The pipeline automatically fails if the code pushed in has not been formatted and properly committed.

Usage example:

``` yml
name: SwiftFormat

on:
  pull_request:
    paths:
      - '.github/workflows/swiftformat.yml'
      - '.swiftversion'
      - '.swiftformat.yml'
      - '**/*.swift'

jobs:
  SwiftFormat:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: sinoru/actions-setup-swift@v2
        with:
          swift-version: '5.6.1'
      - name: GitHub Action for SwiftFormat
        uses: CassiusPacheco/action-swiftformat@v0.1.0
        with:
          swiftformat-version: '0.49.11'
```
