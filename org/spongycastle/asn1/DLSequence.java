package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class DLSequence extends ASN1Sequence {
    private int b;

    public DLSequence() {
        this.b = -1;
    }

    public DLSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.b = -1;
    }

    public DLSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
        this.b = -1;
    }

    private int k() throws IOException {
        if (this.b < 0) {
            Enumeration e = e();
            int i = 0;
            while (e.hasMoreElements()) {
                i = ((ASN1Encodable) e.nextElement()).d().j().c() + i;
            }
            this.b = i;
        }
        return this.b;
    }

    int c() throws IOException {
        int k = k();
        return k + (StreamUtil.a(k) + 1);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1OutputStream b = aSN1OutputStream.b();
        int k = k();
        aSN1OutputStream.b(48);
        aSN1OutputStream.a(k);
        Enumeration e = e();
        while (e.hasMoreElements()) {
            b.a((ASN1Encodable) e.nextElement());
        }
    }
}
