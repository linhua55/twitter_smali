package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* compiled from: Twttr */
class LazyEncodedSequence extends ASN1Sequence {
    private byte[] b;

    LazyEncodedSequence(byte[] bArr) throws IOException {
        this.b = bArr;
    }

    private void k() {
        Enumeration lazyConstructionEnumeration = new LazyConstructionEnumeration(this.b);
        while (lazyConstructionEnumeration.hasMoreElements()) {
            this.a.addElement(lazyConstructionEnumeration.nextElement());
        }
        this.b = null;
    }

    public synchronized ASN1Encodable a(int i) {
        if (this.b != null) {
            k();
        }
        return super.a(i);
    }

    public synchronized Enumeration e() {
        Enumeration e;
        if (this.b == null) {
            e = super.e();
        } else {
            e = new LazyConstructionEnumeration(this.b);
        }
        return e;
    }

    public synchronized int h() {
        if (this.b != null) {
            k();
        }
        return super.h();
    }

    ASN1Primitive i() {
        if (this.b != null) {
            k();
        }
        return super.i();
    }

    ASN1Primitive j() {
        if (this.b != null) {
            k();
        }
        return super.j();
    }

    int c() throws IOException {
        if (this.b != null) {
            return (StreamUtil.a(this.b.length) + 1) + this.b.length;
        }
        return super.j().c();
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        if (this.b != null) {
            aSN1OutputStream.a(48, this.b);
        } else {
            super.j().a(aSN1OutputStream);
        }
    }
}
