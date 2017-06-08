//
//  ViewController.m
//  NSNumber
//
//  Created by Pratik kukadiya on 6/8/17.
//  Copyright © 2017 Pratik kukadiya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //----------------------------------Set Value--------------------------------//
    
    // numberWithBool....
    
    NSNumber *numberBool=[NSNumber numberWithBool:YES];
    NSLog(@"%@",numberBool);

    
    // numberWithChar....
    NSNumber *numberChar=[NSNumber numberWithChar:'p'];
    NSLog(@"%@",numberChar);
    
    
    //numberWithDouble
    
    NSNumber *numberDouble=[NSNumber numberWithDouble:20.0];
    NSLog(@"%@",numberDouble);
    
    //numberWithFloat:
    
    NSNumber *numberFloat =[NSNumber numberWithFloat:11.03];
    NSLog(@"%@",numberFloat);
    
    //numberWithInt
    
    NSNumber *numberInt=[NSNumber numberWithInt:10];
    NSLog(@"%@",numberInt);
    
    //numberWithInteger
    
    NSNumber *numberInteger=[NSNumber numberWithInteger:10];
    NSLog(@"%@",numberInteger);
    
    
    //numberWithLong
    
    NSNumber *numberLong=[NSNumber numberWithLong:20];
    NSLog(@"%@",numberLong);
    
    
    //----------------------------------Initializing --------------------------------//
    
    NSNumber *number=[[NSNumber alloc]initWithLongLong:10];
    NSLog(@"%@",number);
    
    //----------------------------------Get Value --------------------------------//
    
    NSNumber *numberGet=[NSNumber numberWithBool:YES];
    NSLog(@"%d",[numberGet boolValue]);
    
    
    NSNumber *numberGetChar=[NSNumber numberWithChar:'p'];
    NSLog(@"%c",[numberGetChar charValue]);
    
    
    //---------------------------------- Compare --------------------------------//
    
    NSNumber *comf=[NSNumber numberWithInteger:12];
    NSNumber *comS=[NSNumber numberWithDouble:12.3];
    
    NSComparisonResult Result=[comS compare:comf];
    NSLog(@"%ld",(long)Result);
    
    
    //---------------------------------- EqualTo --------------------------------//
    
    NSNumber *Equf=[NSNumber numberWithInteger:12];
    NSNumber *EquS=[NSNumber numberWithDouble:12];
    
    NSComparisonResult CheckEqual=[Equf isEqual:EquS];
    NSLog(@"%ld",(long)CheckEqual);
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
