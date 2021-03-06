//
//  Test2ViewController.m
//  AVPlayerView
//
//  Created by ChoJaehyun on 2016. 8. 1..
//  Copyright © 2016년 com.skswhwo. All rights reserved.
//

#import "Test2ViewController.h"
#import "CrAVPlayerView.h"

@interface Test2ViewController ()
@property (weak, nonatomic) IBOutlet CrAVPlayerView *avPlayerView;

@property (weak, nonatomic) IBOutlet UISwitch *autoplaySwitch;
@property (weak, nonatomic) IBOutlet UISwitch *loopSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *dimmedEffectSwitch;
@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"land" ofType:@"mp4"];
    [self.avPlayerView playerWithContentURL:[NSURL fileURLWithPath:path]];
    [self valueChanged:nil];
    [self.avPlayerView setTapCallBack:^(CrAVPlayerView *playerView) {
    }];
    [self.avPlayerView setDidAppear:^(CrAVPlayerView *playerView) {
        //do something;
    }];
    [self.avPlayerView setDidDisappear:^(CrAVPlayerView *playerView) {
        //do something;
    }];
    [self.avPlayerView setFailure:^(CrAVPlayerView *playerView) {
        //do somthing;
    }];
}

- (IBAction)valueChanged:(id)sender
{
    self.avPlayerView.autoplay      = self.autoplaySwitch.on;
    self.avPlayerView.loop          = self.loopSwitch.on;
    self.avPlayerView.dimmedEffect  = self.dimmedEffectSwitch.on;
}

@end
