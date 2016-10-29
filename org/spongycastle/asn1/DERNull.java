package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class DERNull extends ASN1Null {
    public static final DERNull a;
    private static final byte[] b;

    static {
        a = new DERNull();
        b = new byte[0];
    }

    boolean b() {
        return false;
    }

    int c() {
        return 2;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(5, b);
    }
}
