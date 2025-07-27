# Stabilize

[`stabilize`](https://github.com/google/oss-rebuild/tree/main/cmd/stabilize) is a tool that helps remove unreproducible differences known to be not significant.

In Reproducible Central, we run `stabilize` on all unreproducible artifacts to detect such non-significant differences: this helps finding low hanging fruits, as such differences should easily be made reproducible for future releases.

## Legends

- :recycle: - all unreproducible differences were removed by applying stabilize
- :rotating_light: - some unreproducible differences remain
- :no_entry_sign: - files are not supported by stabilize
- \- - not analyzed yet
