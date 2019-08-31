# FFCameraLocation

This is a library which provides an extension of UIScreen that provides information about the location of your iPhone or iPad's front-facing camera. 

    public
    extension UIScreen {

        /// Returns the offset of the camera (in mm) from the center of the screen edge to which it is aligned.
        static var cameraAlignmentOffset_inMillimeters: CGPoint?

        /// Returns the offset of the camera (in mm) from the center of the entire screen.
        static var cameraScreenCenterOffset_inMillimeters: CGPoint

        /// Returns cameraScreenCenterOffset_inMillimeters converted to Meters.
        static var cameraScreenCenterOffset_inMeters: CGPoint

    }

## Possible Uses

* Determine gaze locations on a screen, from a user looking at the device.
* Offset eye locations for perspective-based transforms.
* Feel good about having just a little more information about the device your code is currently running on.

## Installation and use

The extension can be installed using [Cocoapods](https://cocoapods.org/) by adding the below line to your `Podfile`:

    pod 'FFCameraLocation'

To use the extension in your code first import it by adding:

    import FFCameraLocation

Then you can use it in the following ways:

1 - For the offset of the camera (in mm) from the center of the top screen edge:

    let cameraAlignmentOffset = UIScreen.cameraAlignmentOffset_inMillimeters // CGPoint?

2 - For the offset of the camera from the center of the entire screen:

    let cameraScreenCenterOffset  = UIScreen.cameraScreenCenterOffset_inMillimeters // CGPoint
    let cameraScreenCenterOffsetM = UIScreen.cameraScreenCenterOffset_inMeters // CGPoint

Note: 
This library also includes a publicly-accessible instance of [UIScreenExtension](https://github.com/marchv/UIScreenExtension), developed by Jes Schwarzer.  (license included in source)
As such, all UIScreenExtension methods are also accessible by pod installing FFCameraLocation.

## Support

Due to the nature of the project this library was built for, it currently supports only iPhones and iPads which feature Apple's Face ID technology.

At this time, that list includes:  

* iPhone X
* iPhone XR
* iPhone XS
* iPhone XS Max
* iPad Pro 11"
* iPad Pro 12.0"

## Author

eric@madcapstudios.com
