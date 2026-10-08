# homebrew-cybrota
A HomeBrew formulae for brew package manager

## Scharf release verification

Scharf v1.4.2 includes signed GitHub/Sigstore build provenance for its archives
and checksum manifest. The formula's SHA256 fields verify the downloaded bytes;
Homebrew does not itself enforce those provenance attestations.

The [release workflow](https://github.com/cybrota/scharf/actions/runs/37857028309)
verified all six subjects against
[attestation 54129867](https://github.com/cybrota/scharf/attestations/54129867)
before publishing the release.
To independently verify a downloaded archive with a recent GitHub CLI:

```sh
gh release download v1.4.2 --repo cybrota/scharf --pattern scharf_Darwin_arm64.zip
gh attestation verify scharf_Darwin_arm64.zip --repo cybrota/scharf \
  --signer-workflow cybrota/scharf/.github/workflows/release.yml \
  --source-digest c11d75f2e05393b6719724f60280593d75a16618 \
  --source-ref refs/heads/main --deny-self-hosted-runners
```

Choose the matching Darwin/Linux and arm64/x86_64 archive for your platform.
See the upstream [release procedure](https://github.com/cybrota/scharf/blob/main/docs/releasing.md)
for checking the checksum manifest as well. Provenance identifies the build's
source and signer; it is not a guarantee that the software is free of bugs.
