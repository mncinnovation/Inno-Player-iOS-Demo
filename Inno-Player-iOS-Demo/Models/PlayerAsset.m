//
//  PlayerAsset.m
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import "PlayerAsset.h"

@implementation PlayerAsset
@synthesize url;
@synthesize title;

- (instancetype)initWithURL:(NSString *)url title:(NSString *)title {
    self = [super init];
    if (self) {
        [self setUrl:url];
        [self setTitle:title];
    }
    return self;
}
@end
