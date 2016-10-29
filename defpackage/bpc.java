package defpackage;

import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bpc */
public class bpc {
    long[] a;
    String[] b;
    String[] c;
    int d;
    long e;
    String f;
    String g;
    boolean h;
    int i;
    List<TwitterUser> j;

    public bpc a(String[] strArr) {
        this.b = strArr;
        return this;
    }

    public bpc b(String[] strArr) {
        this.c = strArr;
        return this;
    }

    public bpc a(long[] jArr) {
        this.a = jArr;
        return this;
    }

    public bpc a(int i) {
        this.d = i;
        return this;
    }

    public bpc a(long j) {
        this.e = j;
        return this;
    }

    public bpc a(String str) {
        this.g = str;
        return this;
    }

    public bpc a(boolean z) {
        this.h = z;
        return this;
    }

    bpc a(bpc bpc) {
        this.d = bpc.d;
        this.e = bpc.e;
        this.f = bpc.f;
        this.g = bpc.g;
        this.h = bpc.h;
        return this;
    }

    public int a() {
        return this.i;
    }

    public int b() {
        return this.j.size();
    }
}
