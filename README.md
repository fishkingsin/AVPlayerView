# AVPlayerView

AVPlayer module that implemented by subclass of UIView class
- Support constraints and XIB implementation
- Support autoplay, loop mode
- Support appear, disappear callback
- Support tap gesture callback
- Support simple control
- Easy to use 

![alt text](https://github.com/skswhwo/AVPlayerView/blob/master/sample1.gif "demo")
![alt text](https://github.com/skswhwo/AVPlayerView/blob/master/sample2.png "demo")
![alt text](https://github.com/skswhwo/AVPlayerView/blob/master/sample3.png "demo")
![alt text](https://github.com/skswhwo/AVPlayerView/blob/master/sample4.png "demo")
![alt text](https://github.com/skswhwo/AVPlayerView/blob/master/sample5.png "demo")

## Installation

AVPlayerView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

`
pod "AVPlayerView"
`

And then run:

`
$ pod install
`

## Usage

```objective-c
#import <AVPlayerView/CrAVPlayerView.h>
```

```objective-c
AVPlayerView *avPlayerView  = [[AVPlayerView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
NSString *path = [[NSBundle mainBundle] pathForResource:@"short" ofType:@"mp4"];
[avPlayerView playerWithContentURL:[NSURL fileURLWithPath:path]];
avPlayerView.autoplay           = YES;
avPlayerView.loop               = YES;
avPlayerView.dimmedEffect       = YES;
avPlayerView.pauseWhenDisappear = YES;                  //default: true
avPlayerView.showControl        = NO;                   //default: true
self.backgroundColorForFullSize = [UIColor blackColor]; //default: black

[avPlayerView setTapCallBack:^(AVPlayerView *playerView) {
    if (playerView.isFullSize) {
        [playerView normalSizeMode];
    } else {
        [playerView fullSizeMode];
    }
}];

[self.avPlayerView setDidAppear:^(AVPlayerView *playerView) {
    //do somthing;
}];

[self.avPlayerView setDidDisappear:^(AVPlayerView *playerView) {
    //do somthing;
}];

[self.avPlayerView setFailure:^(AVPlayerView *playerView) {
        //do somthing;
}];
```

```objective-c
NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"mp4"];
[self.avPlayerView playerWithContentURL:[NSURL fileURLWithPath:path]];
self.pauseWhenDisappear         = YES;                  //default: true
self.avPlayerView.showControl   = YES;                  //default: true
self.backgroundColorForFullSize = [UIColor blackColor]; //default: black

[self.avPlayerView setTapCallBack:^(AVPlayerView *playerView) {
    //do something;
}];
[self.avPlayerView setDidAppear:^(AVPlayerView *playerView) {
    //do something;
}];
[self.avPlayerView setDidDisappear:^(AVPlayerView *playerView) {
    //do something;
}];
[self.avPlayerView setFailure:^(AVPlayerView *playerView) {
        //do somthing;
    }];
```

## Author

skswhwo, skswhwo@gmail.com

## License

AVPlayerView is available under the MIT license. See the LICENSE file for more info.
