package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.View;
import bqk;
import caw;
import cmb;
import cmc;
import com.twitter.android.av.revenue.VideoConversationCardData;
import com.twitter.android.card.f;
import com.twitter.android.card.i;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import defpackage.cai;
import ug;
import ui;

/* compiled from: Twttr */
public class bh extends k implements a, ui {
    protected ug c;
    private MediaImageView d;
    private CardMediaView e;

    public bh(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, cmb cmb) {
        super(activity, displayMode, fVar, aVar, cmb);
        this.c = new ug(activity, this.d, this.b, 2131952788, this, bqk.c);
    }

    public void k() {
        cmc a = cmc.a("player_image", this.a);
        if (a != null) {
            this.e = new CardMediaView(this.q);
            this.e.setId(2131952788);
            this.d = (MediaImageView) this.e.findViewById(2131952122);
            this.d.setImageType("card");
            this.d.setAspectRatio(a.a(2.5f));
            this.d.a(com.twitter.media.request.a.a(a.a));
            this.d.setFromMemoryOnly(true);
        }
    }

    public void a(cai cai) {
        super.a(cai);
        if (this.x != DisplayMode.COMPOSE) {
            this.c.a(this.w, this.t);
            r();
        }
    }

    public void a() {
        super.a();
        if (this.d != null) {
            this.d.i();
        }
        if (this.x != DisplayMode.COMPOSE) {
            this.c.e();
        }
    }

    public View p() {
        return this.e;
    }

    private void r() {
        VideoConversationCardData a = VideoConversationCardData.a(this.a, this.y, this.w);
        bf.a(this.q, caw.a("player_stream_url", this.a), this.b, i.a(this.x), this.r, this.e, this.w, a);
    }

    public void ak_() {
        super.ak_();
        this.c.j();
    }

    public void a(boolean z) {
        super.a(z);
        this.c.k();
    }

    public void b() {
        if (this.d != null) {
            this.d.setFromMemoryOnly(false);
        }
        this.c.l();
    }

    public void aT_() {
        r();
    }

    public boolean c() {
        return this.c.c();
    }

    public au aR_() {
        return this.c.aR_();
    }

    public au aS_() {
        return this.c.aS_();
    }

    public au h() {
        return this.c.h();
    }

    public View i() {
        return this.c.i();
    }
}
