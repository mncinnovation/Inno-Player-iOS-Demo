//
//  InnoPlaylistItem.h
//  InnoPlayer_iOS_SDK
//
//  Created by Andi Septiadi on 22/12/20.
//  Copyright © 2020 MNC Innovation Center. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InnoConfig.h"

@class InnoConfig;

@interface InnoPlaylistItem : NSObject

/*!
 Video URL to a single video file, to be played using Inno Player.
 */
@property (nonatomic, copy, readwrite, nullable) NSString * file;

/*!
 URL to a poster image. The image is displayed before and after playback, and in the listbar. For audio-only media, the poster image stays visible during playback.
 */
@property (nonatomic, copy, readwrite, nullable) NSString *image;

/*!
 Title of the video.
 @discussion Shown in the listbar and in the play button container in the center of the screen before the video starts to play.
 */
@property (nonatomic, copy, readwrite, nullable) NSString *title;

/*!
 A dictionary containing asset initialization options.
 */
@property (nonatomic, assign, unsafe_unretained, readwrite, nullable) NSDictionary *assetOptions;

/*!
 Short description of the item. It is displayed in the listbar.
 */
@property (nonatomic, copy, readwrite, nullable) NSString *desc;

/*!
 Inits a InnoPlaylistItem object with provided InnoConfig.
 @method initWithConfig:
 @param config configuration object.
 */
- (instancetype __nonnull)initWithConfig:(InnoConfig * __nullable)config;
@end
