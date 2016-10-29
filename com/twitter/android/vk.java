package com.twitter.android;

import android.support.v4.app.Fragment;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class vk extends sn {
    final /* synthetic */ TweetFragment2 a;

    public vk(TweetFragment2 tweetFragment2, Fragment fragment, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = tweetFragment2;
        super(fragment, twitterScribeAssociation);
    }

    protected void a(long j, boolean z, int i) {
        this.a.a(j, z, i);
    }
}
