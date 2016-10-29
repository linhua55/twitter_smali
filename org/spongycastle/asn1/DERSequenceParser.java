package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class DERSequenceParser implements ASN1SequenceParser {
    private ASN1StreamParser a;

    DERSequenceParser(ASN1StreamParser aSN1StreamParser) {
        this.a = aSN1StreamParser;
    }

    public ASN1Primitive h() throws IOException {
        return new DERSequence(this.a.b());
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
