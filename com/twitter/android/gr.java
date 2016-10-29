package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.view.aa;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;

/* compiled from: Twttr */
class gr implements OnClickListener {
    private final aa a;
    private Tweet b;
    private cr c;

    gr(aa aaVar) {
        this.a = aaVar;
    }

    public void onClick(View view) {
        if (this.b != null && this.c != null) {
            this.a.a(this.b, this.c);
        }
    }

    public void a(Tweet tweet) {
        this.b = null;
        this.c = null;
        if (tweet != null && !tweet.w.c.c()) {
            this.c = (cr) tweet.w.c.a(0);
            this.b = tweet;
        }
    }
}
