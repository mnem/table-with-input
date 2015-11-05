//
//  LabelCell.m
//  table-with-input
//
//  Created by David Wagner on 05/11/2015.
//  Copyright © 2015 David Wagner. All rights reserved.
//

#import "LabelCell.h"

@interface LabelCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation LabelCell

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (NSString *)text {
    return _label.text;
}

- (void)setText:(NSString *)text {
    _label.text = text;
}

@end
