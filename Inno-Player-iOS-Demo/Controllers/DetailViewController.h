//
//  DetailViewController.h
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import <UIKit/UIKit.h>
#import "PlayerAsset.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

- (instancetype)initWithAsset:(PlayerAsset * __nonnull)asset;

@end

NS_ASSUME_NONNULL_END
