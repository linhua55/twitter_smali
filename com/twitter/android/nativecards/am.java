package com.twitter.android.nativecards;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cag;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public class am extends q implements OnClickListener, bzs, cbd {
    private static final int[] a;
    private static final int[] b;
    private static final int[] c;
    private final LinearLayout d;
    private final MediaImageView e;
    private final TextView f;
    private final View g;
    private final TextView h;
    private final TextView i;
    private final MediaImageView[] j;
    private final MediaImageView[] k;
    private final TextView[] l;
    private final View m;
    private long n;
    private Long o;

    static {
        a = new int[]{2131952905, 2131952908, 2131952918, 2131952921};
        b = new int[]{2131952906, 2131952909, 2131952919, 2131952922};
        c = new int[]{2131952907, 2131952910, 2131952920, 2131952923};
    }

    public am(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity));
    }

    public am(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        int i = 0;
        super(activity, displayMode, fVar, aVar);
        this.d = (LinearLayout) LayoutInflater.from(this.q).inflate(2130969100, new FrameLayout(this.q), false);
        this.e = (MediaImageView) this.d.findViewById(2131952890);
        this.f = (TextView) this.d.findViewById(2131952891);
        this.g = this.d.findViewById(2131952895);
        this.h = (TextView) this.d.findViewById(2131951868);
        this.i = (TextView) this.d.findViewById(2131952333);
        this.j = new MediaImageView[4];
        this.k = new MediaImageView[4];
        this.l = new TextView[4];
        while (i < 4) {
            this.j[i] = (MediaImageView) this.d.findViewById(a[i]);
            this.k[i] = (MediaImageView) this.d.findViewById(b[i]);
            this.l[i] = (TextView) this.d.findViewById(c[i]);
            i++;
        }
        this.m = this.d.findViewById(2131952489);
        if (this.m != null) {
            this.m.setVisibility(8);
        }
    }

    public void a(cai cai) {
        super.a(cai);
        this.n = cai.b;
        bzr.a().a(this.n, this);
        this.o = cag.a("site", cai.c);
        if (this.o != null) {
            cbc.a().a(this.o.longValue(), this);
        }
    }

    public void a() {
        super.a();
        cbc a = cbc.a();
        if (this.o != null) {
            a.b(this.o.longValue(), this);
        }
        bzr.a().b(this.n, this);
        for (int i = 0; i < 4; i++) {
            if (this.j[i] != null) {
                this.j[i].i();
            }
            if (this.k[i] != null) {
                this.k[i].i();
            }
        }
        if (this.e != null) {
            this.e.i();
        }
    }

    public void b() {
        for (int i = 0; i < 4; i++) {
            if (this.j[i] != null) {
                this.j[i].setFromMemoryOnly(false);
            }
            if (this.k[i] != null) {
                this.k[i].setFromMemoryOnly(false);
            }
        }
        if (this.e != null) {
            this.e.setFromMemoryOnly(false);
        }
    }

    public View e() {
        return this.d;
    }

    public void a(long j, cmb cmb) {
        d();
        a(cmb);
        b(cmb);
        for (int i = 0; i < 4; i++) {
            a(i, cmb);
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        int i = 0;
        if (this.f != null) {
            this.f.setText(twitterUser.d);
        }
        if (this.e != null) {
            this.e.a(com.twitter.media.request.a.a(twitterUser.e));
            this.e.setFromMemoryOnly(true);
        }
        if (this.m != null) {
            this.m.setVisibility(0);
            this.m.setOnClickListener(this);
            if (this.x != DisplayMode.FULL) {
                i = 8;
            }
            this.m.setVisibility(i);
        }
    }

    private void d() {
        int i = 0;
        if (this.g != null) {
            int i2;
            if (this.x == DisplayMode.FULL) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            View view = this.g;
            if (i2 == 0) {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    private void a(cmb cmb) {
        if (this.h != null) {
            CharSequence a = caw.a("title", cmb);
            if (a != null) {
                this.h.setText(a);
            }
        }
    }

    private void b(cmb cmb) {
        if (this.i != null) {
            CharSequence a = caw.a("subtitle", cmb);
            if (a != null) {
                this.i.setText(a);
            }
        }
    }

    private void a(int i, cmb cmb) {
        cmc a = cmc.a("choice_fade", cmb);
        MediaImageView mediaImageView = this.j[i];
        cmc a2 = cmc.a("choice" + i + "_image", cmb);
        if (mediaImageView != null) {
            if (a2 == null || a2.a == null) {
                mediaImageView.setVisibility(8);
            } else {
                mediaImageView.a(com.twitter.media.request.a.a(a2.a));
                mediaImageView.setFromMemoryOnly(true);
                mediaImageView.setScaleType(ScaleType.b);
                mediaImageView.setVisibility(0);
                if (this.x == DisplayMode.FORWARD) {
                    mediaImageView.setClickable(true);
                    mediaImageView.setOnClickListener(this);
                }
            }
        }
        mediaImageView = this.k[i];
        if (mediaImageView != null) {
            if (a == null || !aj.b(a.a)) {
                mediaImageView.setVisibility(8);
            } else {
                mediaImageView.a(com.twitter.media.request.a.a(a.a));
                mediaImageView.setFromMemoryOnly(true);
                mediaImageView.setScaleType(ScaleType.b);
                mediaImageView.setVisibility(0);
            }
        }
        TextView textView = this.l[i];
        if (textView != null) {
            CharSequence a3 = caw.a("result" + i + "_percent", cmb);
            if (aj.b(a3)) {
                textView.setText(a3);
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public void onClick(View view) {
        if (view == this.m) {
            a(this.o.longValue());
            return;
        }
        for (int i = 0; i < 4; i++) {
            if (view == this.j[i]) {
                this.s.a(this.w, this.t);
                return;
            }
        }
    }
}
