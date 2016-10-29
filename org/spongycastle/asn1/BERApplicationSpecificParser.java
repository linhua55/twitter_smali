package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class BERApplicationSpecificParser implements ASN1ApplicationSpecificParser {
    private final int a;
    private final ASN1StreamParser b;

    BERApplicationSpecificParser(int i, ASN1StreamParser aSN1StreamParser) {
        this.a = i;
        this.b = aSN1StreamParser;
    }

    public ASN1Primitive h() throws IOException {
        return new BERApplicationSpecific(this.a, this.b.b());
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (Throwable e) {
            throw new ASN1ParsingException(e.getMessage(), e);
        }
    }
}
