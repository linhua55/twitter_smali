package com.twitter.android.businessprofiles;

import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.model.businessprofiles.KeyEngagementType;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import defpackage.cal;
import defpackage.cgl;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class a {
    private final ViewGroup a;
    private final View b;
    private final m c;
    private final TwitterUser d;
    private final WeakReference<Activity> e;

    public a(ViewGroup viewGroup, View view, m mVar, TwitterUser twitterUser, Activity activity) {
        this.a = viewGroup;
        this.b = view;
        this.c = mVar;
        this.d = twitterUser;
        this.e = new WeakReference(activity);
    }

    public boolean a() {
        Activity activity = (Activity) this.e.get();
        if (activity == null) {
            return false;
        }
        this.a.setVisibility(8);
        return a(activity);
    }

    private boolean a(Activity activity) {
        if (this.c.e != KeyEngagementType.c || this.c.f == null || this.c.f.e == null) {
            return false;
        }
        i b = b(activity, this.d.c, this.c.f.e);
        if (b == null) {
            return false;
        }
        b.ba_();
        b.c();
        View d = b.d();
        if (d == null) {
            return false;
        }
        this.a.setVisibility(0);
        this.a.addView(d);
        a(activity, this.d.c, this.c.f.e).a("impression", "platform_card");
        this.b.setVisibility(8);
        return true;
    }

    @VisibleForTesting
    f a(Activity activity, long j, cgl cgl) {
        f hVar = new h(activity);
        hVar.a(j);
        hVar.a(cgl.N());
        return hVar;
    }

    @VisibleForTesting
    i b(Activity activity, long j, cgl cgl) {
        return cal.a(activity, j, cgl);
    }
}
