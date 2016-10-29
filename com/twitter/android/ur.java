package com.twitter.android;

import android.support.v4.app.Fragment;
import com.twitter.android.widget.ConfirmCancelPendingTweetDialog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.media.EditableMedia;
import defpackage.cen;

/* compiled from: Twttr */
class ur extends vr {
    final /* synthetic */ TweetFragment2 a;

    ur(TweetFragment2 tweetFragment2, Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, sn snVar) {
        this.a = tweetFragment2;
        super(fragment, twitterScribeAssociation, str, cen, snVar);
    }

    public void a(Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        super.a(tweet, mediaEntity, tweetView);
        if (tweetView != null) {
            TweetFragment2.a(this.a, "click", tweet);
        }
    }

    public void a(Tweet tweet, TweetView tweetView) {
        if (TweetFragment2.c(tweet) && this.a.isAdded() && TweetFragment2.a(this.a) != null && this.i != null) {
            this.i.a(tweet, tweetView, this.a.getActivity(), -1, new us(this, tweet));
        }
    }

    public void a(Tweet tweet, EditableMedia editableMedia, TweetView tweetView) {
        if (tweet.z != null) {
            Fragment fragment = (Fragment) this.b.get();
            if (fragment != null) {
                ConfirmCancelPendingTweetDialog.a(fragment.getFragmentManager(), tweet);
            }
        }
    }
}
