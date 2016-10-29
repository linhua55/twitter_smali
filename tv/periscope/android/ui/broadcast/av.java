package tv.periscope.android.ui.broadcast;

import android.app.Activity;

/* compiled from: Twttr */
class av implements Runnable {
    final /* synthetic */ au a;

    av(au auVar) {
        this.a = auVar;
    }

    public void run() {
        Activity activity = (Activity) this.a.j.get();
        if (activity != null && !activity.isFinishing()) {
            this.a.o.a();
            this.a.n.b();
        }
    }
}
