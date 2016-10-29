package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.ax;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cag;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public class au extends q implements OnClickListener, OnLongClickListener, bzs, cbd {
    private final ax a;
    private final LinearLayout b;
    private final MediaImageView c;
    private final TextView d;
    private final TextView e;
    private final TextView f;
    private final MediaImageView g;
    private final CallToAction h;
    private final View i;
    private final TextView j;
    private long k;
    private Long l;
    private Long m;
    private String n;
    private final Resources o;

    public au(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        super(activity, displayMode, fVar, aVar);
        Context applicationContext = activity.getApplicationContext();
        this.a = ax.a(applicationContext);
        this.o = applicationContext.getResources();
        this.b = (LinearLayout) LayoutInflater.from(applicationContext).inflate(2130969109, new FrameLayout(applicationContext), false);
        this.c = (MediaImageView) this.b.findViewById(2131952890);
        this.d = (TextView) this.b.findViewById(2131952891);
        this.e = (TextView) this.b.findViewById(2131951868);
        this.f = (TextView) this.b.findViewById(2131952079);
        this.g = (MediaImageView) this.b.findViewById(2131952522);
        this.h = (CallToAction) this.b.findViewById(2131952893);
        this.i = this.b.findViewById(2131952489);
        if (this.i != null) {
            this.i.setVisibility(8);
        }
        this.j = (TextView) this.b.findViewById(2131952347);
        if (this.j != null) {
            this.j.setVisibility(8);
        }
    }

    public void a(cai cai) {
        super.a(cai);
        this.k = cai.b;
        bzr.a().a(this.k, this);
        this.l = cag.a("site", cai.c);
        this.m = cag.a("creator", cai.c);
        cbc a = cbc.a();
        if (this.l != null) {
            a.a(this.l.longValue(), this);
        }
        if (this.m != null && !this.m.equals(this.l)) {
            a.a(this.m.longValue(), this);
        }
    }

    public void a() {
        super.a();
        cbc a = cbc.a();
        if (this.l != null) {
            a.b(this.l.longValue(), this);
        }
        if (!(this.m == null || this.m.equals(this.l))) {
            a.b(this.m.longValue(), this);
        }
        bzr.a().b(this.k, this);
        if (this.g != null) {
            this.g.i();
        }
        if (this.c != null) {
            this.c.i();
        }
    }

    public void b() {
        if (this.g != null) {
            this.g.setFromMemoryOnly(false);
        }
        if (this.c != null) {
            this.c.setFromMemoryOnly(false);
        }
    }

    public View e() {
        return this.b;
    }

    public void a(long j, Tweet tweet) {
        super.a(j, tweet);
        if (this.h != null) {
            this.h.setTweet(tweet);
        }
    }

    public void a(long j, cmb cmb) {
        CharSequence a;
        this.m = cag.a("creator", cmb);
        this.n = caw.a("card_url", cmb);
        if (this.e != null) {
            a = caw.a("title", cmb);
            if (a != null) {
                this.e.setText(a);
                this.e.setTypeface(this.a.a);
                this.e.setOnClickListener(this);
                this.e.setOnLongClickListener(this);
            }
        }
        if (this.f != null) {
            a = caw.a("description", cmb);
            if (a != null) {
                this.f.setText(a);
                this.f.setTypeface(this.a.a);
                this.f.setOnClickListener(this);
                this.f.setOnLongClickListener(this);
            }
        }
        if (this.g != null) {
            cmc a2 = cmc.a("summary_photo_image", cmb);
            if (a2 == null || a2.a == null) {
                this.g.setVisibility(8);
            } else {
                this.g.setAspectRatio(a2.a(1.3333334f));
                this.g.a(com.twitter.media.request.a.a(a2.a));
                this.g.setFromMemoryOnly(true);
                this.g.setVisibility(0);
                this.g.setOnClickListener(this);
                this.g.setOnLongClickListener(this);
            }
        }
        if (this.h != null) {
            a(this.h, cmb);
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        if (this.l != null && this.l.equals(Long.valueOf(j))) {
            if (this.d != null) {
                this.d.setText(twitterUser.d);
                this.d.setTypeface(this.a.c);
            }
            if (this.c != null) {
                this.c.a(com.twitter.media.request.a.a(twitterUser.e));
                this.c.setFromMemoryOnly(true);
            }
            if (this.i != null) {
                this.i.setVisibility(0);
                this.i.setOnClickListener(this);
            }
        }
        if (this.m != null && this.m.equals(Long.valueOf(j)) && this.j != null) {
            this.j.setText(this.o.getString(2131362031, new Object[]{twitterUser.d, twitterUser.k}));
            this.j.setVisibility(0);
            this.j.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (view == this.j) {
            a(this.m.longValue());
        } else if (view == this.i) {
            a(this.l.longValue());
        } else {
            this.v.b(this.n);
        }
    }

    public boolean onLongClick(View view) {
        a(this.n, this.n);
        return false;
    }
}
