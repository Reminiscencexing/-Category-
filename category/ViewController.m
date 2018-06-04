//
//  ViewController.m
//  category
//
//  Created by zengqiang xing on 2018/6/3.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+URL.h"
@interface ViewController ()

@property(nonatomic,strong) UIImageView *imageView;
@end

@implementation ViewController

-(UIImageView *)imageView
{
    if(_imageView==nil){
        _imageView=[[UIImageView alloc] init];
    
    }
    return _imageView;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.url1=@"Hello-World";
    
    NSLog(@"%@",self.imageView.url1);
}



@end
