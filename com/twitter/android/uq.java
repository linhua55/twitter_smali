package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class uq extends sn {
    final /* synthetic */ TweetFragment a;

    public uq(TweetFragment tweetFragment, Fragment fragment, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = tweetFragment;
        super(fragment, twitterScribeAssociation);
    }

    protected void a(long j, boolean z, int i) {
        this.a.a(j, z, i);
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session, TwitterScribeItem twitterScribeItem) {
        super.a(tweet, fragment, fragmentActivity, session, twitterScribeItem);
    }
}
