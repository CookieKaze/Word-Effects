//
//  main.m
//  Word Effects
//
//  Created by Erin Luu on 2016-10-31.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Please give me a string to work with: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);

// print as a c string
//printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
// print NSString object
//NSLog(@"Input was: %@", inputString);
        
        NSString * options = @"\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n";
        NSLog(@"\nWhat would you like me to do with your string? Please type in one of these numbers:\n %@", options);
       
        //Get option
        char option;
        option = getchar( );
        NSString *objectOption = [NSString stringWithUTF8String:&option];
        int convertedOption= [objectOption intValue];
        
        
      
        
        if (convertedOption == 1){
            NSString *upper = [inputString uppercaseString];
            NSLog(@"\nYour new string is: %@", upper);
        } else if (convertedOption == 2) {
            NSString *lower = [inputString lowercaseString];
            NSLog(@"\nYour new string is: %@", lower);
        } else if (convertedOption == 3) {
            int a = [inputString intValue];
            if (a == 0){
                NSLog(@"\nYou did not enter a number");
            } else {
                NSLog(@"\nYour new string is: %d", a);
            }
        } else if (convertedOption == 4) {
            NSString * noReturn = [inputString substringToIndex:[inputString length] - 1];
            NSString *newString = [NSString stringWithFormat: @"%@, eh?", noReturn];
            NSLog(@"\nYour new string is: %@", newString);
        }
//        return 0;
    }
}
