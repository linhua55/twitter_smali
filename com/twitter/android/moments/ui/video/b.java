package com.twitter.android.moments.ui.video;

import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.s;

/* compiled from: Twttr */
public class b {
    private final AVPlayerAttachment a;
    private final AVPlayer b;
    private final AVDataSource c;

    public b(AVPlayerAttachment aVPlayerAttachment, AVDataSource aVDataSource) {
        this.a = aVPlayerAttachment;
        this.b = aVPlayerAttachment.a();
        this.c = aVDataSource;
    }

    public void a() {
        this.a.i();
    }

    public void b() {
        this.a.n();
    }

    public void c() {
        this.a.a(false);
    }

    public void d() {
        this.b.d(true);
        c();
    }

    public void e() {
        this.a.m();
    }

    public void a(boolean z) {
        if (this.b.y()) {
            this.b.d(z);
            c();
        }
    }

    public AVPlayer f() {
        return this.b;
    }

    public AVPlayerAttachment g() {
        return this.a;
    }

    public void a(s sVar) {
        this.a.a(sVar);
    }
}
