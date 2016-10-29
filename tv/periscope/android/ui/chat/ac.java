package tv.periscope.android.ui.chat;

/* compiled from: Twttr */
class ac implements Runnable {
    final /* synthetic */ z a;

    ac(z zVar) {
        this.a = zVar;
    }

    public void run() {
        this.a.w = true;
        if (this.a.q != null) {
            this.a.q.H();
        }
    }
}
