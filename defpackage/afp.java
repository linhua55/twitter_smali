package defpackage;

import android.app.Activity;

/* compiled from: Twttr */
/* renamed from: afp */
class afp implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ afo b;

    afp(afo afo, Activity activity) {
        this.b = afo;
        this.a = activity;
    }

    public void run() {
        this.a.finish();
    }
}
