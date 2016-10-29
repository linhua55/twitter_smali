package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class BERTaggedObjectParser implements ASN1TaggedObjectParser {
    private boolean a;
    private int b;
    private ASN1StreamParser c;

    BERTaggedObjectParser(boolean z, int i, ASN1StreamParser aSN1StreamParser) {
        this.a = z;
        this.b = i;
        this.c = aSN1StreamParser;
    }

    public ASN1Primitive h() throws IOException {
        return this.c.a(this.a, this.b);
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage());
        }
    }
}
