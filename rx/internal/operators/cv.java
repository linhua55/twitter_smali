package rx.internal.operators;

import rx.s;

/* compiled from: Twttr */
class cv implements s {
    final /* synthetic */ ct a;

    cv(ct ctVar) {
        this.a = ctVar;
    }

    public void a(long j) {
        if (j > 0) {
            this.a.c(j);
        } else if (j < 0) {
            throw new IllegalArgumentException("n >= 0 expected but it was " + j);
        }
    }
}
