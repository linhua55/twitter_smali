package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class DERUniversalString extends ASN1Primitive implements ASN1String {
    private static final char[] a;
    private byte[] b;

    static {
        a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public DERUniversalString(byte[] bArr) {
        this.b = bArr;
    }

    public String a() {
        StringBuffer stringBuffer = new StringBuffer("#");
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ASN1OutputStream(byteArrayOutputStream).a((ASN1Encodable) this);
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            for (int i = 0; i != toByteArray.length; i++) {
                stringBuffer.append(a[(toByteArray[i] >>> 4) & 15]);
                stringBuffer.append(a[toByteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new RuntimeException("internal error encoding BitString");
        }
    }

    public String toString() {
        return a();
    }

    public byte[] e() {
        return this.b;
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.b.length) + 1) + this.b.length;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(28, e());
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERUniversalString) {
            return Arrays.a(this.b, ((DERUniversalString) aSN1Primitive).b);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.a(this.b);
    }
}
