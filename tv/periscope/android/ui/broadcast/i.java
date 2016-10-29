package tv.periscope.android.ui.broadcast;

/* compiled from: Twttr */
class i implements Runnable {
    final /* synthetic */ f a;
    private boolean b;

    i(f fVar) {
        this.a = fVar;
    }

    public void run() {
        if (this.b) {
            this.a.G();
        } else {
            this.a.O = true;
        }
        synchronized (this.a) {
            this.a.w();
            this.a.r = false;
            if (!this.a.g) {
                this.a.v();
                this.a.a(0);
            }
        }
    }
}
