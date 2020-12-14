//
//  PlayerAssetSection.h
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import <Foundation/Foundation.h>
#import "PlayerAsset.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayerAssetSection : NSObject
@property (strong, readwrite, nonnull, nonatomic) NSString * title;
@property (strong, readwrite, nonnull, nonatomic) NSArray <PlayerAsset *> * assets;

- (instancetype)initWithTitle:(NSString * __nonnull)title assets:(NSArray <PlayerAsset *> * __nonnull)assets;

+ (NSArray <PlayerAssetSection *> * __nonnull)fetchDefaultData;
@end

NS_ASSUME_NONNULL_END
