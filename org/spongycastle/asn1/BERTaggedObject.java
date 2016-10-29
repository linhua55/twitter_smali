package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
public class BERTaggedObject extends ASN1TaggedObject {
    public BERTaggedObject(int i, ASN1Encodable aSN1Encodable) {
        super(true, i, aSN1Encodable);
    }

    public BERTaggedObject(boolean z, int i, ASN1Encodable aSN1Encodable) {
        super(z, i, aSN1Encodable);
    }

    boolean b() {
        if (this.b || this.c) {
            return true;
        }
        return this.d.d().i().b();
    }

    int c() throws IOException {
        if (this.b) {
            return StreamUtil.b(this.a) + 1;
        }
        int c = this.d.d().c();
        if (this.c) {
            return c + (StreamUtil.b(this.a) + StreamUtil.a(c));
        }
        return (c - 1) + StreamUtil.b(this.a);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(160, this.a);
        aSN1OutputStream.b(128);
        if (!this.b) {
            if (this.c) {
                aSN1OutputStream.a(this.d);
            } else {
                Enumeration k;
                if (this.d instanceof ASN1OctetString) {
                    if (this.d instanceof BEROctetString) {
                        k = ((BEROctetString) this.d).k();
                    } else {
                        k = new BEROctetString(((ASN1OctetString) this.d).e()).k();
                    }
                } else if (this.d instanceof ASN1Sequence) {
                    k = ((ASN1Sequence) this.d).e();
                } else if (this.d instanceof ASN1Set) {
                    k = ((ASN1Set) this.d).a();
                } else {
                    throw new RuntimeException("not implemented: " + this.d.getClass().getName());
                }
                while (k.hasMoreElements()) {
                    aSN1OutputStream.a((ASN1Encodable) k.nextElement());
                }
            }
        }
        aSN1OutputStream.b(0);
        aSN1OutputStream.b(0);
    }
}
