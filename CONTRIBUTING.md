# Contributing to Bird Docs

## Preview Deployments

When you create a pull request, a preview deployment will automatically be generated. This allows you to see your changes live before they are merged into the main site.

### How it works

1. Create a new branch and make your changes
2. Open a pull request against the `master` branch
3. GitHub Actions will automatically:
   - Build your changes
   - Deploy them to a preview URL: `https://atinder.github.io/bird-docs/preview/pr-{number}/`
   - Post the preview URL as a comment in your PR

### Preview Structure

- Main site is deployed to: `https://atinder.github.io/bird-docs/`
- PR previews are deployed to: `https://atinder.github.io/bird-docs/preview/pr-{number}/`
- All deployments use the `gh-pages` branch as the source
  - Main site content is in the root directory
  - Preview content is in `/preview/pr-{number}/` directories

### Important Notes

1. Each PR gets its own preview directory
2. Previews are automatically updated when you push new changes
3. Preview directories are preserved until the PR is merged or closed
4. The main site deployment is independent and won't be affected by preview deployments 