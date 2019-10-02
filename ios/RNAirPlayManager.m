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
    NSMutableDictionary *nowPlayingInfo = [[NSMutableDictionary alloc] initWithCapacity:2];
    [nowPlayingInfo setValue:@"Coco & Colt" forKey:MPMediaItemPropertyTitle];
    UIImage *artworkImage = [UIImage imageNamed:@"artwork"];
    MPMediaItemArtwork *itemArtwork = [[MPMediaItemArtwork alloc] initWithBoundsSize:artworkImage.size requestHandler:^UIImage * _Nonnull(CGSize size) {
        return artworkImage;
    }];
    [nowPlayingInfo setValue:itemArtwork forKey:MPMediaItemPropertyArtist];
    [MPNowPlayingInfoCenter defaultCenter].nowPlayingInfo = nowPlayingInfo;
    AVRoutePickerView *pickerView = [[AVRoutePickerView alloc] init];
    pickerView.tintColor = UIColor.blackColor;
    pickerView.activeTintColor = UIColor.blackColor;

    return pickerView;

}
@end
