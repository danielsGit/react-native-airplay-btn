#import "RNAirplayManager.h"
#import "RNAirplay.h"
#import <React/RCTBridge.h>
#import <React/UIView+React.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@import AVKit;

@implementation RNAirplayManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view {

    AVRoutePickerView *pickerView = [[AVRoutePickerView alloc] init];
    pickerView.tintColor = UIColor.blackColor;
    
    return pickerView;

}
@end
