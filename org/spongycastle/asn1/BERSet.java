package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class BERSet extends ASN1Set {
    public BERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public BERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    public BERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }

    int c() throws IOException {
        Enumeration a = a();
        int i = 0;
        while (a.hasMoreElements()) {
            i = ((ASN1Encodable) a.nextElement()).d().c() + i;
        }
        return (i + 2) + 2;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.b(49);
        aSN1OutputStream.b(128);
        Enumeration a = a();
        while (a.hasMoreElements()) {
            aSN1OutputStream.a((ASN1Encodable) a.nextElement());
        }
        aSN1OutputStream.b(0);
        aSN1OutputStream.b(0);
    }
}
