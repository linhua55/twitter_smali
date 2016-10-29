package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class DERBMPString extends ASN1Primitive implements ASN1String {
    private char[] a;

    DERBMPString(char[] cArr) {
        this.a = cArr;
    }

    public DERBMPString(String str) {
        this.a = str.toCharArray();
    }

    public String a() {
        return new String(this.a);
    }

    public String toString() {
        return a();
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }

    protected boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERBMPString)) {
            return false;
        }
        return Arrays.a(this.a, ((DERBMPString) aSN1Primitive).a);
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.a.length * 2) + 1) + (this.a.length * 2);
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.b(30);
        aSN1OutputStream.a(this.a.length * 2);
        for (int i = 0; i != this.a.length; i++) {
            char c = this.a[i];
            aSN1OutputStream.b((byte) (c >> 8));
            aSN1OutputStream.b((byte) c);
        }
    }
}
