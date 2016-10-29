package com.twitter.android.revenue.card;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
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
public class b extends a {
    private final ab a;
    private final MediaImageView b;
    private final StatsAndCtaView c;
    private byy d;
    private String e;
    private String f;

    b(Context context, DisplayMode displayMode, f fVar, a aVar) {
        super(context, displayMode, fVar, aVar);
        this.a = new c(this);
        this.q = LayoutInflater.from(context).inflate(2130969082, new FrameLayout(context), false);
        ViewStub viewStub = (ViewStub) this.q.findViewById(2131952841);
        viewStub.setLayoutResource(2130969068);
        viewStub.inflate();
        View findViewById = this.q.findViewById(2131952851);
        Resources resources = context.getResources();
        float dimension = resources.getDimension(2131689727);
        x.a(findViewById, resources, new float[]{dimension, dimension, dimension, dimension, dimension, dimension, dimension, dimension});
        this.a.a(findViewById);
        this.b = (MediaImageView) this.q.findViewById(2131952122);
        this.b.setAspectRatio(2.5f);
        this.b.setImageType("card");
        this.c = (StatsAndCtaView) this.q.findViewById(2131952837);
        this.c.setOnClickTouchListener(this.a);
        if (this.o == null || this.o.aa() == null || !"promo_app".equalsIgnoreCase(this.o.aa().b())) {
            this.c.setRatingContainerTextVisibility(0);
            this.c.setCtaVisibility(8);
        } else if (x.a(context, displayMode)) {
            this.c.a();
        } else {
            this.c.setRatingContainerTextVisibility(8);
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.setFromMemoryOnly(false);
        }
    }

    public void a() {
        super.a();
        if (this.b != null) {
            this.b.i();
        }
    }

    public void a(long j, cmb cmb) {
        this.d = byy.a("app_url", "app_url_resolved", cmb);
        this.e = caw.a("app_id", cmb);
        this.f = caw.a("card_url", cmb);
        this.c_.a(caw.a("_card_data", cmb));
        this.c.a(cmb);
        cmc a = cmc.a("thumbnail", cmb);
        if (a != null) {
            this.b.a(com.twitter.media.request.a.a(a.a));
            this.b.setFromMemoryOnly(true);
            this.b.setTag("thumbnail");
            this.b.setAspectRatio(a.a(1.0f));
            this.b.setOnTouchListener(this.a);
        }
    }
}
