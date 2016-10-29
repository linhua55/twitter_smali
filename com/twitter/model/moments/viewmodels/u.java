package com.twitter.model.moments.viewmodels;

import android.annotation.SuppressLint;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage.VideoType;

@SuppressLint({"NullableEnum"})
/* compiled from: Twttr */
public class u extends p<MomentTweetStreamingVideoPage, u> {
    k j;
    VideoType k;

    protected /* synthetic */ Object c() {
        return d();
    }

    protected MomentTweetStreamingVideoPage d() {
        return new MomentTweetStreamingVideoPage(this);
    }

    public u a(k kVar) {
        this.j = kVar;
        return this;
    }

    public u a(VideoType videoType) {
        this.k = videoType;
        return this;
    }
}
