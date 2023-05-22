# Create a profile photo picker in flutter

## Follow the tutorial here: 
- https://youtu.be/tdnLdmI9K6c

## Steps

Dependencies:
image_picker: https://pub.dev/packages/image_picker
image_cropper: https://pub.dev/packages/image_cropper

Add it to the android manifest file (if you are targeting android):
<activity
android:name="com.yalantis.ucrop.UCropActivity"
android:screenOrientation="portrait"
android:theme="@style/Theme.AppCompat.Light.NoActionBar"/>


Add it to the web/index.js (If you are targeting web):
<head>
  ....

  <!-- Croppie -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.css" />
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/exif-js/2.3.0/exif.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.min.js"></script>

....
</head>

Add the following to ios/runner/info.plist file (if you are targeting ios):

NSPhotoLibraryUsageDescription - describe why your app needs permission for the photo library. This is called Privacy - Photo Library Usage Description in the visual editor.
This permission will not be requested if you always pass false for requestFullMetadata, but App Store policy requires including the plist entry.
NSCameraUsageDescription - describe why your app needs access to the camera. This is called Privacy - Camera Usage Description in the visual editor.
NSMicrophoneUsageDescription - describe why your app needs access to the microphone, if you intend to record videos. This is called Privacy - Microphone Usage Description in the visual editor.



