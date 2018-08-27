//
//  ViewController.m
//  MyApplication
//
//  Created by Maxile on 26/8/2561 BE.
//  Copyright © 2561 Maxile. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "customTableViewCell.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *mainBtn;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_mainBtn layer].cornerRadius=10;
    [_mainBtn setClipsToBounds:NO];
    [[_mainBtn layer] setShadowColor:[UIColor blackColor].CGColor];
    [[_mainBtn layer] setShadowOpacity:0.24];
    [[_mainBtn layer]setShadowRadius:2];
    [[_mainBtn layer] setShadowOffset:CGSizeMake(0, 2)];
    
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView setBackgroundColor:[UIColor clearColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 124;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    customTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"tableCell" forIndexPath:indexPath];
    if (!cell) {
        cell = [[customTableViewCell alloc] init];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
    }
    
    cell.titleLbl.text = @"test";
    return cell;
}


@end
