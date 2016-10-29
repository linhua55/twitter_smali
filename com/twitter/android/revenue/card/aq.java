package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.revenue.x;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import defpackage.byy;

/* compiled from: Twttr */
public class aq extends a {
    protected final int a;
    protected final ab b;
    protected ViewGroup c;
    protected MediaImageView d;
    protected byy e;
    protected String f;
    protected String g;
    protected String h;
    private StatsAndCtaView r;
    private final float[] s;
    private final float[] t;

    aq(Context context, DisplayMode displayMode, f fVar, a aVar, int i, float[] fArr, float[] fArr2) {
        super(context, displayMode, fVar, aVar);
        this.a = i;
        this.s = fArr;
        this.t = fArr2;
        this.b = new ar(this);
    }

    ViewGroup a(Context context) {
        this.c = b(context);
        ViewStub viewStub = (ViewStub) this.c.findViewById(2131952841);
        viewStub.setLayoutResource(this.a);
        viewStub.inflate();
        this.r = (StatsAndCtaView) this.c.findViewById(2131952837);
        this.r.setOnClickTouchListener(this.b);
        if (DisplayMode.CAROUSEL == this.p) {
            this.r.setShowBlankLine(true);
        }
        this.d = (MediaImageView) this.c.findViewById(2131952122);
        this.d.setAspectRatio(2.5f);
        this.d.setImageType("card");
        View findViewById = this.c.findViewById(2131952851);
        x.a(findViewById, context.getResources(), this.s);
        this.b.a(findViewById);
        ((CardMediaView) this.c.findViewById(2131952788)).a(this.t[0], this.t[1], this.t[2], this.t[3]);
        return this.c;
    }

    ViewGroup b(Context context) {
        return (ViewGroup) LayoutInflater.from(context).inflate(2130969082, new FrameLayout(context), false);
    }

    View j() {
        return this.d;
    }

    public View e() {
        return this.c;
    }

    public void a() {
        super.a();
        if (this.d != null) {
            this.d.i();
        }
    }

    public void b() {
        if (this.d != null) {
            this.d.setFromMemoryOnly(false);
        }
    }

    public void a(long j, cmb cmb) {
        this.e = byy.a("app_url", "app_url_resolved", cmb);
        this.f = caw.a("app_id", cmb);
        this.g = caw.a("card_url", cmb);
        this.c_.a(caw.a("_card_data", cmb));
        this.r.a(cmb);
        a(cmb);
    }

    void a(cmb cmb) {
        cmc a = cmc.a(k(), cmb);
        if (a != null) {
            this.h = a.a;
            this.d.a(com.twitter.media.request.a.a(a.a));
            this.d.setFromMemoryOnly(true);
            this.d.setTag(k());
            this.d.setAspectRatio(a.a(2.5f));
            this.d.setOnTouchListener(this.b);
        }
    }

    protected String k() {
        return "promo_image";
    }
}
