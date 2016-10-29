package com.twitter.android.commerce.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import cmb;
import cmc;
import com.twitter.android.commerce.card.CommerceCardActionHandler.CommerceCardType;
import com.twitter.android.commerce.util.c;
import com.twitter.android.revenue.card.au;
import com.twitter.android.revenue.card.h;
import com.twitter.android.revenue.card.j;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cai;

/* compiled from: Twttr */
public class e extends au implements bzs {
    protected Context a;
    protected DisplayMode b;
    protected MediaImageView c;
    protected TextView d;
    protected TextView e;
    protected View f;
    protected TextView g;
    protected View h;
    private final CommerceCardActionHandler m;
    private final ab n;
    private cmb o;

    e(j jVar, CommerceCardActionHandler commerceCardActionHandler) {
        super(jVar);
        this.n = new f(this);
        this.m = commerceCardActionHandler;
    }

    protected void a(Context context, DisplayMode displayMode) {
        this.a = context;
        this.b = displayMode;
        this.i = LayoutInflater.from(context).inflate(2130969072, new FrameLayout(context), false);
        ViewStub viewStub = (ViewStub) this.i.findViewById(2131952841);
        viewStub.setLayoutResource(2130968687);
        viewStub.inflate();
        this.h = this.i.findViewById(2131952842);
        this.n.a(this.h);
        this.d = (TextView) this.i.findViewById(2131952133);
        this.e = (TextView) this.i.findViewById(2131952134);
        this.c = (MediaImageView) this.i.findViewById(2131952130);
        this.g = (TextView) this.i.findViewById(2131952123);
        this.f = this.i.findViewById(2131952132);
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
        this.o = cmb;
        this.l.h().a((String) cmb.a("_card_data", String.class));
        a(cmb);
        b(cmb);
        c(cmb);
        c();
        d();
        e();
    }

    private void a(cmb cmb) {
        if (this.d != null) {
            this.d.setTypeface(h.b);
            this.d.setText((CharSequence) cmb.a("item_title", String.class));
            this.d.setOnTouchListener(this.n);
        }
    }

    private void b(cmb cmb) {
        if (this.e != null) {
            this.e.setTypeface(h.b);
            String a = c.a(cmb.a("variant1_price", String.class));
            String str = (String) cmb.a("merchant_name", String.class);
            CharSequence stringBuilder = new StringBuilder();
            stringBuilder.append(a).append(" ").append(this.a.getString(2131362068)).append(" ").append(str);
            this.e.setText(stringBuilder);
            this.e.setOnTouchListener(this.n);
        }
    }

    private void c(cmb cmb) {
        if (this.c != null) {
            cmc a = cmc.a("item_image", cmb);
            this.c.setAspectRatio(1.91f);
            if (a != null) {
                if (a.b <= a.c) {
                    this.c.setScaleType(ScaleType.a);
                } else {
                    this.c.setScaleType(ScaleType.b);
                }
                this.c.a(a.a(a.a));
                this.c.setOnTouchListener(this.n);
            }
        }
    }

    private void c() {
        this.f.setTag("button");
        this.f.setOnTouchListener(this.n);
    }

    private void d() {
        this.i.setOnTouchListener(this.n);
    }

    private void e() {
        if (this.g != null) {
            this.g.setText(2131362030);
            this.g.setOnTouchListener(this.n);
        }
    }

    private void a(View view, MotionEvent motionEvent) {
        NativeCardUserAction a = NativeCardUserAction.a(f(), view, motionEvent, 0);
        String str = null;
        switch (view.getId()) {
            case 2131952128:
                str = "buynow_card_container_click";
                break;
            case 2131952130:
                str = "buynow_card_primary_image_click";
                break;
            case 2131952132:
                str = "buynow_card_cta_click";
                break;
            case 2131952133:
                str = "buynow_card_item_title_click";
                break;
            case 2131952134:
                str = "buynow_card_item_title_click";
                break;
        }
        this.m.a(a, this.o, this.l.l(), str, CommerceCardType.BUYNOW, this.l.d());
    }
}
