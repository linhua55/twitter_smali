package com.twitter.android.composer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.service.ac;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class at extends ac<Void, bw> {
    private boolean a;
    private final WeakReference<ComposerActivity> b;
    private final Context c;
    private final Session d;
    private final az e;

    at(ComposerActivity composerActivity, Session session, az azVar) {
        this.a = false;
        this.b = new WeakReference(composerActivity);
        this.c = composerActivity.getApplicationContext();
        this.d = session;
        this.e = azVar;
    }

    public void a() {
        this.a = true;
    }

    public void a(bw bwVar) {
        Long l = (Long) bwVar.l().b();
        if (l != null) {
            new Handler(Looper.getMainLooper()).post(new au(this, l));
        }
    }
}
