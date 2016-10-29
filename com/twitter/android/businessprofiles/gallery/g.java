package com.twitter.android.businessprofiles.gallery;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.View.OnClickListener;
import bqk;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.n;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class g extends ViewHolder {
    private final VideoContainerHost a;

    public g(View view) {
        super(view);
        this.a = (VideoContainerHost) view;
    }

    public void a(c cVar, OnClickListener onClickListener, TwitterScribeAssociation twitterScribeAssociation) {
        this.a.setVideoContainerConfig(new n(new TweetAVDataSource(cVar.d()), twitterScribeAssociation, bqk.c, Mode.a, onClickListener));
    }
}
