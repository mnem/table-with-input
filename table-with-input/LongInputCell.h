//
//  LongInputCell.h
//  table-with-input
//
//  Created by David Wagner on 05/11/2015.
//  Copyright © 2015 David Wagner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LongInputCell : UITableViewCell

@property (nonatomic, copy) NSString *text;
@property (nonatomic, weak) UITableView *tableView;

+ (NSString *)reuseIdentifier;

@end
