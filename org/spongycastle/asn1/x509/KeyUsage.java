package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;

/* compiled from: Twttr */
public class KeyUsage extends ASN1Object {
    private DERBitString a;

    public static KeyUsage a(Object obj) {
        if (obj instanceof KeyUsage) {
            return (KeyUsage) obj;
        }
        if (obj != null) {
            return new KeyUsage(DERBitString.a(obj));
        }
        return null;
    }

    public static KeyUsage a(Extensions extensions) {
        return a(extensions.b(Extension.c));
    }

    public KeyUsage(int i) {
        this.a = new DERBitString(i);
    }

    private KeyUsage(DERBitString dERBitString) {
        this.a = dERBitString;
    }

    public byte[] a() {
        return this.a.e();
    }

    public String toString() {
        byte[] e = this.a.e();
        if (e.length == 1) {
            return "KeyUsage: 0x" + Integer.toHexString(e[0] & 255);
        }
        return "KeyUsage: 0x" + Integer.toHexString((e[0] & 255) | ((e[1] & 255) << 8));
    }

    public ASN1Primitive d() {
        return this.a;
    }
}
