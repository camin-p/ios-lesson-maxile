//
//  ViewController.m
//  MyApplication
//
//  Created by Maxile on 26/8/2561 BE.
//  Copyright © 2561 Maxile. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "AppDelegate.h"
static const char kBundleKey = 0;

@interface BundleEx : NSBundle

@end

@implementation BundleEx

- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
{
    NSBundle *bundle = objc_getAssociatedObject(self, &kBundleKey);
    if (bundle) {
        return [bundle localizedStringForKey:key value:value table:tableName];
    }
    else {
        return [super localizedStringForKey:key value:value table:tableName];
    }
}

@end

@interface ViewController ()
@property(nonatomic, strong)NSDictionary* teststrong;
@property(nonatomic, weak)NSDictionary* testweak;
@property(assign)long testlong;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [ViewController setLanguage:@"en"];
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    delegate.window.rootViewController = [storyboard instantiateInitialViewController];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)setLanguage:(NSString *)language
{
    NSString* _2language = [language substringWithRange:NSMakeRange(0, 2)];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object_setClass([NSBundle mainBundle], [BundleEx class]);
    });
    
    id value = language ? [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:_2language ofType:@"lproj"]] : nil;
    objc_setAssociatedObject([NSBundle mainBundle], &kBundleKey, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

