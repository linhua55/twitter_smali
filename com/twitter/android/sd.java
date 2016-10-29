package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.revenue.d;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
final class sd extends sn {
    sd(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, d dVar) {
        super(fragment, twitterScribeAssociation, dVar);
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session) {
        if (tweet.y()) {
            TimelineFragment.a(this.c, tweet);
        } else if (tweet.v() || tweet.w()) {
            TimelineFragment.a(this.c, this.d, fragmentActivity, this, tweet, this.f);
        } else {
            super.a(tweet, fragment, fragmentActivity, session);
        }
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session, TwitterScribeItem twitterScribeItem) {
        super.a(tweet, fragment, fragmentActivity, session, twitterScribeItem);
    }
}
