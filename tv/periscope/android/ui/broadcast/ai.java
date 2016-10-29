package tv.periscope.android.ui.broadcast;

/* compiled from: Twttr */
class ai implements Runnable {
    final /* synthetic */ ae a;

    ai(ae aeVar) {
        this.a = aeVar;
    }

    public void run() {
        if (!this.a.k() && this.a.d != null && this.a.g.h()) {
            this.a.D.a(this.a.g);
            this.a.k.postDelayed(this, 5000);
        }
    }
}
