package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class DERSet extends ASN1Set {
    private int a;

    public DERSet() {
        this.a = -1;
    }

    public DERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.a = -1;
    }

    public DERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, true);
        this.a = -1;
    }

    public DERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, true);
        this.a = -1;
    }

    DERSet(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        super(aSN1EncodableVector, z);
        this.a = -1;
    }

    private int k() throws IOException {
        if (this.a < 0) {
            Enumeration a = a();
            int i = 0;
            while (a.hasMoreElements()) {
                i = ((ASN1Encodable) a.nextElement()).d().i().c() + i;
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
        ASN1OutputStream a = aSN1OutputStream.a();
        int k = k();
        aSN1OutputStream.b(49);
        aSN1OutputStream.a(k);
        Enumeration a2 = a();
        while (a2.hasMoreElements()) {
            a.a((ASN1Encodable) a2.nextElement());
        }
    }
}
