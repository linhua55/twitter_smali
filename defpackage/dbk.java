package defpackage;

import rx.an;

/* compiled from: Twttr */
/* renamed from: dbk */
final class dbk {
    final boolean a;
    final an b;

    dbk(boolean z, an anVar) {
        this.a = z;
        this.b = anVar;
    }

    dbk a() {
        return new dbk(true, this.b);
    }

    dbk a(an anVar) {
        return new dbk(this.a, anVar);
    }
}
