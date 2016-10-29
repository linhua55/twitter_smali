package com.twitter.android.av.video;

import android.app.Activity;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.twitter.android.av.bd;
import com.twitter.android.moments.ui.fullscreen.en;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class d<A extends Activity & s> extends g<A> {
    public d(A a, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        super(a, viewGroup, twitterScribeAssociation, aVDataSource, new en(), onClickListener, new bd(), new h());
    }
}
