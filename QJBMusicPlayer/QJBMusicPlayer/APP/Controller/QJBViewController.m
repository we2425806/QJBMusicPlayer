//
//  QJBViewController.m
//  QJBMusicPlayer
//
//  Created by macbookpro on 16/12/24.
//  Copyright © 2016年 macbookpro. All rights reserved.
//

#import "QJBViewController.h"
#import "QJBMusic.h"

@interface QJBViewController ()

@property(nonatomic,strong)NSArray<QJBMusic *>*musicArray;

@end

@implementation QJBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self loadSource];
}
- (IBAction)behideClick:(id)sender {
}

- (IBAction)playClick:(id)sender {
    
    
}
- (IBAction)nextClick:(id)sender {
}


- (void)loadSource {
    NSMutableArray *modelArrM = [NSMutableArray array];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Music.plist" withExtension:nil];
    NSArray *itemArr = [NSArray arrayWithContentsOfURL:url];
    NSError *error;
    for (NSDictionary *dic in itemArr) {
        
        QJBMusic *music = [[QJBMusic alloc] initWithDictionary:dic error:&error];
        if (error) {
            NSLog(@"%@",error);
        }
        [modelArrM addObject:music];
    }
    _musicArray = modelArrM;
}

@end
