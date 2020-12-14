//
//  InnoConfig.h
//  InnoPlayer_iOS_SDK
//
//  Created by Victor Toya on 03/09/20.
//  Copyright © 2020 MNC Innovation Center. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InnoConfig : NSObject

@property(nonatomic, nullable, strong) NSString *file;

@property(nonatomic, nullable, strong) NSArray *sources;

@property(nonatomic, nullable, strong) NSArray *playlist;

@property(nonatomic, nullable, strong) NSString *title;

@property(nonatomic, nullable, strong) NSString *image;

@property(nonatomic, nullable, strong) NSString *desc;

@property(nonatomic, nullable, strong) NSString *mediaId;


@property(nonatomic) BOOL controls;

@property(nonatomic) BOOL repeat;

@property(nonatomic) BOOL displayTitle;

@property(nonatomic) BOOL displayDescription;

@property(nonatomic) BOOL autostart;


- (id _Nonnull)initWithContentURL:(NSString *_Nonnull)url;

@end
