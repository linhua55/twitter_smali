package com.twitter.android.livevideo.player;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import com.twitter.library.av.playback.AVPlayerAttachment;
import rx.subjects.ReplaySubject;

/* compiled from: Twttr */
class h implements f {
    private final View a;
    private final ImageButton b;
    private final ImageButton c;
    private final Resources d;
    private final g e;
    private final OnClickListener f;
    private final ReplaySubject<AVPlayerAttachment> g;

    h(Resources resources, LayoutInflater layoutInflater, ReplaySubject<AVPlayerAttachment> replaySubject, g gVar) {
        this.f = new i(this);
        this.d = resources;
        this.e = gVar;
        this.g = replaySubject;
        this.a = layoutInflater.inflate(2130968946, null);
        this.b = (ImageButton) this.a.findViewById(2131952648);
        this.b.requestFocus();
        this.b.setOnClickListener(this.f);
        this.c = (ImageButton) this.a.findViewById(2131952649);
        this.c.setOnClickListener(this.f);
    }

    public View a() {
        return this.a;
    }

    public void b() {
        this.a.setVisibility(8);
    }

    public void c() {
        this.g.b(new j(this));
    }
}
