package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class DEROctetStringParser implements ASN1OctetStringParser {
    private DefiniteLengthInputStream a;

    DEROctetStringParser(DefiniteLengthInputStream definiteLengthInputStream) {
        this.a = definiteLengthInputStream;
    }

    public InputStream a() {
        return this.a;
    }

    public ASN1Primitive h() throws IOException {
        return new DEROctetString(this.a.b());
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (Throwable e) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
