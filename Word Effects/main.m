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
        while (true) {
            char inputChars[255];
            // Get the string
            NSLog(@"Please give me a string to work with: ");
            fgets(inputChars, 255, stdin);
            if(inputChars[0] == '\n'){
                fgets(inputChars, 255, stdin);
            }
            inputChars[strcspn(inputChars, "\n")] = 0;
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // Get the option
            NSLog(@"What would you like me to do with your string?");
            NSLog(@"1. Uppercase");
            NSLog(@"2. Lowercase");
            NSLog(@"3. Numberize");
            NSLog(@"4. Canadianize");
            NSLog(@"5. Respond");
            NSLog(@"6. De-Space-It");
            int option;
            scanf("%d", &option);
            
            
            // Print the result
            if (option == 1){
                NSString *upper = [inputString uppercaseString];
                NSLog(@"\nYour new string is: %@", upper);
            } else if (option == 2) {
                NSString *lower = [inputString lowercaseString];
                NSLog(@"\nYour new string is: %@", lower);
            } else if (option == 3) {
                int a = [inputString intValue];
                if (a == 0){
                    NSLog(@"\nYou did not enter a number");
                } else {
                    NSLog(@"\nYour number is: %d", a);
                }
            } else if (option == 4) {
                NSString *newString = [NSString stringWithFormat: @"%@, eh?", inputString];
                NSLog(@"\nYour new string is: %@", newString);
            } else if (option == 5) {
                NSString *end=[inputString substringFromIndex:MAX((int)[inputString length]-1, 0)];
                if ([end  isEqual: @"?"]) {
                    NSLog(@"I don't know.");
                } else if ([end  isEqual: @"!"]) {
                    NSLog(@"Whoa, calm down!");
                }
            } else if (option == 6) {
                NSString *newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"\nYour new string is: %@", newString);
            }
        }
        return 0;
    }
}
