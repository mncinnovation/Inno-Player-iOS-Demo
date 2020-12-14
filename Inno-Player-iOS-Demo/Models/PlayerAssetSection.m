//
//  PlayerAssetSection.m
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import "PlayerAssetSection.h"

#define STRING_BASIC_STREAMING @"Basic Streaming"
#define STRING_LIVE_STREAMING @"Live Streaming"
#define STRING_AUDIO @"Audio"
#define STRING_ADVERTISING @"Advertising"

@implementation PlayerAssetSection
@synthesize title;
@synthesize assets;

- (instancetype)initWithTitle:(NSString *)title assets:(NSArray<PlayerAsset *> *)assets {
    self = [super init];
    if (self) {
        [self setTitle:title];
        [self setAssets:assets];
    }
    return self;
}

+ (NSArray<PlayerAssetSection *> *)fetchDefaultData {
    PlayerAssetSection * basic = [[PlayerAssetSection alloc]
                                  initWithTitle:STRING_BASIC_STREAMING
                                  assets:[NSArray arrayWithObjects:
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/videos/la_chute_d_une_plume/index.m3u8" title:@"HLS"],
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/videos/cosmos-laundromat/cosmos_laundromat_h264_master.m3u8" title:@"HLS (CMAF)"]
                                          , nil]
                                  ];
    
    PlayerAssetSection * live = [[PlayerAssetSection alloc]
                                 initWithTitle:STRING_LIVE_STREAMING
                                 assets:[NSArray arrayWithObjects:
                                         [[PlayerAsset alloc] initWithURL:@"https://tv.balkanweb.com/news24/livestream/playlist.m3u8" title:@"HLS"]
                                         , nil]
                                 ];
    
    PlayerAssetSection * audio = [[PlayerAssetSection alloc]
                                  initWithTitle:STRING_AUDIO
                                  assets:[NSArray arrayWithObjects:
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/audios/ES_Cocoona.mp3" title:@"MP3"],
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/audios/ES_Cocoona.aac" title:@"AAC"],
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/audios/ES_Cocoona.ogg" title:@"OGG Vorbis"],
                                          [[PlayerAsset alloc] initWithURL:@"https://innoplayer.co/cdn/audios/ES_Cocoona.opus" title:@"Opus"]
                                          , nil]
                                  ];
    
    PlayerAssetSection * advertising = [[PlayerAssetSection alloc]
                                  initWithTitle:STRING_AUDIO
                                  assets:[NSArray arrayWithObjects:
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?iu=/21705426382/1.0&description_url=http%3A%2F%2Finnovationcenter.id&tfcd=0&npa=0&sz=400x300%7C640x480&gdfp_req=1&output=vast&unviewed_position_start=1&env=vp&impl=s&correlator=" title:@"Linear preroll ad"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?sz=480x70&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dnonlinear&correlator=" title:@"Non-linear ad"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dskippablelinear&correlator=" title:@"Scheduled linear preroll"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?sz=480x70&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dnonlinear&correlator=" title:@"Scheduled non-linear midroll"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?iu=/21705426382/1.0&description_url=http%3A%2F%2Finnovationcenter.id&tfcd=0&npa=0&sz=400x300%7C640x480&gdfp_req=1&output=vast&unviewed_position_start=1&env=vp&impl=s&correlator=" title:@"Scheduled linear postroll"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostpodbumper&cmsid=496&vid=short_onecue&correlator=" title:@"VMAP linear preroll, non-linear midroll, linear postroll"],
                                          [[PlayerAsset alloc] initWithURL:@"https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dlinearvpaid2js&correlator=" title:@"VPAID"]
                                          , nil]
                                  ];
    
    return [[NSArray alloc] initWithObjects: basic, live, audio, advertising, nil];
}
@end
