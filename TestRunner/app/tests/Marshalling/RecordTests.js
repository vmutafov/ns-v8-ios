describe(module.id, function () {
    afterEach(function () {
        TNSClearOutput();
        gc();
    });

    it("SimpleRecord", function () {
        var record = new TNSSimpleStruct();
        expect(record instanceof TNSSimpleStruct).toBe(true);

        expect(record.x).toBe(0);
        expect(record.y).toBe(0);
    });

    it("SimpleRecordEqualsFastPath", function () {
        var record1 = new TNSSimpleStruct();
        var record2 = new TNSSimpleStruct();
        expect(TNSSimpleStruct.equals(record1, record2)).toBe(true);
    });

    it("SimpleRecordEqualsSlowPath", function () {
        var record1 = {x: 1, y: 2};
        var record2 = {x: 1, y: 2};
        expect(TNSSimpleStruct.equals(record1, record2)).toBe(true);
    });

    it("NestedRecordEqualsSlowPath1", function () {
        var record1 = new TNSNestedStruct();
        var record2 = {a: {x: 0, y: 0}, b: {x: 0, y: 0}};
        expect(TNSNestedStruct.equals(record1, record2)).toBe(true);
    });

    it("NestedRecordEqualsSlowPath2", function () {
        var record1 = {a: {x: 0, y: 0}, b: {x: 0, y: 0}};
        var record2 = {a: {x: 0, y: 0}, b: {x: 0, y: 0}};
        expect(TNSNestedStruct.equals(record1, record2)).toBe(true);
    });

    it("RecordConstructorLiteral", function () {
        var record = new TNSNestedStruct({a: {x: 1, y: 2}, b: {x: 3, y: 4}});
        TNSTestNativeCallbacks.recordsNestedStruct(record);
        expect(TNSGetOutput()).toBe('1 2 3 4');
    });

    it("NestedRecordSetter", function () {
        var rect = getRectStruct();
        rect.origin.y = 25;
        rect.size.height = 45;
        expect(rect.origin.x).toBe(10);
        expect(rect.origin.y).toBe(25);
        expect(rect.size.width).toBe(30);
        expect(rect.size.height).toBe(45);
    });

    it("NestedRecordGCRoot", function () {
        var size = null;
        (() => {
            var rect = getRectStruct();
            size = rect.size;
        })();
        gc();
        gc();

        expect(size.width).toBe(30);
        expect(size.height).toBe(40);
    });

    it("RecordConstructorPointer", function () {
        (function () {
            var size = interop.sizeof(TNSNestedStruct);
            expect(size).toBeGreaterThan(0);
            expect(size).toBe(2 * interop.sizeof(TNSSimpleStruct));
            var buffer = interop.alloc(size);
            var record = new TNSNestedStruct(buffer);
            TNSTestNativeCallbacks.recordsNestedStruct(record);
            expect(TNSGetOutput()).toBe('0 0 0 0');
        }());
        gc();
    });

    it("RecordFunctionPointer", function () {
        (function () {
            var size = interop.sizeof(TNSNestedStruct);
            expect(size).toBeGreaterThan(0);
            var buffer = interop.alloc(size);
            var record = TNSNestedStruct(buffer);
            TNSTestNativeCallbacks.recordsNestedStruct(record);
            expect(TNSGetOutput()).toBe('0 0 0 0');
            expect(interop.handleof(record)).toBe(buffer);
        }());
        gc();
    });

   //  it("RecordStrings", function () {
   //      var record = new TNSNestedStruct();
   //      expect(JSON.stringify(record)).toBe('{"a":{"x":0,"y":0},"b":{"x":0,"y":0}}');
   //      expect(record.toString()).toMatch(/^<struct TNSNestedStruct: 0x\w+>$/)
   //  });

    it("SimpleStructWraper", function () {
        var record = new TNSSimpleStruct();
        record.x = 7;
        record.y = 8;

        var result = TNSTestNativeCallbacks.recordsSimpleStruct(record);
        expect(TNSGetOutput()).toBe('7 8');

        expect(result.x).toBe(record.x);
        expect(result.y).toBe(record.y);
    });

    it("SimpleStructLiteral", function () {
        var object = {
            x: 7,
            y: 8
        };

        var result = TNSTestNativeCallbacks.recordsSimpleStruct(object);
        expect(TNSGetOutput()).toBe('7 8');

        expect(result.x).toBe(object.x);
        expect(result.y).toBe(object.y);
    });

    it("recordsStruct16", function() {
        var object = { x: 1, y: 2, z: 3 };

        var result = TNSTestNativeCallbacks.recordsStruct16(object);
        expect(TNSGetOutput()).toBe('1 2 3');

        expect(result.x).toBe(object.x);
        expect(result.y).toBe(object.y);
        expect(result.z).toBe(object.z);
    });

    it("recordsStruct24", function() {
        var object = { x: 1, y: 2, z: 3 };

        var result = TNSTestNativeCallbacks.recordsStruct24(object);
        expect(TNSGetOutput()).toBe('1 2 3');

        expect(result.x).toBe(object.x);
        expect(result.y).toBe(object.y);
        expect(result.z).toBe(object.z);
    });

    it("recordsStruct32", function() {
        var object = { x: 1, y: 2, z: 3 };

        var result = TNSTestNativeCallbacks.recordsStruct32(object);
        expect(TNSGetOutput()).toBe('1 2 3');

        expect(result.x).toBe(object.x);
        expect(result.y).toBe(object.y);
        expect(result.z).toBe(object.z);
    });

    // it("InvalidStruct", function () {
    //     expect(function() {
    //         TNSTestNativeCallbacks.recordsSimpleStruct(3);
    //     }).toThrowError(/marshall.*TNSSimpleStruct/);
    // });

    it("StructWithArray", function() {
        var object = {
            x: 1,
            arr: [2, 3, 4, 5],
        };

        var result = TNSTestNativeCallbacks.recordsStructWithArray(object);
        expect(TNSGetOutput()).toBe('1 2 3 4 5');

        // expect(result).toEqual(object);
    });

    it("NestedAnonymousStruct", function () {
        var object = {
            x1: 1,
            y1: {
                x2: 2,
                y2: {
                    x3: 3
                }
            }
        };

        var result = TNSTestNativeCallbacks.recordsNestedAnonymousStruct(object);
        expect(TNSGetOutput()).toBe('1 2 3');

        expect(result.x1).toBe(object.x1);
        expect(result.y1.x2).toBe(object.y1.x2);
        expect(result.y1.y2.x3).toBe(object.y1.y2.x3);
    });

    it("NSRangeMake", function () {
        expect(NSRange.equals(NSMakeRange(1, 2), {
            location: 1,
            length: 2
        })).toBe(true);
    });

    it("LinkedList", function () {
        var record = new TNSStructWithPointers();
        record.z = new TNSStructWithPointers();
        expect(record.z.value.z).toBe(null);
    });

    it("simpleStructWithConstArray", function(){
        //{.x1 = 100, .y1 = {{.x2 = 10, .x3 = 20}, {.x2 = 30, .x3 = 40}}}
       var struct = getSimpleStruct();
       expect(struct.x1).toBe(100);
       expect(struct.y1[0].x2).toBe(10);
       expect(struct.y1[0].x3).toBe(20);
       expect(struct.y1[1].x2).toBe(30);
       expect(struct.y1[1].x3).toBe(40);
    });

    it("complexStructWithConstArray", function(){
        //{.x1 = 100, .y1 = {{.x2 = 10, .y2 = {.x3 = {1, 2}}},{.x2 = 20, .y2 = {.x3 = {3, 4}}}}};
        var struct = getComplexStruct();
        expect(struct.x1).toBe(100);
        expect(struct.y1[0].x2).toBe(10);
        expect(struct.y1[0].y2.x3[0]).toBe(1);
        expect(struct.y1[0].y2.x3[1]).toBe(2);
        expect(struct.y1[1].x2).toBe(20);
        expect(struct.y1[1].y2.x3[0]).toBe(3);
        expect(struct.y1[1].y2.x3[1]).toBe(4);
       expect(struct.x4).toBe(123456);
    });

    // it("getStructWithFloat2", function(){
    //     var struct = getStructWithFloat2();
    //     expect(struct.f[0].toFixed(4)).toBe(1.2345.toFixed(4));
    //     expect(struct.f[1].toFixed(4)).toBe(2.3456.toFixed(4));
    //     expect(struct.i).toBe(5);
    // });

     it("getStructWith2Floats", function(){
        var struct = getStructWith2Floats();
        expect(struct.f1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.f2.toFixed(4)).toBe(2.3456.toFixed(4));
     });

     it("getStructWith2Doubles", function(){
        var struct = getStructWith2Doubles();
        expect(struct.d1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.d2.toFixed(4)).toBe(2.3456.toFixed(4));
      });

     it("getStructWith3Floats", function(){
        var struct = getStructWith3Floats();
        expect(struct.f1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.f2.toFixed(4)).toBe(2.3456.toFixed(4));
        expect(struct.f3.toFixed(4)).toBe(3.4567.toFixed(4));
      });

     it("getStructWith3Doubles", function(){
        var struct = getStructWith3Doubles();
        expect(struct.d1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.d2.toFixed(4)).toBe(2.3456.toFixed(4));
        expect(struct.d3.toFixed(4)).toBe(3.4567.toFixed(4));
      });

     it("getStructWith4Floats", function(){
        var struct = getStructWith4Floats();
        expect(struct.f1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.f2.toFixed(4)).toBe(2.3456.toFixed(4));
        expect(struct.f3.toFixed(4)).toBe(3.4567.toFixed(4));
        expect(struct.f4.toFixed(4)).toBe(4.5678.toFixed(4));
     });

     it("getStructWith4Doubles", function(){
        var struct = getStructWith4Doubles();
        expect(struct.d1.toFixed(4)).toBe(1.2345.toFixed(4));
        expect(struct.d2.toFixed(4)).toBe(2.3456.toFixed(4));
        expect(struct.d3.toFixed(4)).toBe(3.4567.toFixed(4));
        expect(struct.d4.toFixed(4)).toBe(4.5678.toFixed(4));
     });

    it("structWithFloatAndDouble", function(){
        var struct = getStructWithFloatAndDouble();
        expect(struct.fl.toFixed(2)).toBe(3.14.toFixed(2));
        expect(struct.dbl.toFixed(3)).toBe(1.414.toFixed(3));
    });

    // it("structWithVectorAndDouble", function(){
    //     var struct = getStructWithVectorAndDouble();
    //     expect(struct.fl[0].toFixed(4)).toBe(1.2345.toFixed(4));
    //     expect(struct.fl[1].toFixed(4)).toBe(2.3456.toFixed(4));
    //     expect(struct.fl[2].toFixed(4)).toBe(3.4567.toFixed(4));
    //     expect(struct.fl[3].toFixed(4)).toBe(4.5678.toFixed(4));
    //     expect(struct.dbl).toBe(1.67);
    // });

    it("ComplexStruct", function() {
        var object = {
            x1: 1,
            y1: [{
                x2: 2,
                y2: {
                    x3: [3, 4],
                },
            }, {
                x2: 5,
                y2: {
                    x3: [6, 7],
                },
            }],
        };

        var result = TNSTestNativeCallbacks.recordsComplexStruct(object);
        expect(TNSGetOutput()).toBe('1 2 3 4 5 6 7');
        // expect(result).toEqual(object);
    });

    it("Marshaling struct as anonymous object from javascript callback", () => {
        const actual = getStructFromCallback(new interop.FunctionReference(() => {
            return {
                origin: {
                    x: 100,
                    y: 200
                },
                size: {
                    width: 300,
                    height: 400
                }
            }
        }));

        expect(actual instanceof CGRect).toBe(true);
        expect(actual.origin.x).toBe(100);
        expect(actual.origin.y).toBe(200);
        expect(actual.size.width).toBe(300);
        expect(actual.size.height).toBe(400);
    });

    it("Marshaling struct from javascript callback", () => {
        const actual = getStructFromCallback(new interop.FunctionReference(() => {
            return CGRectMake(100, 200, 300, 400);
        }));

        expect(actual instanceof CGRect).toBe(true);
        expect(actual.origin.x).toBe(100);
        expect(actual.origin.y).toBe(200);
        expect(actual.size.width).toBe(300);
        expect(actual.size.height).toBe(400);
    });

    it("Marshalling struct pointers", () => {
        let obj = { x: 1, y: 2 };
        TNSTestNativeCallbacks.recordsPointer(obj);
        expect(TNSGetOutput()).toBe("1 2");
        TNSClearOutput();

        obj = new TNSSimpleStruct();
        obj.x = 1;
        obj.y = 2;
        TNSTestNativeCallbacks.recordsPointer(obj);
        expect(TNSGetOutput()).toBe("1 2");
    });
});
