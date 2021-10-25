# workflows

[![Flutter CI/CD](https://github.com/esysberlin/esys-flutter-workflows/actions/workflows/flutter_ci_cd.yml/badge.svg)](https://github.com/esysberlin/esys-flutter-workflows/actions/workflows/flutter_ci_cd.yml)

Demonstrates the use of Github workflows with Flutter.

## Usage

The workflow-file can be found [here](.github\workflows\flutter_ci_cd.yml).

After pushing a tag to github the action creates a release with the latest commit description. Furthermore an .apk & .ipa file will be appended to the release. The .ipa can be published to the store later by using [transporter](https://apps.apple.com/us/app/transporter/id1450874784?mt=12).

How to trigger an action:

- create a release tag with ```git tag <tag_name>```
- push tag with ```git push origin <tag_name>```

## TODO

- [ ] implement the signing of the releases for the appstores? ()at least needed for .apk
- [ ] use Github-Actions with [Fastlane](https://fastlane.tools/) for direct deployment to the app stores and more...