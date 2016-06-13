# ModalPresentationBug
A test project to show unexpected modal presentation/dismissal behavior

In this project, there are three view controllers:

1. MPRootViewController
2. MPSecondViewController
3. MPThirdViewController

`MPRootViewController` has a `Present` button whose action is to present MPSecondViewController modally. 
`MPSecondViewController` has a `Present` button whose action is to present MPThirdViewController modally.
`MPThirdViewController` has a `Dismiss to Root` button whose action calls `dismissViewController` on `MPRootViewController`

The modal stack that would be created will look like:

MPRootViewController -> MPSecondViewController -> MPThirdViewController

## Expected Behavior

If the user taps on `Dismiss To Root` on `MPThirdViewController`, I expect to see `MPThirdViewController` to dismiss, revealing `MPRootViewController` underneath.
`MPSecondViewController` should be removed from the stack without an animation.

This should be the behavior as per the documentation on `dismissViewControllerAnimated:completion:`
https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/index.html#//apple_ref/occ/instm/UIViewController/dismissViewControllerAnimated:completion:

## Actual Behavior

If the user taps on `Dismiss To Root` on `MPThirdViewController`, `MPThirdViewController` disappears immediately and `MPSecondViewController` can be seen with a dismiss animation, revealing `MPRootViewController`
