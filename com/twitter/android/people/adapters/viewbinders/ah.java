package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
class ah implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ TwitterUser b;
    final /* synthetic */ ag c;

    ah(ag agVar, Context context, TwitterUser twitterUser) {
        this.c = agVar;
        this.a = context;
        this.b = twitterUser;
    }

    public void onClick(View view) {
        this.c.a(this.a, this.b);
    }
}
