package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class BERSequence extends ASN1Sequence {
    public BERSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public BERSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
    }

    int c() throws IOException {
        Enumeration e = e();
        int i = 0;
        while (e.hasMoreElements()) {
            i = ((ASN1Encodable) e.nextElement()).d().c() + i;
        }
        return (i + 2) + 2;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.b(48);
        aSN1OutputStream.b(128);
        Enumeration e = e();
        while (e.hasMoreElements()) {
            aSN1OutputStream.a((ASN1Encodable) e.nextElement());
        }
        aSN1OutputStream.b(0);
        aSN1OutputStream.b(0);
    }
}
