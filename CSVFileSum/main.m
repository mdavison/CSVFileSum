//
//  main.m
//  CSVFileSum
//
//  Created by Morgan Davison on 4/17/17.
//  Copyright © 2017 Morgan Davison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSVFile.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of CSVFSFile
        CSVFile *csvFile = [[CSVFile alloc] init];
        
        // File to read from
        char filepathInput[1000];
        printf("Enter the file path: ");
        scanf("%s", filepathInput);
        csvFile.sourceFile = [NSString stringWithUTF8String:filepathInput];
        
        // Column to add
        int columnNumber = 0;
        printf("Enter column number to sum (0 based): ");
        scanf("%i", &columnNumber);
        csvFile.column = columnNumber;
        
        return [csvFile sumColumn];
    }
    
    return 0;
}
