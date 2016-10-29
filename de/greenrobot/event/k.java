package de.greenrobot.event;

/* compiled from: Twttr */
final class k {
    private j a;
    private j b;

    k() {
    }

    synchronized void a(j jVar) {
        if (jVar == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.b != null) {
            this.b.c = jVar;
            this.b = jVar;
        } else if (this.a == null) {
            this.b = jVar;
            this.a = jVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    synchronized j a() {
        j jVar;
        jVar = this.a;
        if (this.a != null) {
            this.a = this.a.c;
            if (this.a == null) {
                this.b = null;
            }
        }
        return jVar;
    }

    synchronized j a(int i) throws InterruptedException {
        if (this.a == null) {
            wait((long) i);
        }
        return a();
    }
}
