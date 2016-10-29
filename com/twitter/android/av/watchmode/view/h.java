package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bbu;
import com.twitter.android.av.ai;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.ay;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class h implements ai {
    @VisibleForTesting
    final Tweet a;
    @VisibleForTesting
    final TwitterScribeAssociation b;
    private final Context c;
    private final Session d;

    public h(TwitterScribeAssociation twitterScribeAssociation, Context context, Tweet tweet) {
        this(twitterScribeAssociation, context, tweet, bg.a().c());
    }

    @VisibleForTesting
    h(TwitterScribeAssociation twitterScribeAssociation, Context context, Tweet tweet, Session session) {
        this.b = twitterScribeAssociation;
        this.a = tweet;
        this.d = session;
        this.c = context.getApplicationContext();
    }

    public void a(String str) {
        bbu.a(new ay(this.d.g()).a(this.b.a(), this.b.b(), this.b.c(), "tweet", str).a().a(this.c, this.a, this.b, null));
    }
}
