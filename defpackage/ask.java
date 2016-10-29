package defpackage;

/* compiled from: Twttr */
/* renamed from: ask */
class ask extends asd implements Runnable {
    ask() {
    }

    public void run() {
        this.b.a(System.nanoTime());
        this.a.postDelayed(this, 16);
    }

    public void a() {
        this.a.postDelayed(this, 16);
    }

    public void b() {
        this.a.removeCallbacks(this);
    }
}
