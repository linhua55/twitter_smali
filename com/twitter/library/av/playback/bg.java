package com.twitter.library.av.playback;

import android.content.Context;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Handler;
import com.twitter.library.av.playback.AVMediaPlayer.PlayerState;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.s;
import com.twitter.model.av.AVMedia;
import java.util.Map;

/* compiled from: Twttr */
public abstract class bg implements AVMediaPlayer {
    private boolean b;
    protected final w c;
    protected s d;
    protected OnCompletionListener e;
    protected volatile ac f;
    protected AVMedia g;
    protected String h;
    protected Map<String, String> i;
    protected PlayerStartType j;
    PlayerState k;
    PlayerState l;
    final Handler m;

    protected abstract void a(long j);

    protected abstract void a(Context context);

    protected abstract long c();

    protected abstract long d();

    protected abstract boolean g();

    protected abstract void i();

    protected abstract void j();

    protected abstract void k();

    protected abstract void m();

    protected abstract void n();

    public bg(w wVar, Handler handler) {
        this.j = PlayerStartType.d;
        this.k = PlayerState.c;
        this.l = PlayerState.c;
        this.c = wVar;
        this.f = new ac(this);
        this.m = handler;
    }

    public boolean q() {
        return false;
    }

    public w b() {
        return this.c;
    }

    protected void a(boolean z, int i, String str) {
        a(PlayerState.a);
        b(PlayerState.a);
        c(false);
        if (z && this.d != null) {
            this.d.a(i, str);
        }
    }

    public void a(s sVar) {
        this.d = sVar;
    }

    public boolean r() {
        return E() == PlayerState.f;
    }

    protected synchronized void a(PlayerState playerState) {
        this.k = playerState;
    }

    protected synchronized PlayerState E() {
        return this.k;
    }

    protected synchronized void b(PlayerState playerState) {
        this.l = playerState;
    }

    protected synchronized PlayerState F() {
        return this.l;
    }

    public void s() {
        boolean u = u();
        boolean z = this.l == PlayerState.f && this.k != PlayerState.f;
        if (!g()) {
            return;
        }
        if (r() || u || z) {
            if (!u) {
                a(PlayerState.g);
            }
            b(PlayerState.g);
            c(false);
            if (!u) {
                j();
            }
            if (this.d != null) {
                this.d.j();
            }
        }
    }

    public boolean G() {
        PlayerState E = E();
        return (!g() || E == PlayerState.a || E == PlayerState.c || E == PlayerState.d) ? false : true;
    }

    public boolean t() {
        return E() == PlayerState.g;
    }

    public boolean u() {
        return E() == PlayerState.d;
    }

    public boolean v() {
        PlayerState E = E();
        return E == PlayerState.e || E == PlayerState.d;
    }

    public boolean w() {
        return E() == PlayerState.a;
    }

    public boolean x() {
        return E() == PlayerState.h;
    }

    public void b(long j) {
        if (g() && G()) {
            c(false);
            a(j);
            if (j >= c() && E() != PlayerState.f) {
                a(PlayerState.h);
                b(PlayerState.h);
                if (this.e != null) {
                    this.e.onCompletion(null);
                }
            }
        }
    }

    public void y() {
        c(false);
        this.b = true;
    }

    public boolean z() {
        return this.b;
    }

    public void A() {
        this.b = false;
        ac H = H();
        if (H != null) {
            H.a(PlayerStartType.c);
            H.a();
        }
    }

    public void a(Context context, AVMedia aVMedia, Map<String, String> map) {
        this.g = aVMedia;
        this.h = aVMedia.a();
        this.i = map;
        a();
        a(context);
    }

    public boolean B() {
        return (this.h == null || E() == PlayerState.a) ? false : true;
    }

    private void a() {
        a(PlayerState.c);
        b(PlayerState.c);
    }

    public void a(OnCompletionListener onCompletionListener) {
        this.e = onCompletionListener;
    }

    public void a(boolean z) {
        synchronized (this) {
            ac acVar = this.f;
            this.f = null;
        }
        if (acVar != null) {
            acVar.d();
        }
        a(PlayerState.c);
        if (z) {
            b(PlayerState.c);
        }
        k();
    }

    public void b(boolean z) {
        PlayerStartType playerStartType;
        PlayerState E = E();
        if (E == PlayerState.g || E == PlayerState.f) {
            playerStartType = PlayerStartType.b;
        } else if (z) {
            playerStartType = PlayerStartType.a;
        } else {
            playerStartType = PlayerStartType.d;
        }
        this.j = playerStartType;
        if (G()) {
            if (z) {
                b(0);
            }
            i();
            a(PlayerState.f);
            m();
        }
        b(PlayerState.f);
    }

    public bd C() {
        if (g() && G()) {
            return new bd(d(), c());
        }
        return new bd(0, -1);
    }

    protected void a(PlayerStartType playerStartType) {
        ac acVar;
        synchronized (this) {
            if (this.f == null) {
                this.f = new ac(this);
            }
            acVar = this.f;
        }
        acVar.a(playerStartType);
        acVar.a();
    }

    protected void c(boolean z) {
        ac H = H();
        if (H != null) {
            H.c();
            if (z) {
                H.f();
            }
        }
    }

    public void D() {
        a(PlayerStartType.b);
        ac H = H();
        if (H != null) {
            H.g();
        }
        n();
        a(PlayerState.f);
        b(PlayerState.f);
    }

    protected synchronized ac H() {
        return this.f;
    }
}
