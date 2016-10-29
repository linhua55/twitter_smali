package com.twitter.android;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import com.twitter.android.timeline.an;
import com.twitter.android.util.av;
import com.twitter.android.widget.ConfirmCancelPendingTweetDialog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.ap;
import com.twitter.model.media.EditableMedia;
import defpackage.cen;
import defpackage.cet;

/* compiled from: Twttr */
public class sg extends vr {
    private TranslateAnimation a;
    private final long l;
    private final an m;
    private final int n;
    private av o;

    public sg(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, sn snVar, long j, an anVar, int i) {
        super(fragment, twitterScribeAssociation, null, cen.a(null, str, null, null), snVar);
        this.l = j;
        this.m = anVar;
        this.n = i;
    }

    public void a(cet cet) {
        if (cet.b() != this.l) {
            super.a(cet);
        } else {
            a();
        }
    }

    public void a(Tweet tweet, ap apVar) {
        if (apVar.c != this.l) {
            super.a(tweet, apVar);
        } else {
            a();
        }
    }

    protected void a() {
        Fragment fragment = (Fragment) this.b.get();
        if (fragment != null && this.c != null) {
            View view = fragment.getView();
            Animation animation = this.a;
            if (animation == null) {
                Resources resources = this.c.getResources();
                int integer = resources.getInteger(2131755022);
                float dimension = resources.getDimension(2131689694);
                TranslateAnimation translateAnimation = new TranslateAnimation(-dimension, 0.0f, 0.0f, 0.0f);
                translateAnimation.setDuration((long) integer);
                translateAnimation.setInterpolator(new OvershootInterpolator());
                sh shVar = new sh(this, view, translateAnimation);
                animation = new TranslateAnimation(0.0f, -dimension, 0.0f, 0.0f);
                animation.setDuration((long) integer);
                animation.setInterpolator(new LinearInterpolator());
                animation.setAnimationListener(shVar);
                this.a = animation;
            }
            view.startAnimation(animation);
        }
    }

    public void a(TweetActionType tweetActionType, TweetView tweetView) {
        Tweet tweet = tweetView.getTweet();
        super.a(tweetActionType, tweetView);
        if (tweet.y() && TweetActionType.e == tweetActionType) {
            this.d.a(this.e.c().g(), tweet.s);
        }
    }

    public void a(Tweet tweet, TweetView tweetView) {
        Fragment fragment = (Fragment) this.b.get();
        FragmentActivity activity = fragment != null ? fragment.getActivity() : null;
        if (activity == null) {
            return;
        }
        if (!tweet.q()) {
            TimelineFragment.a(tweetView, this.m, this.n);
        } else if (!tweet.t()) {
            this.i.a(tweet, tweetView, activity);
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

    public void a(Tweet tweet, TweetView tweetView, int i) {
        if (this.o != null) {
            this.o.a().a(tweet.H, i);
        }
    }

    public void a(av avVar) {
        this.o = avVar;
    }
}
