//
//  CSVFile.h
//  CSVFileSum
//
//  Created by Morgan Davison on 4/17/17.
//  Copyright © 2017 Morgan Davison. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSVFile : NSObject

@property (nonatomic) NSString *sourceFile;
@property (nonatomic) int column;

- (int)sumColumn;

@end
