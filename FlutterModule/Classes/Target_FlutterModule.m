//
//  Target_FlutterModule.m
//  FlutterModule
//
//  Created by kyleboy on 07/05/2019.
//  Copyright (c) 2019 kyleboy. All rights reserved.
//

#import "Target_FlutterModule.h"
#import "KYViewController.h"

@implementation Target_FlutterModule

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    KYViewController *viewController = [[KYViewController alloc] initWithContentText:contentText];
    return viewController;
}
    
@end
