package tv.periscope.android.ui.broadcast;

/* compiled from: Twttr */
class j implements Runnable {
    final /* synthetic */ f a;
    private final double b;

    j(f fVar, double d) {
        this.a = fVar;
        this.b = d;
    }

    public void run() {
        this.a.a(this.b);
    }
}
