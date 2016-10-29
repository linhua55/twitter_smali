package defpackage;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cin */
public class cin {
    public static final n<cin> a;
    private final String b;
    private final int c;
    private final String d;

    static {
        a = new cio();
    }

    public cin(String str, int i, String str2) {
        this.b = str;
        this.c = i;
        this.d = str2;
    }

    public String a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public int hashCode() {
        return (((this.b.hashCode() * 31) + this.c) * 31) + this.d.hashCode();
    }
}
