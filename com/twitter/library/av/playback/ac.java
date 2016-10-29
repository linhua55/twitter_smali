package com.twitter.library.av.playback;

import android.support.annotation.VisibleForTesting;
import bbl;
import bbn;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
public class ac {
    final w a;
    final AVMediaPlayer b;
    final Runnable c;
    ScheduledFuture d;
    final ScheduledThreadPoolExecutor e;
    final AtomicBoolean f;
    final AtomicBoolean g;

    public ac(AVMediaPlayer aVMediaPlayer) {
        this(aVMediaPlayer, new ScheduledThreadPoolExecutor(1));
    }

    ac(AVMediaPlayer aVMediaPlayer, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.b = aVMediaPlayer;
        this.a = aVMediaPlayer.b();
        this.c = e();
        this.e = scheduledThreadPoolExecutor;
    }

    public void a() {
        this.f.set(false);
        if (this.d == null && !b()) {
            try {
                this.d = this.e.scheduleAtFixedRate(this.c, 10, 10, TimeUnit.MILLISECONDS);
            } catch (Throwable e) {
                bbn.a(new bbl().a(e));
            }
        }
    }

    @VisibleForTesting
    boolean b() {
        return this.g.get();
    }

    private void a(Runnable runnable) {
        if (!b()) {
            this.e.execute(runnable);
        }
    }

    public void c() {
        this.f.set(true);
        if (this.d != null) {
            this.d.cancel(true);
            this.d = null;
        }
    }

    public void d() {
        c();
        this.g.set(true);
        this.e.shutdown();
    }

    Runnable e() {
        return new ad(this);
    }

    public void f() {
        a(new ae(this));
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        a(new af(this, aVPlayer$PlayerStartType));
    }

    public void g() {
        a(new ag(this));
    }
}
