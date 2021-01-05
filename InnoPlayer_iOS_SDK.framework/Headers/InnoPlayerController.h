//
//  InnoPlayerController.h
//  InnoPlayer_iOS_SDK
//
//  Created by Victor Toya on 03/09/20.
//  Copyright © 2020 MNC Innovation Center. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "InnoPlayerDelegate.h"
#import "InnoConfig.h"

@interface InnoPlayerController : NSObject

@property (nonatomic, nullable, strong) UIView *view;

@property (nonatomic, nullable, weak) id<InnoPlayerDelegate> delegate;

+ (void)setPlayerKey:(NSString *_Nonnull)key;

- (id _Nonnull)initWithFrame:(CGRect)frame andConfig:(InnoConfig *_Nonnull)config;

- (void)play;

- (void)pause;

- (void)stop;

- (void)seek:(NSInteger)position;

@end
