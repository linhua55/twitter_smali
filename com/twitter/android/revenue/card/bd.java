package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import bqk;
import caw;
import cmb;
import com.twitter.android.av.revenue.VideoAppCardData;
import com.twitter.android.card.f;
import com.twitter.android.card.i;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cai;
import ug;
import ui;

/* compiled from: Twttr */
public class bd extends aq implements a, ui {
    protected ug r;
    private cmb s;

    bd(Context context, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, int i, float[] fArr, float[] fArr2) {
        super(context, displayMode, fVar, aVar, i, fArr, fArr2);
    }

    ViewGroup a(Context context) {
        super.a(context);
        this.r = c(context);
        return this.c;
    }

    ug c(Context context) {
        return new ug(context, this.d, this.c, 2131952788, this, bqk.c);
    }

    public void a(cai cai) {
        super.a(cai);
        this.s = cai.c;
        this.r.a(this.o, this.l);
        l();
    }

    View j() {
        return this.r.b();
    }

    public void a() {
        super.a();
        this.r.e();
    }

    public void b() {
        super.b();
        this.r.l();
    }

    public void a(long j, cmb cmb) {
        super.a(j, cmb);
        this.s = cmb;
        l();
    }

    private void l() {
        View j = j();
        if (j != null) {
            bf.a(this.i, caw.a("player_stream_url", this.s), this.c, i.a(this.p), this.c_, j, this.o, VideoAppCardData.a(this.s));
        }
    }

    protected String k() {
        return "player_image";
    }

    public void aT_() {
        l();
    }

    public void ak_() {
        super.ak_();
        this.r.j();
    }

    public void a(boolean z) {
        super.a(z);
        this.r.k();
    }

    public boolean c() {
        return this.r.c();
    }

    public au aR_() {
        return this.r.aR_();
    }

    public au aS_() {
        return this.r.aS_();
    }

    public au h() {
        return this.r.h();
    }

    public View i() {
        return this.r.i();
    }
}
