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
class tu extends vr {
    final /* synthetic */ TweetFragment a;

    tu(TweetFragment tweetFragment, Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, cen cen, sn snVar) {
        this.a = tweetFragment;
        super(fragment, twitterScribeAssociation, str, cen, snVar);
    }

    public void a(Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        super.a(tweet, mediaEntity, tweetView);
        if (tweetView != null) {
            TweetFragment.a(this.a, "click", tweet);
        }
    }

    public void a(Tweet tweet, TweetView tweetView) {
        if (TweetFragment.c(tweet) && this.a.isAdded() && TweetFragment.a(this.a) != null && this.i != null) {
            this.i.a(tweet, tweetView, this.a.getActivity(), -1, new tv(this, tweet));
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
