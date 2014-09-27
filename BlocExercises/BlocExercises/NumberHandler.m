//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSNumber *product = [NSNumber numberWithInteger:([number intValue] * 2)];
    
    
    return product;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    /** It starts with 5 and 8 only.
     Declare a mutable Array
     I have to fill in the blanks between by using loop
     
     Then storing it into an array (addObject method)
     Then returning the array**/
    
    NSMutableArray *container = [[NSMutableArray alloc] init];
    
    
    
    if (number < otherNumber){
        for (; number <= otherNumber; number++){
            [container addObject:[NSNumber numberWithInteger:number]];
        }
    }
    
    return container;
    
    
    
    
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSMutableArray *mutable = [arrayOfNumbers mutableCopy];
    
    NSSortDescriptor *sortArray = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    [mutable sortUsingDescriptors:@[sortArray]];
    
    return [mutable[0] longValue];
    
    
}

@end
