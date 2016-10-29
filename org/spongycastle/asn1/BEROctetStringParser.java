package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

/* compiled from: Twttr */
public class BEROctetStringParser implements ASN1OctetStringParser {
    private ASN1StreamParser a;

    BEROctetStringParser(ASN1StreamParser aSN1StreamParser) {
        this.a = aSN1StreamParser;
    }

    public InputStream a() {
        return new ConstructedOctetStream(this.a);
    }

    public ASN1Primitive h() throws IOException {
        return new BEROctetString(Streams.a(a()));
    }

    public ASN1Primitive d() {
        try {
            return h();
        } catch (Throwable e) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
