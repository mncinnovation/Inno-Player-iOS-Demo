//
//  PlayerAsset.h
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlayerAsset : NSObject
@property (strong, readwrite, nonnull, nonatomic) NSString * url;
@property (strong, readwrite, nonnull, nonatomic) NSString * title;

- (instancetype)initWithURL:(NSString * __nonnull)url title:(NSString * __nonnull)title;
@end

NS_ASSUME_NONNULL_END
