//
//  customTableViewCell.m
//  MyApplication
//
//  Created by Maxile on 27/8/2561 BE.
//  Copyright © 2561 Maxile. All rights reserved.
//

#import "customTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation customTableViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}
- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
}
-(void)layoutSubviews{
    self.container.clipsToBounds = NO;
    self.container.layer.masksToBounds = NO;
    self.container.layer.cornerRadius = 1;
    self.container.layer.shadowOffset = CGSizeMake(-.2f, .2f);
    self.container.layer.shadowRadius = 1;
    self.container.layer.shadowOpacity = 0.2;
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.container.bounds];
    self.container.layer.shadowPath = path.CGPath;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
