# iOS 13 UIAppearance Infinite Loop
Demo app for an iOS 13 beta bug where UIKit gets into an infinite loop when setting UIAppearance proxy properties

If you set a view's appearance proxy's overrideUserInterfaceStyle to the current style, then to the opposite style, then back to the current style, it can get into some sort of infinite loop involving layout or applying traits or something like that.

Steps:
 - Open and run attached sample project
 - Press the "Set Light" button
 - Press the "Open View" button and note the segmented control showing up as expected in the presented view controller
 - Close the view controller by swiping down
 - Press the "Set Dark" button
 - Press the "Open View" button and note the segmented control, now in Dark appearance
 - Close it again by swiping down
 - Press the "Set Light" button
 - Press the "Open View" button. Nothing happens, and the CPU is pegged at close to 100%.

I'm attaching a couple of screenshots of the call stacks I see in Xcode when I pause the debugger at this point.

Reproduced on an iPhone X running iOS 11 beta 2, and on an iPhone XR simulator in Xcode 11 beta 2.
