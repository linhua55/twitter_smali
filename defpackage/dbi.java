package defpackage;

import rx.an;

/* compiled from: Twttr */
/* renamed from: dbi */
final class dbi {
    final boolean a;
    final an b;

    dbi(boolean z, an anVar) {
        this.a = z;
        this.b = anVar;
    }

    dbi a() {
        return new dbi(true, this.b);
    }

    dbi a(an anVar) {
        return new dbi(this.a, anVar);
    }
}
