package com.twitter.android.av.video;

import android.app.Activity;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.twitter.android.av.ae;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.ai;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class l extends m {
    public k a(Activity activity, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        return new d(activity, viewGroup, twitterScribeAssociation, aVDataSource, onClickListener);
    }

    public k a(Activity activity, ViewGroup viewGroup, bd bdVar, bk bkVar, ai aiVar, ae aeVar, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        return new d(activity, viewGroup, twitterScribeAssociation, aVDataSource, onClickListener);
    }
}
