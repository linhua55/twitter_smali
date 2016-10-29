package com.twitter.android.commerce.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import cmb;
import cmc;
import com.twitter.android.commerce.card.CommerceCardActionHandler.CommerceCardType;
import com.twitter.android.revenue.card.au;
import com.twitter.android.revenue.card.h;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cai;

/* compiled from: Twttr */
public class j extends au implements bzs {
    protected Context a;
    protected DisplayMode b;
    protected MediaImageView c;
    protected TextView d;
    protected TextView e;
    protected View f;
    private final CommerceCardActionHandler g;
    private final ab h;
    private cmb m;

    j(com.twitter.android.revenue.card.j jVar, CommerceCardActionHandler commerceCardActionHandler) {
        super(jVar);
        this.h = new k(this);
        this.g = commerceCardActionHandler;
    }

    protected void a(Context context, DisplayMode displayMode) {
        this.a = context;
        this.b = displayMode;
        this.i = LayoutInflater.from(context).inflate(DisplayMode.FORWARD == displayMode ? 2130968688 : 2130968689, null);
        this.d = (TextView) this.i.findViewById(2131952138);
        this.e = (TextView) this.i.findViewById(2131952139);
        this.c = (MediaImageView) this.i.findViewById(2131952136);
        this.f = this.i.findViewById(2131952137);
    }

    public void a(cai cai) {
        super.a(cai);
        bzr.a().a(this.j, this);
    }

    public void a() {
        super.a();
        bzr.a().b(this.j, this);
        if (this.c != null) {
            this.c.i();
        }
    }

    public void a(long j, cmb cmb) {
        this.m = cmb;
        this.l.h().a((String) cmb.a("_card_data", String.class));
        a(cmb);
        b(cmb);
        c(cmb);
        d(cmb);
        e(cmb);
    }

    private void a(cmb cmb) {
        if (this.d != null) {
            this.d.setTypeface(h.b);
            this.d.setText((CharSequence) cmb.a("offer_title", String.class));
            this.d.setOnTouchListener(this.h);
        }
    }

    private void b(cmb cmb) {
        if (this.e != null) {
            this.e.setTypeface(h.b);
            String str = (String) cmb.a("offer_redeem_type", String.class);
            String str2 = (String) cmb.a("offer_merchant_name", String.class);
            CharSequence stringBuilder = new StringBuilder();
            stringBuilder.append(str).append(" ").append(this.a.getString(2131362068)).append(" ").append(str2);
            this.e.setText(stringBuilder);
            this.e.setOnTouchListener(this.h);
        }
    }

    private void c(cmb cmb) {
        if (this.c != null) {
            cmc a = cmc.a("offer_image", cmb);
            if (this.b == DisplayMode.FORWARD) {
                this.c.setAspectRatio(3.3f);
            } else {
                this.c.setAspectRatio(2.5f);
            }
            if (a != null) {
                this.c.a(a.a(a.a));
                this.c.setOnTouchListener(this.h);
            }
        }
    }

    private void d(cmb cmb) {
        this.f.setTag("button");
        this.f.setOnTouchListener(this.h);
    }

    private void e(cmb cmb) {
        this.i.setOnTouchListener(this.h);
    }

    private void a(View view, MotionEvent motionEvent) {
        String str;
        NativeCardUserAction a = NativeCardUserAction.a(f(), view, motionEvent, 0);
        switch (view.getId()) {
            case 2131952135:
                str = "cloffer_card_container_click";
                break;
            case 2131952136:
                str = "cloffer_card_primary_image_click";
                break;
            case 2131952137:
                str = "cloffer_card_cta_click";
                break;
            case 2131952138:
                str = "cloffer_card_item_title_click";
                break;
            case 2131952139:
                str = "cloffer_card_item_title_click";
                break;
            default:
                str = null;
                break;
        }
        this.g.a(a, this.m, this.l.l(), str, CommerceCardType.OFFERS, this.l.d());
    }
}
