package com.twitter.android.highlights;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.nt;
import com.twitter.library.api.timeline.d;
import com.twitter.library.api.timeline.h;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import com.twitter.model.core.Tweet;
import com.twitter.util.t;
import defpackage.bbu;

/* compiled from: Twttr */
public class ao {
    public final CompoundDrawableAnimButton a;
    public final CompoundDrawableAnimButton b;
    public boolean c;
    private final Context d;
    private final ScribeItem e;
    private final ap f;
    private final String g;
    private final String h;
    private Tweet i;

    public ao(Context context, Tweet tweet, CompoundDrawableAnimButton compoundDrawableAnimButton, CompoundDrawableAnimButton compoundDrawableAnimButton2, ScribeItem scribeItem, String str, String str2) {
        this.d = context.getApplicationContext();
        this.e = scribeItem;
        this.a = compoundDrawableAnimButton;
        this.b = compoundDrawableAnimButton2;
        a(tweet);
        this.f = new ap(this);
        this.g = str;
        this.h = str2;
    }

    public void a(Tweet tweet) {
        this.i = tweet;
        this.a.setChecked(this.i.a);
        a(this.a, this.i.o);
        this.b.setChecked(this.i.d);
        a(this.b, this.i.l);
    }

    public void a(az azVar, Session session) {
        boolean z = !this.i.a;
        this.a.toggle();
        a(azVar, session, z);
        a(session, "story", "tweet", z ? "favorite" : "unfavorite");
        Tweet tweet = this.i;
        tweet.o = (z ? 1 : -1) + tweet.o;
        this.i.a = z;
        a(this.a, this.i.o);
        this.c = true;
    }

    public void a(FragmentActivity fragmentActivity, Session session) {
        this.f.a(session);
        new nt(fragmentActivity, this.i).a(12).a(this.f).a().a();
    }

    private void a(CompoundDrawableAnimButton compoundDrawableAnimButton, int i) {
        if (i > 0) {
            compoundDrawableAnimButton.setText(t.a(this.d.getResources(), (long) i, true));
        } else {
            compoundDrawableAnimButton.setText(null);
        }
    }

    private void a(boolean z) {
        int i;
        boolean z2 = true;
        Tweet tweet = this.i;
        int i2 = tweet.l;
        if (z) {
            i = -1;
        } else {
            i = 1;
        }
        tweet.l = i + i2;
        Tweet tweet2 = this.i;
        if (z) {
            z2 = false;
        }
        tweet2.d = z2;
        a(this.b, this.i.l);
        this.b.setChecked(this.i.d);
    }

    protected void a(az azVar, Session session, boolean z) {
        x a;
        if (z) {
            a = new d(this.d, session, this.i.H, this.i.u).a(this.i.f).a(Boolean.valueOf(this.i.l()));
        } else {
            a = new h(this.d, session, this.i.H).a(this.i.f);
        }
        azVar.a(a, null);
    }

    void a(Session session, String str, String str2, String str3) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(session.g()).b(this.g, this.h, str, str2, str3)).a(this.e)).a(this.d, this.i, null, null));
    }
}
