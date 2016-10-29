package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import com.twitter.android.nn;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
public class a {
    private final Activity a;
    private final int b;

    public a(Activity activity, int i) {
        this.a = activity;
        this.b = i;
    }

    public void a(Tweet tweet, long j) {
        a(tweet, tweet.c ? tweet.s : tweet.b, tweet.m, j);
    }

    public void a(TwitterUser twitterUser, long j) {
        a(null, twitterUser.c, twitterUser.S, j);
    }

    public void a(ab abVar, Tweet tweet, com.twitter.model.moments.a aVar) {
        nn b = new nn().a("reportmoment").a(aVar.b).b(abVar.b).b(abVar.a());
        if (tweet != null) {
            b.c(tweet.H).a(true);
        }
        this.a.startActivityForResult(b.a(this.a), this.b);
    }

    private void a(Tweet tweet, long j, int i, long j2) {
        nn nnVar = new nn();
        if (tweet != null) {
            nnVar.a(tweet);
        }
        nnVar.a(j).b(j2).a(i).c(true).d(true);
        this.a.startActivityForResult(nnVar.a(this.a), this.b);
    }
}
