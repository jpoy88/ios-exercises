//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"


@interface StuffRememberer() {
    
    NSMutableArray *array;
}

@property (nonatomic, strong) NSMutableArray *cache;
@property (nonatomic, copy) NSMutableArray *laterCopy;
@property (nonatomic, assign) CGFloat thisNumber;

@end

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {

    self.cache = arrayToRemember;
//    array = [arrayToRemember mutableCopy];
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.laterCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.thisNumber = floatToRemember;
    
}

- (NSMutableArray *) arrayYouShouldRemember {
    
//    StuffRememberer *newStuff = [StuffRememberer new];
//    NSMutableArray *mu = [self arrayYouShouldRemember];
//    [mu addObject:newStuff];
//    
    
    return self.cache;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.laterCopy;
}

- (CGFloat) floatYouShouldRemember {
    
    //StuffRememberer *floatThis = [StuffRememberer new];
    
    return self.thisNumber;
}

@end