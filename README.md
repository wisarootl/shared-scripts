# About this template

This template provided common nice to have for every projects under Abacus Digital please feel free to add, edit or delete if you do not using it.

## Dependency

- [CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners) - help controlling whether person or team are owner this repository and permission to approved the pull request
- [dependabot.yaml](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file) - help auto update the dependency you are using with, also check the dependency CVE
- [pullrequest_template](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/creating-a-pull-request-template-for-your-repository) - help create template format for every one would like to open pull-request to your repository must following the guideline format
- [.dockerignore](https://shisho.dev/blog/posts/how-to-use-dockerignore/) - in case you using docker container ignore non-nessessory file copy to your container
- [.gitignore](https://github.com/github/gitignore) - help to ignore file or folder you don't need to commit to remote repository
- [pre-commit](https://pre-commit.com/) - help to automate checking depend on plugin you are using for make sure everything is ok before commit

## Pre-commit Guideline

Pre-commit is a powerful tool that can help you ensure everyone has followed the common practice or linter guidelines you are setting up. It also has other tools to help you, like [Husky](https://typicode.github.io/husky/) Anyway, feel free to remove it if it doesn't match your context

### Pre-commit will effect locally before commit after you install it

install pre-commit at local have 2 methods

Via Home Brew

```bash
brew install pre-commit
```

Via Pip

```bash
pip install pre-commit
```

After iinstall successfully going to root of reposity (same path as `.pre-commit-config.yaml`)

Run below will install all plugins that specific in the file

```bash
 pre-commit install
```

Now every are set let `commit`. Readmore [here](https://pre-commit.com/)
