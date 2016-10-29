package com.twitter.library.av.playback;

import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.c;
import com.twitter.util.i;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class an extends i<Void, Void, AVMediaPlaylist> {
    private final WeakReference<AVPlayer> a;
    private am b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        b((AVMediaPlaylist) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((AVMediaPlaylist) obj);
    }

    an(AVPlayer aVPlayer, am amVar) {
        this.a = new WeakReference(aVPlayer);
        this.b = amVar;
    }

    protected AVMediaPlaylist a(Void... voidArr) {
        AVPlayer aVPlayer = (AVPlayer) this.a.get();
        if (aVPlayer != null) {
            return aVPlayer.a(AVPlayer.a(aVPlayer));
        }
        return null;
    }

    protected void a(AVMediaPlaylist aVMediaPlaylist) {
        AVPlayer aVPlayer = (AVPlayer) this.a.get();
        Object obj = (aVMediaPlaylist == null || !aVMediaPlaylist.a()) ? null : 1;
        if (aVPlayer != null) {
            aVPlayer.b(aVMediaPlaylist);
            aVPlayer.a(aVMediaPlaylist, aVPlayer.R().getResources());
        }
        if (this.b != null) {
            if (obj != null) {
                this.b.j();
            } else {
                this.b.a(aVMediaPlaylist != null ? aVMediaPlaylist.f() : c.a);
            }
        }
        b();
    }

    protected void b(AVMediaPlaylist aVMediaPlaylist) {
        if (this.b != null) {
            this.b.ai_();
        }
        b();
    }

    private void b() {
        AVPlayer aVPlayer = (AVPlayer) this.a.get();
        if (aVPlayer != null && AVPlayer.b(aVPlayer) == this) {
            AVPlayer.a(aVPlayer, null);
        }
    }

    public void a() {
        this.b = null;
    }
}
