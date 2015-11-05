//
//  LongInputCell.m
//  table-with-input
//
//  Created by David Wagner on 05/11/2015.
//  Copyright © 2015 David Wagner. All rights reserved.
//

#import "LongInputCell.h"

@interface LongInputCell () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation LongInputCell

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _textView.scrollEnabled = NO;
    _textView.delegate = self;
}

- (NSString *)text {
    return _textView.text;
}

- (void)setText:(NSString *)text {
    _textView.text = text;
    [self textViewDidChange:_textView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if (selected) {
        [_textView becomeFirstResponder];
    } else {
        [_textView resignFirstResponder];
    }
}

#pragma mark - UITextViewDelegate

- (void)textViewDidChange:(UITextView *)textView {
    CGSize size = _textView.bounds.size;
    CGSize newSize = [_textView sizeThatFits:CGSizeMake(size.width, CGFLOAT_MAX)];
    
    if (newSize.height != size.height) {
        [UIView setAnimationsEnabled:NO];
        [_tableView beginUpdates];
        [_tableView endUpdates];
        [UIView setAnimationsEnabled:YES];
        
        CGPoint position = self.frame.origin;
        CGRect cursor = [textView caretRectForPosition:textView.selectedTextRange.end];
        CGRect scroll = CGRectMake(position.x + cursor.origin.x, position.y + cursor.origin.y,
                                   cursor.size.width, cursor.size.height);
        [_tableView scrollRectToVisible:scroll animated:NO];
    }
}

@end
