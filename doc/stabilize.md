# Stabilize

[`stabilize`](https://github.com/google/oss-rebuild/tree/main/cmd/stabilize) is a tool that helps remove unreproducible differences from unreproducible artifacts.

In Reproducible Central, we run `stabilize` on all unreproducible artifacts to remove unreproducible differences and then compare the results again to report if the unreproducible differences were removed.

## Legends

- :recycle: - all unreproducible differences were removed
- :rotating_light: - some unreproducible differences remain
- :no_entry_sign: - files are not supported by stabilize
- \- - not analyzed yet
