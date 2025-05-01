# Bird Documentation

This repository contains the documentation for Bird, with a preview system for pull requests.

## Documentation Structure

All documentation is stored in the `docs/` directory. When changes are made to documentation:
1. The changes can be previewed in pull requests
2. Once merged to main, they are automatically synced to Crisp

## Preview System

Documentation previews are automatically generated for pull requests:
- Each PR gets its own preview URL: `https://atinder.github.io/bird-docs/pr-preview/{PR_NUMBER}/`
- Previews are updated automatically when changes are pushed to the PR
- The preview URL is posted as a comment in the PR

## Development

### Local Setup

1. Clone the repository
```bash
git clone https://github.com/atinder/bird-docs.git
cd bird-docs
```

2. Install dependencies
```bash
bundle install
```

3. Run locally
```bash
bundle exec jekyll serve
```

### Workflow

1. Create a new branch for your changes
2. Make changes to files in the `docs/` directory
3. Create a pull request
4. Preview your changes using the automatically generated preview URL
5. Once approved and merged, changes will be synced to Crisp 