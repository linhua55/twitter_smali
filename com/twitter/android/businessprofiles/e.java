package com.twitter.android.businessprofiles;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class e extends b {
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    public /* bridge */ /* synthetic */ void onClick(View view) {
        super.onClick(view);
    }

    public e(ViewGroup viewGroup, Activity activity, m mVar, TwitterUser twitterUser, long j) {
        super(viewGroup, activity, mVar, twitterUser, j, "message_cta");
    }

    protected void b() {
        this.g.setText(2131361983);
    }

    protected TwitterUser a() {
        return this.d;
    }
}
