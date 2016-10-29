package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class DERExternalParser implements ASN1Encodable, InMemoryRepresentable {
    private ASN1StreamParser a;

    public DERExternalParser(ASN1StreamParser aSN1StreamParser) {
        this.a = aSN1StreamParser;
    }

    public ASN1Primitive h() throws IOException {
        try {
            return new DERExternal(this.a.b());
        } catch (Throwable e) {
            throw new ASN1Exception(e.getMessage(), e);
        }
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (Throwable e) {
            throw new ASN1ParsingException("unable to get DER object", e);
        } catch (Throwable e2) {
            throw new ASN1ParsingException("unable to get DER object", e2);
        }
    }
}
