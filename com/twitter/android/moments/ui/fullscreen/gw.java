package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.library.av.u;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.c;

/* compiled from: Twttr */
class gw extends u {
    static final /* synthetic */ boolean a;
    final /* synthetic */ gu b;

    static {
        a = !gu.class.desiredAssertionStatus();
    }

    gw(gu guVar) {
        this.b = guVar;
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        AVMedia D = this.b.f.f().D();
        if (D != null) {
            this.b.o.a(D);
            this.b.k.a(this.b.c.h(), PageLoadingEventType.DONE_SUCCESS.a());
            this.b.v = true;
        }
    }

    public void a(bd bdVar) {
        this.b.o.a(bdVar);
    }

    public void j() {
        this.b.o.h();
    }

    public void a(int i, String str) {
        a();
    }

    public void a(c cVar) {
        a();
    }

    public void f() {
        this.b.f.c();
    }

    public void a(int i, int i2) {
        this.b.a(i, i2);
    }

    public void b(int i, int i2) {
        if (i == 701) {
            this.b.o.g();
            this.b.k.a(this.b.c.h(), PageLoadingEventType.START_BUFFERING.a());
            this.b.v = false;
        } else if (i == 702) {
            if (this.b.f.f().u()) {
                AVMedia D = this.b.f.f().D();
                if (a || D != null) {
                    this.b.o.a(D);
                } else {
                    throw new AssertionError();
                }
            }
            this.b.k.a(this.b.c.h(), PageLoadingEventType.DONE_SUCCESS.a());
            this.b.v = true;
        }
    }

    private void a() {
        this.b.o.h();
        this.b.k.a(this.b.c.h(), PageLoadingEventType.DONE_FAILED.a());
        this.b.v = false;
        this.b.t = true;
    }
}
