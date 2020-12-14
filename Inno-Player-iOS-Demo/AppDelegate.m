//
//  AppDelegate.m
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import "AppDelegate.h"
#import <InnoPlayer_iOS_SDK/InnoPlayer_iOS_SDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [InnoPlayerController setPlayerKey:@"a9fab9c18811d015e888bafef8fc3192f71153ea32361b9fabddbd61366ce162"];
    return YES;
}


@end
