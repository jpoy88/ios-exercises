//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
   
    NSString *characters = [characterString copy];
    NSArray *containCharacters = [characters componentsSeparatedByString:@";"];
    
    
    return containCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *allCharacters = [characterArray componentsJoinedByString:@";"];
    
    return allCharacters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sortCharacters =[[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSMutableArray *allCharacters = [characterArray mutableCopy];
    
    [allCharacters sortUsingDescriptors:@[sortCharacters]];
    
    return allCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSPredicate *findingWorf;
    
    if (findingWorf == [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"]){
    return findingWorf;
    }
    else{
        return @"Worf was falsely detected";}
    
}

@end
