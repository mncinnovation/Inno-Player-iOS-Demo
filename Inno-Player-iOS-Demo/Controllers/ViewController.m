//
//  ViewController.m
//  Inno-Player-iOS-Demo
//
//  Created by Andi Septiadi on 14/12/20.
//

#import "ViewController.h"
#import "DetailViewController.h"

#define CELL_ID @"Cell"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSArray <PlayerAssetSection *> * array;
}
@property (strong, nonatomic) UITableView * tableView;
@end

@implementation ViewController

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [UITableView new];
        [_tableView setDataSource:self];
        [_tableView setDelegate:self];
        [_tableView setRowHeight:40.0f];
        [_tableView setTableFooterView:[UIView new]];
        [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:CELL_ID];
        [_tableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    array = [PlayerAssetSection fetchDefaultData];
    
    [self.view addSubview:self.tableView];
    [[[self.tableView leadingAnchor] constraintEqualToAnchor:self.view.leadingAnchor constant:0.0f] setActive:YES];
    [[[self.tableView trailingAnchor] constraintEqualToAnchor:self.view.trailingAnchor constant:0.0f] setActive:YES];
    [[[self.tableView topAnchor] constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0.0f] setActive:YES];
    [[[self.tableView bottomAnchor] constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0.0f] setActive:YES];
}

// MARK: - UITableViewDataSource, UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [[array objectAtIndex:section] title];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[array objectAtIndex:section] assets] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    PlayerAsset * asset = [[[array objectAtIndex:indexPath.section] assets] objectAtIndex:indexPath.row];
    [[cell textLabel] setText:[NSString stringWithFormat:@"%@", asset.title]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PlayerAsset * asset = [[array objectAtIndex:indexPath.section].assets objectAtIndex:indexPath.row];
    
    if (asset.url.length == 0) {
        DetailViewController * detailViewController = [[DetailViewController alloc] init];
        [self.navigationController pushViewController:detailViewController animated:YES];
    } else {
        DetailViewController * detailViewController = [[DetailViewController alloc] initWithAsset:[[[array objectAtIndex:indexPath.section] assets] objectAtIndex:indexPath.row]];
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
}

@end
