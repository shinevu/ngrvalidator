//
//  NGRValidator+NSDataSpec.m
//  NGRValidator
//
//
//

SpecBegin(NGRValidator_Data)

describe(@"Syntax validation", ^{
    
    // Images
    NSData *png = [NGRDataProvider png];
    NSData *jpg = [NGRDataProvider jpg];
    NSData *tiff = [NGRDataProvider tiff];
    NSData *ico = [NGRDataProvider ico];
    NSData *gif = [NGRDataProvider gif];
    NSData *bmp = [NGRDataProvider bmp];
    
    //Video
    NSData *_3gp = [NGRDataProvider _3gp];
    NSData *avi = [NGRDataProvider avi];
    NSData *mkv = [NGRDataProvider mkv];
    NSData *mp4 = [NGRDataProvider mp4];
    NSData *wmv = [NGRDataProvider wmv];
    NSData *flv = [NGRDataProvider flv];
    NSData *mov = [NGRDataProvider mov];
    NSData *mpeg = [NGRDataProvider mpeg];
    
    //Misc
    NSData *pdf = [NGRDataProvider pdf];
    NSData *json = [NGRDataProvider json];
    NSData *xml = [NGRDataProvider xml];
    NSData *utf8text = [NGRDataProvider utf8text];
    
    //Audio
    NSData *mp3 = [NGRDataProvider mp3];
    NSData *flac = [NGRDataProvider flac];
    NSData *wav = [NGRDataProvider wav];
    NSData *m4a = [NGRDataProvider m4a];
    NSData *ogg = [NGRDataProvider ogg];
    
    //Compressed
    NSData *zip = [NGRDataProvider zip];
    NSData *rar = [NGRDataProvider rar];
    NSData *gz = [NGRDataProvider gz];
    NSData *tar = [NGRDataProvider tar];
    NSData *_7z = [NGRDataProvider _7z];
    
    NSArray<NGRMimeTypeValidationTestCase *> *testCases = @[
                                                            
        [NGRMimeTypeValidationTestCase test:NGRMimeTypePNG valid:png invalid:jpg],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeJPG valid:jpg invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeIco valid:ico invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeTiff valid:tiff invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeGif valid:gif invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeBMP valid:bmp invalid:png],
        
        [NGRMimeTypeValidationTestCase test:NGRMimeType3gp valid:_3gp invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeAvi valid:avi invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeMkv valid:mkv invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeMP4 valid:mp4 invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeWMV valid:wmv invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeFlv valid:flv invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeMov valid:mov invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeMPEG valid:mpeg invalid:png],
        
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeJSON valid:json invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeXML valid:xml invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeUtf8Text valid:utf8text invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypePDF valid:pdf invalid:png],
        
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeMP3 valid:mp3 invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeFlac valid:flac invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeWav valid:wav invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeM4a valid:m4a invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeOgg valid:ogg invalid:png],
        
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeGz valid:gz invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeRar valid:rar invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeZip valid:zip invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeType7z valid:_7z invalid:png],
        [NGRMimeTypeValidationTestCase test:NGRMimeTypeTar valid:tar invalid:png],
        
    ];
    
    for (NGRMimeTypeValidationTestCase *testCase in testCases) {
        testDescriptor(testCase.name, @"valid data", @"invalid data");
        itShouldBehaveLike(NGRValueBehavior, ^{
            return wrapData(testCase.validData, testCase.invalidData, 1, ^(NGRPropertyValidator *validator) {
                return validator.mimeType(testCase.mimeType).msgWrongMIMEType(msg);
            });
        });
    }
    
});

SpecEnd

