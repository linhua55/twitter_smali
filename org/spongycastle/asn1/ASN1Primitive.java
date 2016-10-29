package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class ASN1Primitive extends ASN1Object {
    abstract void a(ASN1OutputStream aSN1OutputStream) throws IOException;

    abstract boolean a(ASN1Primitive aSN1Primitive);

    abstract boolean b();

    abstract int c() throws IOException;

    public abstract int hashCode();

    ASN1Primitive() {
    }

    public static ASN1Primitive b(byte[] bArr) throws IOException {
        try {
            return new ASN1InputStream(bArr).d();
        } catch (ClassCastException e) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ASN1Encodable) && a(((ASN1Encodable) obj).d())) {
            return true;
        }
        return false;
    }

    public ASN1Primitive d() {
        return this;
    }

    ASN1Primitive i() {
        return this;
    }

    ASN1Primitive j() {
        return this;
    }
}
