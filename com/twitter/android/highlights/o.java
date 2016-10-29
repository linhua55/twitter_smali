package com.twitter.android.highlights;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class o implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private final WeakReference<m> a;
    private WeakReference<p> b;
    private WeakReference<n> c;

    o(m mVar, p pVar, n nVar) {
        this.a = new WeakReference(mVar);
        this.b = new WeakReference(pVar);
        this.c = new WeakReference(nVar);
    }

    public void a(p pVar, n nVar) {
        if (!pVar.equals(this.b.get())) {
            this.b = new WeakReference(pVar);
        }
        if (nVar == null || !nVar.equals(this.c.get())) {
            this.c = new WeakReference(nVar);
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        p pVar = (p) this.b.get();
        if (pVar != null) {
            pVar.d.start();
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        a();
    }

    private void a() {
        n nVar = (n) this.c.get();
        m mVar = (m) this.a.get();
        p pVar = (p) this.b.get();
        if (nVar != null && pVar != null && mVar != null && mVar.c() == 1) {
            nVar.a(mVar, pVar);
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        a();
        return true;
    }
}
