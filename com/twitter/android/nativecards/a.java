package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
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
public abstract class a extends q implements OnClickListener, OnLongClickListener, bzs, cbd {
    protected ax a;
    protected LinearLayout b;
    protected Long b_;
    protected MediaImageView c;
    protected TextView d;
    protected TextView e;
    protected TextView f;
    protected CallToAction g;
    protected View h;
    protected long i;
    protected String k;
    protected Resources l;
    protected String m;
    protected String n;
    protected String o;
    protected cmc p;

    public a(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, LinearLayout linearLayout, b bVar) {
        super(activity, displayMode, fVar, aVar);
        this.a = ax.a(activity);
        this.l = activity.getResources();
        this.b = linearLayout;
        this.c = (MediaImageView) this.b.findViewById(2131952890);
        this.d = (TextView) this.b.findViewById(2131952891);
        this.e = (TextView) this.b.findViewById(2131952079);
        this.f = (TextView) this.b.findViewById(2131951868);
        if (this.f != null) {
            this.f.setVisibility(8);
        }
        this.g = (CallToAction) this.b.findViewById(2131952893);
        this.h = this.b.findViewById(2131952489);
        if (this.h != null) {
            this.h.setVisibility(8);
        }
        ((ViewGroup) this.b.findViewById(2131952892)).addView(bVar.a(activity, this.b), 0);
    }

    public void a(cai cai) {
        super.a(cai);
        this.m = caw.a("player_url", cai.c);
        this.n = caw.a("player_stream_url", cai.c);
        this.o = caw.a("player_stream_content_type", cai.c);
        this.p = cmc.a("player_image", cai.c);
        this.i = cai.b;
        bzr.a().a(this.i, this);
        this.b_ = cag.a("site", cai.c);
        cbc a = cbc.a();
        if (this.b_ != null) {
            a.a(this.b_.longValue(), this);
        }
    }

    public void a() {
        super.a();
        cbc a = cbc.a();
        if (this.b_ != null) {
            a.b(this.b_.longValue(), this);
        }
        bzr.a().b(this.i, this);
        if (this.c != null) {
            this.c.i();
        }
    }

    public void b() {
        if (this.c != null) {
            this.c.setFromMemoryOnly(false);
        }
    }

    public View e() {
        return this.b;
    }

    public void a(long j, Tweet tweet) {
        super.a(j, tweet);
        if (this.g != null) {
            this.g.setTweet(tweet);
        }
    }

    public void a(long j, cmb cmb) {
        CharSequence a;
        this.k = caw.a("card_url", cmb);
        if (this.e != null) {
            a = caw.a("description", cmb);
            if (a != null) {
                this.e.setText(a);
            }
            this.e.setOnClickListener(this);
            this.e.setOnLongClickListener(this);
        }
        if (this.f != null) {
            a = caw.a("title", cmb);
            if (a != null) {
                this.f.setVisibility(0);
                this.f.setText(a);
                this.f.setTypeface(this.a.a);
                this.f.setOnClickListener(this);
                this.f.setOnLongClickListener(this);
            }
        }
        if (this.g != null) {
            a(this.g, cmb);
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        if (this.b_ != null && this.b_.equals(Long.valueOf(j))) {
            if (this.d != null) {
                this.d.setText(twitterUser.d);
                this.d.setTypeface(this.a.c);
            }
            if (this.c != null) {
                this.c.a(com.twitter.media.request.a.a(twitterUser.e));
                this.c.setFromMemoryOnly(true);
            }
            if (this.h != null) {
                this.h.setVisibility(0);
                this.h.setOnClickListener(this);
            }
        }
    }

    public void onClick(View view) {
        if (view == this.h) {
            a(this.b_.longValue());
        } else {
            this.v.b(this.k);
        }
    }

    public boolean onLongClick(View view) {
        a(this.k, this.k);
        return false;
    }
}
