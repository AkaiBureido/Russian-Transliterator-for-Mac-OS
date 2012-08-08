//
//  main.m
//  Russian Transliterator
//
//  Created by Oleg Utkin on 8/7/12.
//  Copyright (c) 2012 akaiBureido. All rights reserved.
//

#import <Foundation/Foundation.h>

void print( NSDictionary *map ) {
    NSEnumerator *enumerator = [map keyEnumerator];
    id key;
    
    while ( key = [enumerator nextObject] ) {
        NSLog( @"%@ => %@\n", [key description], [[map objectForKey: key] description]);
    }
}

NSDictionary *fillDictionary() {
    NSMutableDictionary *translitDictionary = [[NSMutableDictionary alloc] init];
    
    // TODO: Read entries in from a plist file
    
    //**************************
    // Dummy code
    //**************************
    
    [translitDictionary setObject: @"а" forKey: @"a"];
    [translitDictionary setObject: @"б" forKey: @"b"];
    [translitDictionary setObject: @"в" forKey: @"v"];
    [translitDictionary setObject: @"г" forKey: @"g"];
    [translitDictionary setObject: @"д" forKey: @"d"];
    [translitDictionary setObject:
       [[NSArray alloc] initWithObjects:@"е", @"э", nil]  forKey: @"e"];
    [translitDictionary setObject: @"ё" forKey: @"io"];
    [translitDictionary setObject: @"ж" forKey: @"zsh"];
    [translitDictionary setObject: @"з" forKey: @"z"];
    [translitDictionary setObject: @"и" forKey: @"i"];
    [translitDictionary setObject: @"й" forKey: @"j"];
    [translitDictionary setObject: @"к" forKey: @"k"];
    [translitDictionary setObject: @"л" forKey: @"l"];
    [translitDictionary setObject: @"м" forKey: @"m"];
    [translitDictionary setObject: @"н" forKey: @"n"];
    [translitDictionary setObject: @"о" forKey: @"o"];
    [translitDictionary setObject: @"п" forKey: @"p"];
    [translitDictionary setObject: @"р" forKey: @"r"];
    [translitDictionary setObject: @"с" forKey: @"s"];
    [translitDictionary setObject: @"т" forKey: @"t"];
    [translitDictionary setObject: @"у" forKey: @"u"];
    [translitDictionary setObject: @"ф" forKey: @"f"];
    [translitDictionary setObject: @"х" forKey: @"h"];
    [translitDictionary setObject: @"ц" forKey: @"ts"];
    [translitDictionary setObject: @"ч" forKey: @"tch"];
    [translitDictionary setObject: @"ш" forKey: @"sh"];
    [translitDictionary setObject: @"щ" forKey: @"sch"];
    [translitDictionary setObject:
       [[NSArray alloc] initWithObjects:@"ь", @"ъ", nil] forKey: @"'"];
    [translitDictionary setObject: @"ы" forKey: @"y"];
    [translitDictionary setObject: @"ю" forKey: @"iu"];
    [translitDictionary setObject: @"я" forKey: @"ia"];
    
    //**************************
    
    return [NSDictionary dictionaryWithDictionary:translitDictionary];
}


int main(int argc, const char * argv[])
{
    // Testing setup
    // =============
    
    @autoreleasepool {
        
        printf("Please type in text in translit: ");
        
        // Buffer to hold what user will hold what user will type
        char buffer[100] = {0};
        scanf("%s", buffer);
        
        // Converting char* to more objective-c friendly NSString
        NSString *input = [[NSString alloc] initWithUTF8String:buffer];
        NSMutableString *result = [[NSMutableString alloc] init];
        
        NSLog(@"You typed: %@", input);
        
        // Filling dictionary with a dummy function
        NSDictionary *dict = [NSDictionary dictionaryWithDictionary: fillDictionary()];
        
        
        for ( int i = 0; i < [input length]; i++ ) {
            
            // TODO: come up with a way to forge the query
            
            //**************************
            // Dummy code
            //**************************
            
            NSString *query = [NSString stringWithFormat:@"%c",[input characterAtIndex:i]];
            
            //**************************
            
            // Searching the substitution dictionary
            id substitute = [dict objectForKey:query];
            
            
            // TODO: come up with a way to find the right substitution if multiple are present
            // I probably need a word dictionary for this.
            
            //**************************
            // Dummy code
            //**************************
            
            if ([substitute isKindOfClass:[NSArray class]]) {
                substitute = [substitute objectAtIndex:0];
            }
            
            //**************************
            
            [result appendFormat:@"%@", substitute];
        }
        
        NSLog(@"You get: %@", result);
    }
    return 0;
}