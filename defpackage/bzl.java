package defpackage;

import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bzl */
class bzl implements bzn {
    public int a;
    public int b;
    public final Set<cah> c;

    bzl() {
        this.c = new LinkedHashSet();
    }

    public int a() {
        return this.c.size();
    }

    public String toString() {
        int i = this.a + this.b;
        if (i != 0) {
            i = (this.a * 100) / i;
        } else {
            i = 0;
        }
        return String.format("%s={ current=%d, hits=%d, misses=%d, hitRate=%d%%}", new Object[]{bzn.class.getSimpleName(), Integer.valueOf(a()), Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(i)});
    }
}
