//
//  ViewController.m
//  table-with-input
//
//  Created by David Wagner on 05/11/2015.
//  Copyright © 2015 David Wagner. All rights reserved.
//

#import "ViewController.h"
#import "LabelCell.h"
#import "LongInputCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 44;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

// - (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
// }

// - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
// }

#pragma mark Header

// - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
// 	// custom view for header. will be adjusted to default or specified header height
// }

// - (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section {
// }

// - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
// }

#pragma mark Footer

// - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
// 	// custom view for footer. will be adjusted to default or specified footer height
// }

// - (CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section {
// }

// - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
// }

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            LabelCell *cell = [tableView dequeueReusableCellWithIdentifier:[LabelCell reuseIdentifier] forIndexPath:indexPath];
            cell.text = @"Flibble";
            return cell;
        }
        case 1: {
            LabelCell *cell = [tableView dequeueReusableCellWithIdentifier:[LabelCell reuseIdentifier] forIndexPath:indexPath];
            cell.text = @"Bob";
            return cell;
        }
        default: {
            LongInputCell *cell = [tableView dequeueReusableCellWithIdentifier:[LongInputCell reuseIdentifier] forIndexPath:indexPath];
            cell.text = @"Lorum ipsum flib";
            cell.tableView = tableView;
            return cell;
        }
    }
}

// Default is 1 if not implemented
// - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
// }

// - (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
// }

// - (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
// }


@end
