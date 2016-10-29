package defpackage;

import cta;

/* compiled from: Twttr */
/* renamed from: cub */
class cub extends cta<T> {
    final /* synthetic */ cua a;
    private final cui<? extends T> b;
    private boolean c;

    cub(cua cua) {
        this.a = cua;
        this.b = new cui(this.a.a.iterator());
    }

    public boolean hasNext() {
        if (!this.c) {
            while (this.b.hasNext() && !this.a.b.a(this.b.c())) {
                this.b.next();
            }
            this.c = true;
        }
        return this.b.hasNext();
    }

    protected T a() {
        this.c = false;
        return this.b.next();
    }
}
