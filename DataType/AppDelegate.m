//
//  AppDelegate.m
//  DataType
//
//  Created by Admin on 28/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "AppDelegate.h"
#import "Structs.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Structs *structs = [[Structs alloc]init];
    CGPoint point1 = [structs addPointRandom];

    CGPoint point2 = [structs addPointRandom];
    CGPoint point3 = [structs addPointRandom];
    CGPoint point4 = [structs addPointRandom];
    CGPoint point5 = [structs addPointRandom];
    CGPoint point6 = [structs addPointRandom];
    
    NSValue *value1 = [NSValue valueWithCGPoint: point1];
    NSValue *value2 = [NSValue valueWithCGPoint: point2];
    NSValue *value3 = [NSValue valueWithCGPoint: point3];
    NSValue *value4 = [NSValue valueWithCGPoint: point4];
    NSValue *value5 = [NSValue valueWithCGPoint: point5];
    NSValue *value6 = [NSValue valueWithCGPoint: point6];

#pragma mark version 1
    NSArray *arrayPoint = [NSArray arrayWithObjects:value1, value2, value3, value4, value5, value6, nil];
    

    NSLog(@"version 1");
    for (NSInteger iCount = 0; iCount < arrayPoint.count; iCount++)
    {
        
        NSValue *valueTemp = [arrayPoint objectAtIndex: iCount];
        CGPoint pointTemp = [valueTemp CGPointValue];
        if ((pointTemp.x > 3 & pointTemp.x < 7) & (pointTemp.y > 3 & pointTemp.y < 7))
        {
            NSLog(@"point = %@ greatShot",NSStringFromCGPoint(pointTemp));
        }
        else
        {
            NSLog(@"point = %@", NSStringFromCGPoint(pointTemp));
        }
        
    }
    
#pragma mark version 2

    CGRect centerRect= CGRectMake(3, 3, 3, 3);
    
    BOOL niceShot = NO;
    NSLog(@"version 2");
    for (NSInteger jCount = 0; jCount < arrayPoint.count; jCount++)
    {
        
        NSValue *valueTemp2 = [arrayPoint objectAtIndex: jCount];
        CGPoint pointTemp2 = [valueTemp2 CGPointValue];
        niceShot = CGRectContainsPoint(centerRect, pointTemp2);
        if ((niceShot))
        {
           NSLog(@"point = %@ niceShot",NSStringFromCGPoint(pointTemp2));
        }
        else
        {
           NSLog(@"point = %@", NSStringFromCGPoint(pointTemp2));
        }
    }
    
    
    
    
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
