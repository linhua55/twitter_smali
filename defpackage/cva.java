package defpackage;

import java.io.File;

/* compiled from: Twttr */
/* renamed from: cva */
public final class cva {
    public final String a;
    public final long[] b;
    boolean c;
    cuy d;
    final /* synthetic */ cuw e;

    public cva(cuw cuw, String str, int i) {
        this.e = cuw;
        this.a = str;
        this.b = new long[i];
    }

    public boolean a() {
        return this.c;
    }

    public cuy b() {
        return this.d;
    }

    public File a(int i) {
        return this.e.a(this.a, i, false);
    }

    public File b(int i) {
        return this.e.a(this.a, i, true);
    }
}
