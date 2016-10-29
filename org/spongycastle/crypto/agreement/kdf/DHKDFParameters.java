package org.spongycastle.crypto.agreement.kdf;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.crypto.DerivationParameters;

/* compiled from: Twttr */
public class DHKDFParameters implements DerivationParameters {
    private ASN1ObjectIdentifier a;
    private int b;
    private byte[] c;
    private byte[] d;

    public DHKDFParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, byte[] bArr) {
        this(aSN1ObjectIdentifier, i, bArr, null);
    }

    public DHKDFParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, byte[] bArr, byte[] bArr2) {
        this.a = aSN1ObjectIdentifier;
        this.b = i;
        this.c = bArr;
        this.d = bArr2;
    }

    public ASN1ObjectIdentifier a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public byte[] c() {
        return this.c;
    }

    public byte[] d() {
        return this.d;
    }
}
