package com.twitter.library.av.playback;

import android.support.annotation.VisibleForTesting;
import bqk;
import com.twitter.config.AppConfig;
import com.twitter.library.av.q;
import com.twitter.library.av.s;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class at {
    final Map<AVMedia, w> a;
    private final q b;
    private s c;
    private AVPlayer d;
    private AVMediaPlayer e;
    private AVMediaPlayer f;
    private AVMediaPlayer g;
    private AVMediaPlaylist h;
    private AVMedia i;
    private AVMedia j;

    public at() {
        this(q.a());
    }

    at(q qVar) {
        this.a = new HashMap();
        this.e = AVMediaPlayer.a;
        this.f = AVMediaPlayer.a;
        this.g = AVMediaPlayer.a;
        this.b = qVar;
    }

    public void a(AVPlayer aVPlayer, s sVar) {
        this.d = aVPlayer;
        this.c = sVar;
    }

    AVMediaPlayer a() {
        return this.e;
    }

    AVMediaPlayer b() {
        return this.f;
    }

    public AVMediaPlayer c() {
        return this.g;
    }

    public AVMedia d() {
        return e() ? this.i : this.j;
    }

    @VisibleForTesting
    boolean e() {
        AVMediaPlayer c = c();
        return !c.q() && c == a();
    }

    public Map<AVMedia, w> f() {
        return this.a;
    }

    public void g() {
        this.a.clear();
    }

    static void a(AVMediaPlayer aVMediaPlayer) {
        aVMediaPlayer.a(null);
        aVMediaPlayer.a(null);
        aVMediaPlayer.a(null);
    }

    private void b(AVMediaPlayer aVMediaPlayer) {
        aVMediaPlayer.a(this.d.n());
        aVMediaPlayer.a(this.d);
        aVMediaPlayer.a(this.c);
    }

    public long h() {
        long j = c().C().b;
        for (w e : this.a.values()) {
            e.e();
        }
        this.g = AVMediaPlayer.a;
        this.e.a(true);
        this.e = AVMediaPlayer.a;
        this.f.a(true);
        this.f = AVMediaPlayer.a;
        return j;
    }

    public boolean i() {
        boolean z = this.i != null;
        boolean z2;
        if (this.j != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z || r3) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        if (!l()) {
            return true;
        }
        if (e() && r3) {
            return true;
        }
        return false;
    }

    public boolean j() {
        return this.g == this.e || (this.i == null && this.g == this.f);
    }

    private boolean a(bqk bqk) {
        return bqk.c() && this.i != null;
    }

    public AVMedia a(AVMediaPlaylist aVMediaPlaylist) {
        bqk L = this.d.L();
        this.h = aVMediaPlaylist;
        this.i = aVMediaPlaylist.k();
        if (this.i != null) {
            this.e = a(this.i, a(L));
        }
        this.j = aVMediaPlaylist.c();
        if (this.j != null) {
            this.f = a(this.j, !a(L));
        }
        return d();
    }

    private boolean b(bqk bqk) {
        AVMediaPlayer c = c();
        if (c.q() || c.v()) {
            return a(bqk);
        }
        return false;
    }

    public void b(AVMediaPlaylist aVMediaPlaylist) {
        if (this.h == null) {
            if (AppConfig.m().a()) {
                throw new IllegalStateException("Requested a re-buffer within an illegal state");
            }
            a(aVMediaPlaylist);
        } else if (this.i == null && this.e.q()) {
            if (!aVMediaPlaylist.equals(this.h) && aVMediaPlaylist.a() && aVMediaPlaylist.j()) {
                AVMedia k = aVMediaPlaylist.k();
                w wVar = (w) this.a.get(this.i);
                if (wVar != null) {
                    this.a.put(k, wVar);
                }
                this.i = k;
                this.h = aVMediaPlaylist;
                boolean b = b(this.d.L());
                if (b) {
                    this.f.a(true);
                    this.f = a(this.j, false);
                }
                this.e = a(this.i, b);
            }
        } else if (AppConfig.m().a()) {
            throw new IllegalStateException("Requested a re-buffer with an ad already buffered");
        }
    }

    private AVMediaPlayer a(AVMedia aVMedia, boolean z) {
        AVMediaPlayer a = a(aVMedia);
        if (z) {
            a(a, aVMedia);
        }
        return a;
    }

    private void a(AVMediaPlayer aVMediaPlayer, AVMedia aVMedia) {
        this.g = aVMediaPlayer;
        b(aVMediaPlayer);
        if (!aVMediaPlayer.B()) {
            aVMediaPlayer.a(this.d.R(), aVMedia, this.h.g());
        }
    }

    private AVMediaPlayer a(AVMedia aVMedia) {
        if (!this.a.containsKey(aVMedia)) {
            this.a.put(aVMedia, bz.a(this.d, aVMedia));
        }
        return this.d.Q().a(aVMedia, this.d.R(), (w) this.a.get(aVMedia), this.b.b());
    }

    public AVMediaPlayer c(AVMediaPlaylist aVMediaPlaylist) {
        AppConfig m = AppConfig.m();
        if (m.a() && !aVMediaPlaylist.equals(this.h)) {
            throw new IllegalStateException("Playlists do not match!");
        } else if (!m.a() || l()) {
            if (e()) {
                a(a());
                AVMediaPlayer b = b();
                if (b != AVMediaPlayer.a) {
                    a(b, this.j);
                    return b;
                }
            }
            return null;
        } else {
            throw new IllegalStateException("onMediaComplete was called without an active buffer");
        }
    }

    public long k() {
        if (!e()) {
            return 0;
        }
        AVMediaPlayer a = a();
        a.s();
        return a.C().b;
    }

    protected boolean l() {
        return !c().q();
    }

    protected boolean a(boolean z) {
        AVMedia d = d();
        if (d == null || (!d.e() && !z)) {
            return false;
        }
        AVMediaPlayer c = c();
        if (!(c.q() || c.z())) {
            c.D();
        }
        return true;
    }

    public bd m() {
        return c().C();
    }
}
