package com.twitter.android;

import android.app.Activity;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.model.geo.TwitterPlace;

/* compiled from: Twttr */
class gk extends vq {
    final /* synthetic */ GalleryActivity a;

    gk(GalleryActivity galleryActivity, Activity activity, Session session, String str, String str2, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = galleryActivity;
        super(activity, session, str, str2, twitterScribeAssociation);
    }

    public void a(Tweet tweet, TwitterPlace twitterPlace, TweetView tweetView) {
        this.a.r();
    }

    public void a(Tweet tweet, long j, TweetView tweetView) {
        this.a.s();
    }
}
