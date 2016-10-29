package defpackage;

import aoq;
import com.twitter.app.lists.g;

/* compiled from: Twttr */
/* renamed from: aqa */
public class aqa extends aoq {
    public final boolean a;
    public final boolean b;
    public final long c;
    public final long d;
    public final String e;

    aqa(boolean z, boolean z2, long j, long j2, String str) {
        this.a = z;
        this.b = z2;
        this.c = j;
        this.d = j2;
        this.e = str;
    }

    public static aqa a(g gVar, long j) {
        return new aqa(gVar.g(), gVar.b(), gVar.a(-1), j, gVar.d());
    }
}
