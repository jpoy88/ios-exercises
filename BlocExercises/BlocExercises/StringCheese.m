//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *myCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return myCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSString *nameOnly = [cheeseName copy];
    NSRange noCheeseRange = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch];
    if (noCheeseRange.location != NSNotFound){
        nameOnly = [cheeseName stringByReplacingCharactersInRange:noCheeseRange withString:@""];
    }
    nameOnly = [nameOnly stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    
    return nameOnly;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *myCount;
    
    if (cheeseCount == 1) {
        myCount = [NSString stringWithFormat:@"%u cheese", (unsigned int)cheeseCount];
    } else {
        myCount = [NSString stringWithFormat:@"%u cheeses", (unsigned int)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return myCount;
}

@end
