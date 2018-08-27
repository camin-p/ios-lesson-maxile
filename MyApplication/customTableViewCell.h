//
//  customTableViewCell.h
//  MyApplication
//
//  Created by Maxile on 27/8/2561 BE.
//  Copyright © 2561 Maxile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;

@property (weak, nonatomic) IBOutlet UIView *container;
@end
