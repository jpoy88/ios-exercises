//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    //access array by index --> charactersArray[0] --> charactersArray[idx]
    //access dictionary value using key--> charactersArray[@"favorite drink"]
    
    //add Objects in Array --> [todoList addObject:@"Solve hunger"];
    
    //for (NSInteger idx = 1; idx <= charactersArray.count; idx++){
    //    NSMutableArray *result = [charactersArray addObject:charactersArray[@"favorite drink"]];
    
    //return [charactersArray objectsAtIndexes:charactersArray.count];
    /**
    NSPredicate *myDrink = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'favorite drink'"];
    
    if ([charactersArray filteredArrayUsingPredicate:myDrink]){
        NSMutableArray *result = [StarTrekDictionaries@["favorite drink"]];
    }
    
    return result;**/
    
    return nil;
    
    
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *addingQuote = [NSMutableDictionary dictionaryWithDictionary:characterDictionary];
    
    [addingQuote setObject:@"I like pickles" forKey:@"quote"];
    
    return addingQuote;
}

@end
