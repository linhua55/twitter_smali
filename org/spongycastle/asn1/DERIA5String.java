package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class DERIA5String extends ASN1Primitive implements ASN1String {
    private byte[] a;

    public static DERIA5String a(Object obj) {
        if (obj == null || (obj instanceof DERIA5String)) {
            return (DERIA5String) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (DERIA5String) ASN1Primitive.b((byte[]) obj);
            } catch (Exception e) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERIA5String a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        Object l = aSN1TaggedObject.l();
        if (z || (l instanceof DERIA5String)) {
            return a(l);
        }
        return new DERIA5String(((ASN1OctetString) l).e());
    }

    DERIA5String(byte[] bArr) {
        this.a = bArr;
    }

    public DERIA5String(String str) {
        this(str, false);
    }

    public DERIA5String(String str, boolean z) {
        if (str == null) {
            throw new NullPointerException("string cannot be null");
        } else if (!z || b(str)) {
            this.a = Strings.d(str);
        } else {
            throw new IllegalArgumentException("string contains illegal characters");
        }
    }

    public String a() {
        return Strings.b(this.a);
    }

    public String toString() {
        return a();
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.a.length) + 1) + this.a.length;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(22, this.a);
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERIA5String)) {
            return false;
        }
        return Arrays.a(this.a, ((DERIA5String) aSN1Primitive).a);
    }

    public static boolean b(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > '\u007f') {
                return false;
            }
        }
        return true;
    }
}
