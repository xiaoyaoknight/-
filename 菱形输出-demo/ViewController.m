//
//  ViewController.m
//  菱形输出-demo
//
//  Created by 王泽龙 on 2019/9/10.
//  Copyright © 2019 王泽龙. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test1:5];
}

/**
 菱形输出
 */
- (void)test1:(int)n {
    NSMutableString *string = [[NSMutableString alloc] init];
    [string appendString:@"\n"];
    for(int i = 1; i <= n + 1; i++ ) {
        for(int  j = 1; j <= n + 1 - i; j++ )
            [string appendString:@" "];
        for(int  j = 1; j <= 2 * i - 1; j++ )
            [string appendString:@"#"];
        [string appendString:@"\n"];
    }
    for(int  i = n; i > 0; i-- ) {
        for(int  j = n - i; j >= 0; j-- )
            [string appendString:@" "];
        for(int  j = 2 * i - 2; j >= 0; j-- )
            [string appendString:@"#"];
        [string appendString:@"\n"];
    }
    NSLog(@"%@", string);
}
@end
