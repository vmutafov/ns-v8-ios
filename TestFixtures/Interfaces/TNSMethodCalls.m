#import "TNSMethodCalls.h"

@implementation TNSBaseInterface

- (int)baseProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)baseProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)baseProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)baseProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)baseProperty {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (int)baseReadOnlyProperty {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (int)baseProperty {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

+ (void)baseProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initBaseProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initBaseProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)baseProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initBaseProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initBaseProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)baseProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseMethod {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

+ (void)baseMethod:(NSNumber*)param {
    TNSLog([NSString stringWithFormat:@"overloaded static %@ called", NSStringFromSelector(_cmd)]);
}

- (void)methodWithParam:(NSNumber*)p2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called with 1 param", NSStringFromSelector(_cmd)]);
}

- (instancetype)initBaseMethod {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseMethod {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}

- (void)baseMethod:(NSNumber*)param {
    TNSLog([NSString stringWithFormat:@"overloaded instance %@ called", NSStringFromSelector(_cmd)]);
}

- (void)callBaseMethod:(BOOL)withArgs {
    if (withArgs) {
        [self baseMethod:[NSNumber numberWithInteger:2]];
    } else {
        [self baseMethod];
    }
}

+ (void)baseVariadicMethod:(id)x, ... {
    TNSLog([NSString stringWithFormat:@"base instance %@ called", NSStringFromSelector(_cmd)]);
}
@end

@implementation TNSBaseInterface (TNSBaseCategory)

- (int)baseCategoryProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseCategoryProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseCategoryProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseCategoryProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)baseCategoryProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseCategoryProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseCategoryProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseCategoryProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)baseCategoryProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseCategoryProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseCategoryProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseCategoryProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)baseCategoryProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseCategoryProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseCategoryProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseCategoryProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)baseCategoryProperty {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setBaseCategoryProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)baseCategoryProperty {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setBaseCategoryProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

+ (void)baseCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initBaseCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initBaseCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)baseCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initBaseCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initBaseCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)baseCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)baseCategoryMethod {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initBaseCategoryMethod {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)baseCategoryMethod {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
@end

@implementation TNSDerivedInterface

- (void)setBaseReadOnlyProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedProperty {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedProperty {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (int)derivedPropertyReadOnly {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (int)derivedPropertyReadOnlyMadeWritable {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)derivedProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initDerivedProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)derivedProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initDerivedProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)derivedProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedMethod {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedMethod {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedMethod {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}

- (void)methodWith:(NSNumber*)p1 param:(NSNumber*)p2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called with 2 params", NSStringFromSelector(_cmd)]);
}
@end

@implementation TNSDerivedInterface (TNSDerivedCategory)

- (int)derivedCategoryProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedCategoryProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedCategoryProtocolProperty1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedCategoryProtocolProperty1:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)derivedCategoryProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedCategoryProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedCategoryProtocolProperty1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedCategoryProtocolProperty1Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)derivedCategoryProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedCategoryProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedCategoryProtocolProperty2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedCategoryProtocolProperty2:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)derivedCategoryProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedCategoryProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedCategoryProtocolProperty2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedCategoryProtocolProperty2Optional:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

- (int)derivedCategoryProperty {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
- (void)setDerivedCategoryProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)setDerivedPropertyReadOnlyMadeWritable:(int)value {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (int)derivedCategoryProperty {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
    return 0;
}
+ (void)setDerivedCategoryProperty:(int)value {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}

+ (void)derivedCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initDerivedCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedCategoryProtocolMethod1 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)derivedCategoryProtocolMethod1Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (instancetype)initDerivedCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedCategoryProtocolMethod2 {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
- (void)derivedCategoryProtocolMethod2Optional {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}
+ (void)derivedCategoryMethod {
    TNSLog([NSString stringWithFormat:@"static %@ called", NSStringFromSelector(_cmd)]);
}
- (instancetype)initDerivedCategoryMethod {
    TNSLog([NSString stringWithFormat:@"constructor %@ called", NSStringFromSelector(_cmd)]);
    return self;
}
- (void)derivedCategoryMethod {
    TNSLog([NSString stringWithFormat:@"instance %@ called", NSStringFromSelector(_cmd)]);
}

- (void)baseMethod:(NSNumber*)param {
    TNSLog([NSString stringWithFormat:@"derived overloaded instance %@ called", NSStringFromSelector(_cmd)]);
}
@end
