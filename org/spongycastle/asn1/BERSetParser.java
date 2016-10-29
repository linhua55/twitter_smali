package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class BERSetParser implements ASN1SetParser {
    private ASN1StreamParser a;

    BERSetParser(ASN1StreamParser aSN1StreamParser) {
        this.a = aSN1StreamParser;
    }

    public ASN1Primitive h() throws IOException {
        return new BERSet(this.a.b());
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (Throwable e) {
            throw new ASN1ParsingException(e.getMessage(), e);
        }
    }
}
