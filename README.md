# lavr/tap

Homebrew formulae.

## Usage

```bash
brew tap lavr/tap
```

## Formulae

### ansible-ssh

SSH into hosts using connection details from your Ansible inventory.

```bash
brew install lavr/tap/ansible-ssh
```

See [lavr/ansible-ssh](https://github.com/lavr/ansible-ssh) for full documentation.

## Updating a formula

When a new version is released:

1. Get the sha256 of the new tag:

   ```bash
   curl -sL https://github.com/lavr/ansible-ssh/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

2. Update `url` and `sha256` in `Formula/ansible-ssh.rb`

3. Commit and push:

   ```bash
   git commit -am "ansible-ssh X.Y.Z"
   git push
   ```

Users upgrade with:

```bash
brew upgrade ansible-ssh
```
