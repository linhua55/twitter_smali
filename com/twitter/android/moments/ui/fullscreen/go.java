package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
class go implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ gm b;

    go(gm gmVar, Tweet tweet) {
        this.b = gmVar;
        this.a = tweet;
    }

    public void onClick(View view) {
        if (this.b.a.b()) {
            if (this.b.k != null) {
                this.b.k.c(this.b.a);
            }
        } else if (this.b.k != null) {
            this.b.j.a(this.b.k);
            this.b.k.b(this.b.a);
        }
        this.b.h.a(TweetActionType.b, this.a);
    }
}
