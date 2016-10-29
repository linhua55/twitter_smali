package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class gn implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ gm b;

    gn(gm gmVar, Tweet tweet) {
        this.b = gmVar;
        this.a = tweet;
    }

    public void onClick(View view) {
        this.b.h.c(this.a);
    }
}
