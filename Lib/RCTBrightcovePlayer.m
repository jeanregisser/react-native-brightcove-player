
#import "RCTBrightcovePlayer.h"
#import <Brightcove-Player-SDK/BCOVPlayerSDK.h>
#import "RCTConvert.h"
#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"

NSString *const RNVideoEventLoaded = @"videoLoaded";
NSString *const RNVideoEventLoading = @"videoLoading";
NSString *const RNVideoEventProgress = @"videoProgress";
NSString *const RNVideoEventSeek = @"videoSeek";
NSString *const RNVideoEventLoadingError = @"videoLoadError";
NSString *const RNVideoEventEnd = @"videoEnd";

static NSString *const statusKeyPath = @"status";

@interface RCTBrightcovePlayer () <BCOVPlaybackControllerDelegate>

@property (nonatomic) RCTEventDispatcher *eventDispatcher;
@property (nonatomic) id<BCOVPlaybackController> playbackController;

@end

@implementation RCTBrightcovePlayer

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher*)eventDispatcher {
    if (self = [super init]) {
        self.eventDispatcher = eventDispatcher;

        BCOVPlayerSDKManager *manager = [BCOVPlayerSDKManager sharedManager];

        id<BCOVPlaybackController> playbackController =
        [manager createPlaybackControllerWithViewStrategy:nil /*[manager defaultControlsViewStrategy]*/];
        playbackController.delegate = self;
        playbackController.autoAdvance = YES;
        playbackController.autoPlay = YES;

        UIView *videoView = playbackController.view;
        [self addSubview:videoView];

        self.playbackController = playbackController;

        BCOVVideo *video = [BCOVVideo videoWithURL:[NSURL URLWithString:@"http://video-js.zencoder.com/oceans-clip.mp4"]];
        [self.playbackController setVideos:@[video]];
    }
    return self;
}

#pragma mark UIView

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.playbackController.view.frame = self.bounds;
}

#pragma mark Props

- (void)setAutoAdvance:(BOOL)autoAdvance {
    self.playbackController.autoAdvance = autoAdvance;
}

- (void)setAutoPlay:(BOOL)autoPlay {
    self.playbackController.autoPlay = autoPlay;
}

@end
