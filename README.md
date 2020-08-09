 # FFCameraLocation

![language](https://img.shields.io/badge/language-swift-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/FFCameraLocation.svg?style=flat)](http://cocoapods.org/pods/FFCameraLocation)
![CI Status](https://img.shields.io/badge/build-passing-success.svg)
[![Platform](https://img.shields.io/cocoapods/p/FFCameraLocation.svg?style=flat)](http://cocoapods.org/pods/FFCameraLocation)
[![License](https://img.shields.io/cocoapods/l/FFCameraLocation.svg?style=flat)](http://cocoapods.org/pods/FFCameraLocation)
[![Twitter](https://img.shields.io/badge/twitter-@ericreedy-blue.svg)](http://twitter.com/ericreedy)

## Description

This is a simple library which adds an extension to UIScreen that provides information about the location of your iPhone or iPad's front-facing camera. 

## Potential Uses

- To determine gaze locations on a screen from a user looking at the device.
- To reorient eye locations from the camera to the center of the screen for perspective-based transforms.
- To feel good about having just that little bit more information about the device your code is currently running on.

## Installation

FFCameraLocation is available through [CocoaPods](http://cocoapods.org). To install, simply add the following line to your Podfile:

```ruby
pod "FFCameraLocation"
```

And run:

`$ pod install`

## Usage

The extension provided by this library offers the following static variables:

#### Interface(s):

```swift
static var cameraAlignmentOffset_inMillimeters: CGPoint?
static var cameraScreenCenterOffset_inMillimeters: CGPoint
static var cameraScreenCenterOffset_inMeters: CGPoint
```

The first returns the offset value from the edge of the screen to the camera.  The second and third do the same, except that they are relative to the center of the screen, instead.

In addition to these accessors, the library also offers the following static variable, which can be used to convert between metric and pixel measurements:

### Interface(s):

```swift
static var dimensions_inMillimeters: CGSize
```

Also of Note:  This library also includes a publicly-accessible instance of [UIScreenExtension](https://github.com/marchv/UIScreenExtension), developed by Jes Schwarzer.  (license included in source)  As such, all UIScreenExtension methods are also accessible by pod installing FFCameraLocation.

## Support

Due to the nature of the project this library was built for, it currently supports only iPhones and iPads which feature Apple's Face ID technology.

At this time, that list includes:  

* iPhone X
* iPhone XR
* iPhone XS
* iPhone XS Max
* iPad Pro 11"
* iPad Pro 12.0"

Note:  I had planned to keep the list of devices up to date, but due to the outbreak of Covid-19, store closures have prevented such efforts.  As such, if you are a prospective user of this library, and you happen to have a device that has not yet been added, I would be quite appreciative of any contributions you might be able to make.

## License

This project is available under [The MPL-2.0 License](https://www.mozilla.org/en-US/MPL/2.0/).  
Copyright © 2020, [Eric Reedy](mailto:eric@madcapstudios.com). See [LICENSE](LICENSE) file.
