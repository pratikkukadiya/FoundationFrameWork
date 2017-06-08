//
//  ViewController.m
//  NSArray
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
    
    //-------------------------------Static Array -------------------------------//
    
    NSArray *arrStatic=@[@"pratik",@"ankit",@"Nukunj",@"GOvind"];
    NSString *stringFirest=arrStatic[0]; //[arrStatic objectAtIndex:0];
    NSLog(@"%@",stringFirest);
    
    //-------------------------------Static Empty Array -------------------------------//
    
    NSArray *arrEmpty=[NSArray array]; // [NSArray alloc];
    NSLog(@"%@",arrEmpty);
    
    
    //---------------------static array with one object ----------------------------//
    
    NSArray *arrOneObj=[NSArray arrayWithObject:@"Pratik"];
    NSLog(@"%@",arrOneObj);
    
    
    //---------------------static array with more object ----------------------------//
    
    NSArray *arrMoreObj=[NSArray arrayWithObjects:@"Pratik",@"Nikunj",@"GOvind", nil];
    NSLog(@"%@",arrMoreObj);
    
    
    //------------------------ array with array ----------------------------//
    
    NSArray *arrTemp=@[@"Pratik",@"Janish"];
    NSArray *arrWithArray=[NSArray arrayWithArray:arrTemp];
    NSLog(@"%@",arrWithArray);
    
    //------------------------ arrayWithContentsOfFile ----------------------------//
    
    NSString *file=[[NSBundle mainBundle]pathForResource:@"Info" ofType:@"plist"];
    NSArray *arrFile=[NSArray arrayWithContentsOfFile:file];
    NSLog(@"%@",arrFile);
    
    
    //------------------------ arrayWithContentsOfFile ----------------------------//
    
    NSURL *url = [NSURL URLWithString:@"http://ios.eezytutorials.com/sample-files/sample-array-plist.plist"];
    NSArray *arrUrl=[NSArray arrayWithContentsOfURL:url];
    NSLog(@"%@",arrUrl);
    

    //------------------------ arrayWithObjects:count----------------------------//
    
    NSString *values[3];
    values[0]=@"Pratik";
    values[1]=@"Pk";
    values[2]=@"Pk";
    
    NSArray *arrWithCount=[[NSArray alloc]initWithObjects:values count:2];
    NSLog(@"%@",arrWithCount);
    
   
    //------------------------  containsObject----------------------------//
    
    NSArray *Names =@[@"Pratik",@"Nukunj",@"Ankit",@"Govind"];
    
    BOOL IsContain=[Names containsObject:@"Pratik"];
    NSLog(@"%d",IsContain);
    
    //------------------------  Count Arrary----------------------------//
    
    NSLog(@"%lu",(unsigned long)[Names lastObject]);
    
    
    //------------------------ FIrst Object----------------------------//
    
    NSLog(@"%lu",(unsigned long)[Names firstObject]);
    
    //------------------------ Last Object----------------------------//
    
    NSLog(@"%lu",(unsigned long)[Names lastObject]);
    
    
     //------------------------  ObjectAtIndex----------------------------//
    
    NSLog(@"%lu",(unsigned long)[Names objectAtIndex:0]);
    
    
    //------------------------  objectAtIndexedSubscript----------------------------//
    
    NSArray *array = [NSArray arrayWithObjects:@"Eezy",@"Tutorials", @"Website", nil];
    NSLog(@"Object at Indexed Subscript 2: %@", [array objectAtIndexedSubscript:2]);
 //   NSLog(@"Object at Indexed Subscript 3: %@", [array objectAtIndexedSubscript:3]);
    

    //------------------------ getObjects:range:----------------------------//
    
    id *getArray;
    NSRange Range=NSMakeRange(1, 2);
    [Names getObjects:getArray range:Range];
    NSLog(@"%@",getArray);
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
