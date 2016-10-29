package com.twitter.library.widget.tweet.content;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public abstract class a<ContentContainer extends f> implements i {
    public final Tweet g;
    public final TwitterScribeAssociation h;
    public final TwitterScribeAssociation i;
    public final WeakReference<Activity> j;
    public ContentContainer k;
    protected boolean l;
    protected final DisplayMode m;

    protected abstract ContentContainer a(Activity activity);

    protected abstract Object a();

    public a(Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        this.j = new WeakReference(activity);
        this.g = tweet;
        this.m = displayMode;
        this.h = twitterScribeAssociation;
        this.i = twitterScribeAssociation2;
    }

    public void ba_() {
        Activity activity = (Activity) this.j.get();
        if (activity != null) {
            this.k = a(activity);
            if (this.k != null) {
                if (activity instanceof s) {
                    ((s) activity).a(this);
                }
                this.k.a(a());
                this.l = true;
            }
        }
    }

    public void c() {
        if (this.k != null) {
            this.k.b();
        }
    }

    public void bb_() {
        if (this.l && this.k != null) {
            this.l = false;
            this.k.a();
            Activity activity = (Activity) this.j.get();
            if (activity instanceof s) {
                ((s) activity).b(this);
            }
        }
    }

    public View d() {
        return this.k != null ? this.k.e() : null;
    }

    public void a(Tweet tweet) {
    }

    public f f() {
        return this.k;
    }

    public void n() {
        if (this.k != null) {
            this.k.al_();
        }
    }

    public void a(boolean z) {
        if (this.k != null) {
            this.k.a(z);
        }
    }

    public void b(boolean z) {
        bb_();
        if (this.k != null) {
            this.k.b(z);
        }
    }

    public void e() {
        if (this.k != null) {
            this.k.ak_();
        }
    }

    public void o() {
        if (this.k != null) {
            this.k.am_();
        }
    }

    public void a(Bundle bundle) {
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(Configuration configuration) {
        if (this.k != null) {
            this.k.a(configuration);
        }
    }
}
