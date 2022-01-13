[日本語版](./CONTRIBUTING.ja.md)

# Contribution Guide

Thanks for your interest for the project.  
This is a guide that how to contribute to this repository. These are mostly guidelines, not rules. If you have suggestions to make it better, please let me know via Pull requests or Issues.

## Issues

If you have any problems, improvements, or questions, please send them to us via Issues.

- [Bug report](./../../issues/new?template=bug-report.md)
- [Feature request](./../../issues/new?template=feature_request.md)
- [Question](./../../issues/new?template=question.md)
- [Other](./../../issues/new)

## Pull requests

Pull requests are always welcome.  
When your code is pulled in, it will be covered by [LICENSE](./../../LICENSE).  
Also, the [CODEOWNERS](./../../CODEOWNERS) has the right to change this license. If there are no serious problems, license is no change to be made.

The changelog will be generated using the title of the pull request. Keep the following in mind.

- Please make only one change per request. For example, "add a new feature & fix a bug" is not allowed.
- Please give your pull request a title that is as simple and easy to understand as possible.

## Environment setup

Prepare the following tools.

- yarn 1.22.10+ (You may also be able to use npm. I haven't tried it.)

Install the yarn package.

```bash
yarn install
```

### Build

Run this command.

```bash
yarn run all
```

## Styleguides

### Code

All JavaScript code is linted with [Prettier](https://prettier.io/).  
Please run below command before commiting to check code styles.

```bash
yarn run format-check
```

### Git Commit Messages

The commit message is set based on "[Conventional Commits](https://www.conventionalcommits.org)". Please write in Japanese or English.

```txt
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

```txt
<type>[optional scope]: <description>
  │          │               │
  │          │               └─⫸ Description in present tense. Not capitalized. No period at the end.
  │          │
  │          └─⫸ (Currently omitted.)
  │
  └─⫸ Commit Type: build|ci|docs|feat|fix|perf|refactor|test
```

#### Type

Must be one of the following:

- **build**: Changes that affect the build system. (example scope: yarn)
- **ci**: Changes to our CI configuration files and scripts. (example scope: action)
- **chore**: Changes that are not in build, ci, or any other. (example scope: git)
- **docs**: Documentation only changes.
- **feat**: A new feature.
- **fix**: A bug fix.
- **perf**: A code change that improves performance.
- **refactor**: A code change that neither fixes a bug nor adds a feature.
- **test**: Adding missing tests or correcting existing tests.
