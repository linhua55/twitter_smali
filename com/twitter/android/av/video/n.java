package com.twitter.android.av.video;

import android.view.View.OnClickListener;
import bqk;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class n {
    public final AVDataSource a;
    public final TwitterScribeAssociation b;
    public final bqk c;
    public final Mode d;
    public final OnClickListener e;
    public final a f;
    public final h g;

    public n(AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation, bqk bqk, Mode mode, OnClickListener onClickListener) {
        this(aVDataSource, twitterScribeAssociation, bqk, mode, onClickListener, a.a(aVDataSource));
    }

    public n(AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation, bqk bqk, Mode mode, OnClickListener onClickListener, a aVar) {
        this(aVDataSource, twitterScribeAssociation, bqk, mode, onClickListener, aVar, null);
    }

    public n(AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation, bqk bqk, Mode mode, OnClickListener onClickListener, a aVar, h hVar) {
        this.a = aVDataSource;
        this.b = twitterScribeAssociation;
        this.c = bqk;
        this.d = mode;
        this.e = onClickListener;
        this.f = aVar;
        this.g = hVar;
    }
}
