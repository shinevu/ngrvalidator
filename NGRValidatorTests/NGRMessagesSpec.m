//
//  NGRMessagesSpec.m
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 06/04/15.
//
//

SpecBegin(NGRMessagesSpec)

describe(@"NGRMessages", ^{
    
    __block NGRMessages *sut;
    
    beforeEach(^{
        sut = [[NGRMessages alloc] init];
    });
    
    afterEach(^{
        sut = nil;
    });
    
    context(@"when setting new message", ^{
        
        beforeEach(^{
            [sut setMessage:@"Fixture Message" forError:NGRErrorTooLong];
        });
        
        it(@"should new message be set properly.", ^{
            expect([sut messageForError:NGRErrorTooLong]).to.equal(@"Fixture Message");
        });
    });
});

SpecEnd
