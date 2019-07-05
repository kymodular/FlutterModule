//
//  KYViewController.m
//  FlutterModule
//
//  Created by kyleboy on 07/05/2019.
//  Copyright (c) 2019 kyleboy. All rights reserved.
//

#import "KYViewController.h"

@interface KYViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation KYViewController

#pragma mark - life cycle
- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    self.contentLabel.center = self.view.center;
}

#pragma mark - getters and setters
- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
