package org.spongycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class ASN1Enumerated extends ASN1Primitive {
    private static ASN1Enumerated[] b;
    byte[] a;

    public static ASN1Enumerated a(Object obj) {
        if (obj == null || (obj instanceof ASN1Enumerated)) {
            return (ASN1Enumerated) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1Enumerated) ASN1Primitive.b((byte[]) obj);
            } catch (Exception e) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public ASN1Enumerated(int i) {
        this.a = BigInteger.valueOf((long) i).toByteArray();
    }

    public ASN1Enumerated(byte[] bArr) {
        this.a = bArr;
    }

    public BigInteger a() {
        return new BigInteger(this.a);
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.a.length) + 1) + this.a.length;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(10, this.a);
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Enumerated)) {
            return false;
        }
        return Arrays.a(this.a, ((ASN1Enumerated) aSN1Primitive).a);
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }

    static {
        b = new ASN1Enumerated[12];
    }

    static ASN1Enumerated a(byte[] bArr) {
        if (bArr.length > 1) {
            return new ASN1Enumerated(Arrays.b(bArr));
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i = bArr[0] & 255;
        if (i >= b.length) {
            return new ASN1Enumerated(Arrays.b(bArr));
        }
        ASN1Enumerated aSN1Enumerated = b[i];
        if (aSN1Enumerated != null) {
            return aSN1Enumerated;
        }
        ASN1Enumerated[] aSN1EnumeratedArr = b;
        aSN1Enumerated = new ASN1Enumerated(Arrays.b(bArr));
        aSN1EnumeratedArr[i] = aSN1Enumerated;
        return aSN1Enumerated;
    }
}
