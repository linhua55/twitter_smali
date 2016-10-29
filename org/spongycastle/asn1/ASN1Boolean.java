package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class ASN1Boolean extends ASN1Primitive {
    public static final ASN1Boolean a;
    public static final ASN1Boolean b;
    private static final byte[] c;
    private static final byte[] d;
    private byte[] e;

    static {
        c = new byte[]{(byte) -1};
        d = new byte[]{(byte) 0};
        a = new ASN1Boolean(false);
        b = new ASN1Boolean(true);
    }

    public static ASN1Boolean a(Object obj) {
        if (obj == null || (obj instanceof ASN1Boolean)) {
            return (ASN1Boolean) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1Boolean) ASN1Primitive.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Boolean a(boolean z) {
        return z ? b : a;
    }

    public static ASN1Boolean a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        Object l = aSN1TaggedObject.l();
        if (z || (l instanceof ASN1Boolean)) {
            return a(l);
        }
        return a(((ASN1OctetString) l).e());
    }

    ASN1Boolean(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("byte value should have 1 byte in it");
        } else if (bArr[0] == null) {
            this.e = d;
        } else if ((bArr[0] & 255) == 255) {
            this.e = c;
        } else {
            this.e = Arrays.b(bArr);
        }
    }

    public ASN1Boolean(boolean z) {
        this.e = z ? c : d;
    }

    public boolean a() {
        return this.e[0] != null;
    }

    boolean b() {
        return false;
    }

    int c() {
        return 3;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(1, this.e);
    }

    protected boolean a(ASN1Primitive aSN1Primitive) {
        if ((aSN1Primitive instanceof ASN1Boolean) && this.e[0] == ((ASN1Boolean) aSN1Primitive).e[0]) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.e[0];
    }

    public String toString() {
        return this.e[0] != null ? "TRUE" : "FALSE";
    }

    static ASN1Boolean a(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
        } else if (bArr[0] == null) {
            return a;
        } else {
            if ((bArr[0] & 255) == 255) {
                return b;
            }
            return new ASN1Boolean(bArr);
        }
    }
}
