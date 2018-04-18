//
//  ViewController.m
//  NSPointerArray
//
//  Created by Viktoryia Barzdyka on 4/18/18.
//  Copyright © 2018 Barzdyka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create pointer array and add 10 objects inside.
    NSPointerArray *pointerArray = [NSPointerArray weakObjectsPointerArray];
    
    for (int i = 0; i<10; i++) {
        [pointerArray addPointer:[NSNumber numberWithInt:arc4random()%10]];
    }
    NSLog(@"Pointer array: %@", pointerArray);
    
    for (NSString *str in pointerArray) {
        NSLog(@"%@", str);
    }
    
    // Check arrays count
    NSLog(@"Pointer array count = %lu", [pointerArray count]);
    
    //Nil several objects added to the array and check count once again.
    [pointerArray replacePointerAtIndex:9 withPointer:nil];
    [pointerArray replacePointerAtIndex:3 withPointer:nil];
    [pointerArray replacePointerAtIndex:5 withPointer:nil];
    
    NSLog(@"Pointer array count = %lu", [pointerArray count]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
