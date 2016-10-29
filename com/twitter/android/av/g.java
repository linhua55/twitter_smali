package com.twitter.android.av;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public abstract class g {
    protected Tweet a;
    private String b;
    private TwitterScribeAssociation c;
    private PointF d;
    private PointF e;
    private PointF f;
    private PointF g;
    private boolean h;

    protected abstract Class<? extends AVCardCanvasActivity> a();

    public g() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = true;
    }

    public g a(Tweet tweet) {
        this.a = tweet;
        return this;
    }

    public g a(String str) {
        this.b = str;
        return this;
    }

    public g a(TwitterScribeAssociation twitterScribeAssociation) {
        this.c = twitterScribeAssociation;
        return this;
    }

    public g a(PointF pointF, PointF pointF2) {
        this.d = pointF;
        this.e = pointF2;
        return this;
    }

    public g a(boolean z) {
        this.h = z;
        return this;
    }

    public Intent a(Context context) {
        Intent intent = new Intent(context, a());
        intent.putExtra("tweet", this.a);
        intent.putExtra("media_source_url", this.b);
        if (this.c != null) {
            intent.putExtra("association", this.c);
        }
        if (!(this.d == null || this.e == null)) {
            intent.putExtra("initial_top_left_coords", this.d);
            intent.putExtra("initial_size", this.e);
        }
        if (!(this.g == null || this.f == null)) {
            intent.putExtra("return_top_left_coords", this.f);
            intent.putExtra("return_size", this.g);
        }
        return intent;
    }

    public void b(Context context) {
        Runnable c = c(context);
        if ((context instanceof Activity) && this.h) {
            OpenUriHelper.a().a((Activity) context, c);
        } else {
            c.run();
        }
    }

    private Runnable c(Context context) {
        return new h(this, context);
    }
}
