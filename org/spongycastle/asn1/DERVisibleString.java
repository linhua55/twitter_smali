package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class DERVisibleString extends ASN1Primitive implements ASN1String {
    private byte[] a;

    DERVisibleString(byte[] bArr) {
        this.a = bArr;
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
        aSN1OutputStream.a(26, this.a);
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERVisibleString) {
            return Arrays.a(this.a, ((DERVisibleString) aSN1Primitive).a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }
}
