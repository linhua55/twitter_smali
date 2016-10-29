package com.twitter.android.av.video;

import android.app.Activity;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.twitter.android.av.ae;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.android.av.p;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.ai;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class m {
    public k a(Activity activity, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        if (p.a()) {
            return new e(activity, viewGroup, twitterScribeAssociation, aVDataSource, onClickListener);
        }
        return new g(activity, viewGroup, twitterScribeAssociation, aVDataSource, onClickListener);
    }

    public k a(Activity activity, ViewGroup viewGroup, bd bdVar, bk bkVar, ai aiVar, ae aeVar, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        if (p.a()) {
            return new e(activity, viewGroup, bdVar, bkVar, aiVar, aeVar, twitterScribeAssociation, aVDataSource, onClickListener);
        }
        return new g(activity, viewGroup, twitterScribeAssociation, aVDataSource, onClickListener);
    }
}
