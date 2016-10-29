package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class DERTaggedObject extends ASN1TaggedObject {
    private static final byte[] e;

    static {
        e = new byte[0];
    }

    public DERTaggedObject(boolean z, int i, ASN1Encodable aSN1Encodable) {
        super(z, i, aSN1Encodable);
    }

    public DERTaggedObject(int i, ASN1Encodable aSN1Encodable) {
        super(true, i, aSN1Encodable);
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
        int c = this.d.d().i().c();
        if (this.c) {
            return c + (StreamUtil.b(this.a) + StreamUtil.a(c));
        }
        return (c - 1) + StreamUtil.b(this.a);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        int i = 160;
        if (this.b) {
            aSN1OutputStream.a(160, this.a, e);
            return;
        }
        ASN1Primitive i2 = this.d.d().i();
        if (this.c) {
            aSN1OutputStream.a(160, this.a);
            aSN1OutputStream.a(i2.c());
            aSN1OutputStream.a((ASN1Encodable) i2);
            return;
        }
        if (!i2.b()) {
            i = 128;
        }
        aSN1OutputStream.a(i, this.a);
        aSN1OutputStream.a(i2);
    }
}
