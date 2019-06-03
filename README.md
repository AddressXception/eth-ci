# eth-ci

Utilities for Ethereum CI/CD

This repository stitches together several common tools for executing CI/CD workflows in Ethereum projects.

## How to use this repo

1. add this repository as a submodule to your truffle project
2. add a network called `ganache` to your `truffle-config.js` and point it to port `8545`
3. (optionally) modify `.env`
4. execute `./build.sh && ./run.sh`
5. validate that the tools output results to the appropriate folders

## Example

see: [eth-ci-example](https://github.com/AddressXception/eth-ci-example)