//
//  LabelCell.h
//  table-with-input
//
//  Created by David Wagner on 05/11/2015.
//  Copyright © 2015 David Wagner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelCell : UITableViewCell

@property (nonatomic, copy) NSString *text;

+ (NSString *)reuseIdentifier;

@end
