//
//  InnoError.h
//  InnoPlayer_iOS_SDK
//
//  Created by Victor Toya on 10/12/20.
//  Copyright © 2020 MNC Innovation Center. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InnoError : NSObject

@property(nonatomic) int code;

@property(nonatomic) int category;

@property(nonatomic, nullable, strong) NSString *details;

- (id _Nullable )initWithCode:(int)code andCategory:(int)category andDetails:(NSString *_Nullable)message;

@end
