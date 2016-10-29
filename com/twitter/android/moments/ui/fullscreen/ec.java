package com.twitter.android.moments.ui.fullscreen;

import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import com.twitter.util.y;

/* compiled from: Twttr */
class ec implements au {
    final /* synthetic */ dz a;
    private final Tweet b;
    private final y<Tweet> c;

    ec(dz dzVar, Tweet tweet, y<Tweet> yVar) {
        this.a = dzVar;
        this.b = tweet;
        this.c = yVar;
    }

    public void a(boolean z) {
        this.b.a = z;
        Tweet tweet;
        if (z) {
            tweet = this.b;
            tweet.o++;
        } else {
            tweet = this.b;
            tweet.o--;
        }
        this.c.a(this.b);
    }

    public void b(boolean z) {
        this.b.d = !z;
        Tweet tweet;
        if (z) {
            tweet = this.b;
            tweet.l--;
        } else {
            tweet = this.b;
            tweet.l++;
        }
        this.c.a(this.b);
    }

    public void c(boolean z) {
    }

    public void d(boolean z) {
        if (z) {
            this.a.g.a(this.a.j);
        }
    }
}
