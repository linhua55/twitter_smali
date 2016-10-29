package com.twitter.android.livevideo.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.util.d;
import rx.subjects.ReplaySubject;

/* compiled from: Twttr */
public class LiveVideoPlayerChrome extends FrameLayout implements g, h {
    private final ReplaySubject<AVPlayerAttachment> a;
    private final f b;
    private e c;

    public LiveVideoPlayerChrome(Context context) {
        this(context, null);
    }

    public LiveVideoPlayerChrome(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LiveVideoPlayerChrome(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = ReplaySubject.q();
        this.c = null;
        this.b = new h(getResources(), (LayoutInflater) context.getSystemService("layout_inflater"), this.a, this);
        addView(this.b.a());
    }

    public View getView() {
        return this;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        if (aVPlayerAttachment != null) {
            this.a.b_(aVPlayerAttachment);
        }
        this.b.c();
    }

    public void a(AVMedia aVMedia) {
    }

    public void a(PlayerStartType playerStartType) {
        this.b.c();
    }

    public void a() {
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }

    public void a_(boolean z) {
        this.b.b();
    }

    public boolean f() {
        View a = this.b.a();
        if (a.getVisibility() == 0) {
            d.a(a);
        } else {
            d.b(a);
        }
        return false;
    }

    public void h() {
    }

    public void g() {
    }

    public void i() {
    }

    public void j() {
        this.b.c();
    }

    public void l() {
        requestLayout();
    }

    public void b_(boolean z) {
    }

    public void a(Context context, String str) {
    }

    public void a(bd bdVar) {
    }

    public void k() {
        if (this.c != null) {
            this.c.a();
        }
    }

    public void m() {
        this.a.b(new d(this));
    }

    public void setOnFullscreenClickListener(e eVar) {
        this.c = eVar;
    }
}
