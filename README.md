# Homebrew Tap for bitbucket-cli

This is a Homebrew tap for installing [bitbucket-cli](https://github.com/vkumbhar94/bitbucket-cli).

## Installation

```bash
brew tap vkumbhar94/bitbucket
brew install bitbucket-cli
```

## Usage

```bash
# List open PRs
bitbucket-cli list-prs --project PROJ --repo my-repo --state OPEN

# Get PR details
bitbucket-cli get-pr --project PROJ --repo my-repo --pr-id 123

# Get PR diff
bitbucket-cli get-diff --project PROJ --repo my-repo --pr-id 123

# Get activities
bitbucket-cli get-activities --project PROJ --repo my-repo --pr-id 123

# Get commits
bitbucket-cli get-commits --project PROJ --repo my-repo --pr-id 123

# Get changes
bitbucket-cli get-changes --project PROJ --repo my-repo --pr-id 123

# See help
bitbucket-cli --help
```

## Configuration

Create `~/.bitbucket` file with:

```
BITBUCKET_HOST=https://your-bitbucket.com
BITBUCKET_USERNAME=your-username
BITBUCKET_PASSWORD=your-token
```

Or use environment variables:

```bash
export BITBUCKET_HOST=https://your-bitbucket.com
export BITBUCKET_USERNAME=your-username
export BITBUCKET_PASSWORD=your-token
```

## Updating

```bash
brew upgrade bitbucket-cli
```

## License

MIT License - See [bitbucket-cli](https://github.com/vkumbhar94/bitbucket-cli) for details.
