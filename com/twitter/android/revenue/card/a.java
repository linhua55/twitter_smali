package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.View;
import com.twitter.android.card.CardActionHelper;
import com.twitter.android.card.f;
import com.twitter.android.card.i;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cah;
import defpackage.cai;
import defpackage.cax;
import defpackage.cay;

/* compiled from: Twttr */
public abstract class a extends cah implements bzs, cay {
    private long a;
    private long b;
    protected final f c_;
    protected final Context i;
    protected final com.twitter.android.card.a k;
    protected TwitterScribeAssociation l;
    protected TwitterScribeAssociation m;
    protected CardActionHelper n;
    protected Tweet o;
    protected DisplayMode p;
    protected View q;

    protected a(Context context, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar) {
        this.p = displayMode;
        this.i = context.getApplicationContext();
        this.k = aVar;
        this.c_ = fVar;
        this.c_.a(this.l);
        this.n = new CardActionHelper(context, this.k, this.c_, i.a(this.p));
    }

    public void a(cai cai) {
        this.a = cai.a;
        cax.a().a(this.a, this);
        this.b = cai.b;
        bzr.a().a(this.b, this);
        this.l = (TwitterScribeAssociation) cai.a("params_extra_scribe_association", TwitterScribeAssociation.class);
        this.c_.a(this.l);
        this.m = (TwitterScribeAssociation) cai.a("params_extra_source_scribe_association", TwitterScribeAssociation.class);
    }

    public void a() {
        cax.a().b(this.a, this);
        bzr.a().b(this.b, this);
    }

    public void a(long j, Tweet tweet) {
        this.o = tweet;
        this.c_.a(tweet);
    }

    public View e() {
        return this.q;
    }
}
