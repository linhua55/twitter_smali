package com.twitter.android.businessprofiles;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class f extends b {
    private final TwitterUser h;

    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    public /* bridge */ /* synthetic */ void onClick(View view) {
        super.onClick(view);
    }

    public f(ViewGroup viewGroup, Activity activity, m mVar, TwitterUser twitterUser, TwitterUser twitterUser2, long j) {
        super(viewGroup, activity, mVar, twitterUser, j, "resin_cs_pointer_cta");
        this.h = twitterUser2;
    }

    protected void b() {
        this.g.setText(2131363485);
    }

    protected TwitterUser a() {
        return this.h;
    }
}
