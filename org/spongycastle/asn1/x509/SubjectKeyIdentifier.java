package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;

/* compiled from: Twttr */
public class SubjectKeyIdentifier extends ASN1Object {
    private byte[] a;

    public SubjectKeyIdentifier(byte[] bArr) {
        this.a = bArr;
    }

    public byte[] a() {
        return this.a;
    }

    public ASN1Primitive d() {
        return new DEROctetString(this.a);
    }
}
