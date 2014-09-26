//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   
    //NSString *result = @"";
    
    //if (number < otherNumber){
    //    for (; number <= otherNumber; number++)
    //        result = [NSString stringWithFormat:@"%@%ld",result, number];
    //}
    
    //else if (number > otherNumber){
    //    while (otherNumber <= number){
    //        result = [NSString stringWithFormat:@"%@%ld",result, otherNumber];
    //        otherNumber++;}
    //}
                      
                      
    //else if (number == otherNumber){
    //    result = [NSString stringWithFormat:@"%ld", number];
    //}
             
    NSString *result = @"";
    NSInteger start = MIN(number, otherNumber);
    NSInteger end = MAX(number, otherNumber);
    
    for (NSInteger idx = start; idx <= end; idx++) {
        
        result = [NSString stringWithFormat:@"%@%ld", result, (long)idx];
        NSLog(@"%@%ld", result, (long)idx);
    }
    
    
    
    return result;
}

@end
