  //
  //  main.m
  //  NSString
  //
  //  Created by steve on 2018-04-09.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  NSString *s1 = @"steve thompson";
  s1 = [s1 stringByAppendingString:@" hey"];
  
  NSString *s2 = [NSString stringWithFormat:@"I am %@, %@, %d", s1, @" again", __LINE__];
  
  if ([s1 isEqualToString:s2]) { } else  {
    NSLog(@"%d: not equal", __LINE__);
  }
  if (s1 == s2) { }
  
  NSMutableArray *a = [@[] mutableCopy];
  
  NSArray<NSString*>*a2 = [s2  componentsSeparatedByString:@" "];
  
  NSRange range  = NSMakeRange(0, 5);
  NSString *steve = [s1 substringWithRange:range];
  
  for(NSInteger i = 0; i < s1.length; ++i){
    NSRange range  = NSMakeRange(i, 1);
    NSString *result = [s1 substringWithRange:range];
    NSLog(@"%d: %@", __LINE__, result);
  }
  
  NSString *a1 = @"a";
  NSString *b1 = @"B";
  
  NSComparisonResult compResult = [a1 caseInsensitiveCompare:b1];
  
  if(compResult == NSOrderedAscending) {
    NSLog(@"%d: ascending", __LINE__);
  }
  
  
  NSMutableString *ms = [@"steve" mutableCopy];
  
  NSString *s5 = [ms copy];
  
  [ms appendString:@" thompson"];
  
  
  
  return 0;
}







