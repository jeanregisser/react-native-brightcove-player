#import "RCTBrightcovePlayerManager.h"
#import "RCTBrightcovePlayer.h"
#import "RCTBridge.h"

@implementation RCTBrightcovePlayerManager

RCT_EXPORT_MODULE();

- (UIView *)view {
  return [[RCTBrightcovePlayer alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

/* Should support: onLoadStart, onLoad, and onError to stay consistent with Image */

- (NSDictionary *)customDirectEventTypes
{
  return @{
    RNVideoEventLoading: @{
      @"registrationName": @"onLoadStart"
    },
    RNVideoEventLoaded: @{
      @"registrationName": @"onLoad"
    },
    RNVideoEventLoadingError: @{
      @"registrationName": @"onError"
    },
    RNVideoEventProgress: @{
      @"registrationName": @"onProgress"
    },
    RNVideoEventSeek: @{
      @"registrationName": @"onSeek"
    },
    RNVideoEventEnd: @{
      @"registrationName": @"onEnd"
    }
  };
}

RCT_EXPORT_VIEW_PROPERTY(videos, NSArray);
RCT_EXPORT_VIEW_PROPERTY(autoAdvance, BOOL);
RCT_EXPORT_VIEW_PROPERTY(autoPlay, BOOL);

//RCT_EXPORT_VIEW_PROPERTY(src, NSDictionary);
//RCT_EXPORT_VIEW_PROPERTY(resizeMode, NSString);
//RCT_EXPORT_VIEW_PROPERTY(repeat, BOOL);
//RCT_EXPORT_VIEW_PROPERTY(paused, BOOL);
//RCT_EXPORT_VIEW_PROPERTY(muted, BOOL);
//RCT_EXPORT_VIEW_PROPERTY(volume, float);
//RCT_EXPORT_VIEW_PROPERTY(rate, float);
//RCT_EXPORT_VIEW_PROPERTY(seek, float);

- (NSDictionary *)constantsToExport {
  return @{
//    @"ScaleNone": AVLayerVideoGravityResizeAspect,
//    @"ScaleToFill": AVLayerVideoGravityResize,
//    @"ScaleAspectFit": AVLayerVideoGravityResizeAspect,
//    @"ScaleAspectFill": AVLayerVideoGravityResizeAspectFill
  };
}

@end
