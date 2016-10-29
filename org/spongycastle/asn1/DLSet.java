package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class DLSet extends ASN1Set {
    private int a;

    public DLSet() {
        this.a = -1;
    }

    public DLSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.a = -1;
    }

    public DLSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
        this.a = -1;
    }

    public DLSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
        this.a = -1;
    }

    private int k() throws IOException {
        if (this.a < 0) {
            Enumeration a = a();
            int i = 0;
            while (a.hasMoreElements()) {
                i = ((ASN1Encodable) a.nextElement()).d().j().c() + i;
            }
            this.a = i;
        }
        return this.a;
    }

    int c() throws IOException {
        int k = k();
        return k + (StreamUtil.a(k) + 1);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1OutputStream b = aSN1OutputStream.b();
        int k = k();
        aSN1OutputStream.b(49);
        aSN1OutputStream.a(k);
        Enumeration a = a();
        while (a.hasMoreElements()) {
            b.a((ASN1Encodable) a.nextElement());
        }
    }
}
