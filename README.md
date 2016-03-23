# ColorWithHex-iOS

[![Version](https://img.shields.io/cocoapods/v/ColorWithHex.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHex)
[![License](https://img.shields.io/cocoapods/l/ColorWithHex.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHex)
[![Platform](https://img.shields.io/cocoapods/p/ColorWithHex.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHex)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/ColorWithHex.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHex)
[![Build Status](https://img.shields.io/travis/GabrielMassana/ColorWithHex-iOS/master.svg?style=flat-square)](https://travis-ci.org/GabrielMassana/ColorWithHex-iOS)

##   What is it?

Swift Extension to convert hexadecimal values into UIColor Objects.

Hex formats allowed:
- Short Hex: rgb
- Hash + Short Hex: #rgb
- Hex: rrggbb
- Hash + Hex: #rrggbb
- Hex + Alpha: rrggbbaa
- Hash + Hex + Alpha: #rrggbbaa

## Installation

#### Podfile

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'ColorWithHex', '~> 0.0'
```

Then, run the following command:

```bash
$ pod install
```

#### Old school

Drag into your project the folder `/ColorWithHex-iOS`. That's all.

## Example Objective-C

```objc
#import "ColorWithHex-Swift.h"

...

        shortHexHash.backgroundColor = UIColor.colorWithHex("#f80")
        shortHex.backgroundColor = UIColor.colorWithHex("f80")
        hex.backgroundColor = UIColor.colorWithHex("ff8800")
        hexAlpha.backgroundColor = UIColor.colorWithHex("ff880080")
        hexHash.backgroundColor = UIColor.colorWithHex("#20aa45")
        hexHashAlpha.backgroundColor = UIColor.colorWithHex("#20aa4580")
```

## License

ColorWithHex-iOS is released under the MIT license. Please see the file called LICENSE.

## Versions

```bash
$ git tag -a 0.0.0 -m 'Version 0.0.0'

$ git push --tags
```

## Author

Gabriel Massana

##Found an issue?

Please open a [new Issue here](https://github.com/GabrielMassana/ColorWithHex-iOS/issues/new) if you run into a problem specific to ButtonBackgroundColor-iOS, have a feature request, or want to share a comment.
