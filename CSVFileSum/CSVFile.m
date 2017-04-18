//
//  CSVFile.m
//  CSVFileSum
//
//  Created by Morgan Davison on 4/17/17.
//  Copyright © 2017 Morgan Davison. All rights reserved.
//

#import "CSVFile.h"

@implementation CSVFile

- (int)sumColumn {
    
    NSError *error;
    
    // Read the file
    NSString *fh = [NSString stringWithContentsOfFile: self.sourceFile encoding:NSUTF8StringEncoding error:&error];
    
    if (error) {
        NSLog(@"There was an error opening the source file: %@", [error localizedDescription]);
        return 1;
    }
    
    NSArray *lineArray = [fh componentsSeparatedByString:@"\n"];
    
    float columnSum = 0.0;
    unsigned lineCount = 0;
    
    for (NSString *line in lineArray) {
        NSArray *itemArray = [line componentsSeparatedByString:@","];
        
        if ([itemArray count] > self.column) { // Make sure we can get the index
            float itemAsNumber = [itemArray[self.column] floatValue];
            NSLog(@"Adding: %f", itemAsNumber);
            columnSum += itemAsNumber;
            lineCount++;
        }
    }
    
    NSLog(@"The column total is: %f", columnSum);
    NSLog(@"The total number of rows: %i", lineCount);
    
    // Success
    return 0;
}

@end
