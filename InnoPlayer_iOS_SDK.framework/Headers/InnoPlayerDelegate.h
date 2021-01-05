//
//  InnoPlayerDelegate.h
//  InnoPlayer_iOS_SDK
//
//  Created by Victor Toya on 03/09/20.
//  Copyright © 2020 MNC Innovation Center. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InnoError.h"

@protocol InnoPlayerDelegate

- (void)onInnoPlayerSuccess:(NSString *)message;
- (void)onInnoPlayerError:(InnoError *)error;

@end

