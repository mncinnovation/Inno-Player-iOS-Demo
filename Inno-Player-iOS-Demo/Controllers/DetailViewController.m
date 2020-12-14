//
//  DetailViewController.m
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import "DetailViewController.h"
#import <InnoPlayer_iOS_SDK/InnoPlayer_iOS_SDK.h>

@interface DetailViewController ()
@property (strong, nonatomic, nullable, readwrite) PlayerAsset * asset;
@property (strong, nonatomic) UIView * playerView;
@property (strong, nonatomic, nonnull) InnoPlayerController * playerViewController;
@end

@implementation DetailViewController

- (UIView *)playerView {
    if (!_playerView) {
        _playerView = [UIView new];
        [_playerView setBackgroundColor:[UIColor blackColor]];
        [_playerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _playerView;
}

- (instancetype)initWithAsset:(PlayerAsset *)asset {
    self = [super init];
    if (self) {
        [self setAsset:asset];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.playerView];

    [[[self.playerView leadingAnchor] constraintEqualToAnchor:self.view.leadingAnchor constant:0.0f] setActive:YES];
    [[[self.playerView trailingAnchor] constraintEqualToAnchor:self.view.trailingAnchor constant:0.0f] setActive:YES];
    [[[self.playerView topAnchor] constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0.0f] setActive:YES];
    [[[self.playerView heightAnchor] constraintEqualToConstant:200.0f] setActive:YES];
    
    [self setupPlayer];
}

- (void)setupPlayer {
    if (self.asset == nil) { return; }
    
    InnoConfig * config = [[InnoConfig alloc] initWithContentURL:self.asset.url];
    
    CGRect frame = CGRectMake(0.0f, 0.0f, self.playerView.frame.size.width, self.playerView.frame.size.height);
    
    [self setPlayerViewController:[[InnoPlayerController alloc] initWithFrame:frame andConfig:config]];
    [self.playerViewController.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.playerView addSubview:self.playerViewController.view];
    
    [[[self.playerViewController.view leadingAnchor] constraintEqualToAnchor:self.playerView.leadingAnchor constant:0.0f] setActive:YES];
    [[[self.playerViewController.view trailingAnchor] constraintEqualToAnchor:self.playerView.trailingAnchor constant:0.0f] setActive:YES];
    [[[self.playerViewController.view topAnchor] constraintEqualToAnchor:self.playerView.topAnchor constant:0.0f] setActive:YES];
    [[[self.playerViewController.view bottomAnchor] constraintEqualToAnchor:self.playerView.bottomAnchor constant:0.0f] setActive:YES];
}

@end
