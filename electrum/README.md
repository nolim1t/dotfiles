# Electrum Downloader and executor

## How to use

```bash
./run-electrum-client.sh
```
This script will create an electrum directory and will also verify that the signed files match.

## Verify that this script is good

```bash
gpg --verify run-electrum-client.sh.asc  || echo "Signature Not OK"
```

The output should be my GPG signature if everything is good


