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
    
    
    //I am trying to access each arrayindex --> for loop
    //Onced accessed, I will call the method to take it out --> mutableCharacter[0][@"favorite drink"]
    
    
    NSMutableArray *mutableCharacters = [charactersArray mutableCopy];
    NSValue *result;
    
    NSMutableArray *resultDrink = [[NSMutableArray alloc] init]; // <-- empty array so we can place the drinks in
    
    for (NSInteger idx = 0; idx <= (mutableCharacters.count - 1); idx++){
         result = mutableCharacters[idx][@"favorite drink"]; // <-- tappingintothedictionary[index in array][dictionary key]
        [resultDrink addObject:result]; // <-- adding the key to the empty array created earlier.
    }
    
    return resultDrink;
    
    
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *addingQuote = [NSMutableDictionary dictionaryWithDictionary:characterDictionary];
    
    [addingQuote setObject:@"I like pickles" forKey:@"quote"];
    
    return addingQuote;
}

@end
