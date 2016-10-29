package rx.internal.operators;

import rx.s;

/* compiled from: Twttr */
final class g<T, R> implements s {
    final R a;
    final i<T, R> b;
    boolean c;

    public g(R r, i<T, R> iVar) {
        this.a = r;
        this.b = iVar;
    }

    public void a(long j) {
        if (!this.c && j > 0) {
            this.c = true;
            i iVar = this.b;
            iVar.b(this.a);
            iVar.c(1);
        }
    }
}
