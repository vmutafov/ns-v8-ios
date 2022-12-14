#import "TNSRecords.h"

void* functionWith_VoidPtr(void* x);
_Bool* functionWith_BoolPtr(_Bool* x);
unsigned char* functionWithUCharPtr(unsigned char* x);
unsigned short* functionWithUShortPtr(unsigned short* x);
unsigned int* functionWithUIntPtr(unsigned int* x);
unsigned long* functionWithULongPtr(unsigned long* x);
unsigned long long* functionWithULongLongPtr(unsigned long long* x);
char* functionWithCharPtr(char* x);
short* functionWithShortPtr(short* x);
int* functionWithIntPtr(int* x);
long* functionWithLongPtr(long* x);
long long* functionWithLongLongPtr(long long* x);
float* functionWithFloatPtr(float* x);
double* functionWithDoublePtr(double* x);
TNSNestedStruct* functionWithStructPtr(TNSNestedStruct* x);
void functionWithOutStructPtr(TNSSimpleStruct* str);

void* functionWithIdPointer(void* x);

void functionWithIntIncompleteArray(int x[]);
void functionWithShortConstantArray(short x[5]);
void functionWithIntConstantArray(int x[5]);
void functionWithLongConstantArray(long x[5]);
void functionWithLongLongConstantArray(long long x[5]);
void functionWithIntConstantArray2(int x[2][2]);

char** functionWithDoubleCharPtr(char** x);

void* functionWithNullPointer(void* x);

void* functionWithIdToVoidPointer(void* x);

@interface TNSPointerManager : NSObject
- (int*)data;
- (void)increment;
@end
