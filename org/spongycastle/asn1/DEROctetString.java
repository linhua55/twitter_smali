package org.spongycastle.asn1;

import java.io.IOException;

/* compiled from: Twttr */
public class DEROctetString extends ASN1OctetString {
    public DEROctetString(byte[] bArr) {
        super(bArr);
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.a.length) + 1) + this.a.length;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(4, this.a);
    }

    static void a(DEROutputStream dEROutputStream, byte[] bArr) throws IOException {
        dEROutputStream.a(4, bArr);
    }
}
