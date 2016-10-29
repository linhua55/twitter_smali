package org.spongycastle.asn1;

/* compiled from: Twttr */
public class OIDTokenizer {
    private String a;
    private int b;

    public OIDTokenizer(String str) {
        this.a = str;
        this.b = 0;
    }

    public boolean a() {
        return this.b != -1;
    }

    public String b() {
        if (this.b == -1) {
            return null;
        }
        int indexOf = this.a.indexOf(46, this.b);
        if (indexOf == -1) {
            String substring = this.a.substring(this.b);
            this.b = -1;
            return substring;
        }
        substring = this.a.substring(this.b, indexOf);
        this.b = indexOf + 1;
        return substring;
    }
}
