package com.twitter.android.highlights;

import android.view.View;
import android.view.ViewGroup;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.media.widget.TweetMediaView;

/* compiled from: Twttr */
public class v extends bq {
    public final TweetMediaView a;
    public final ViewGroup b;
    public final View c;
    public final View d;
    public VideoPlayerView e;

    public v(int i, View view) {
        super(i, view);
        this.a = (TweetMediaView) view.findViewById(2131952589);
        this.b = (ViewGroup) view.findViewById(2131952063);
        this.b.setTag(this);
        this.c = view.findViewById(2131952587);
        this.c.setTag(this);
        this.d = view.findViewById(2131952588);
        this.d.setTag(this);
    }
}
