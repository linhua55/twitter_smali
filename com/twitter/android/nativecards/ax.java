package com.twitter.android.nativecards;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import bqk;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.n;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.TwitterUser;
import defpackage.cai;

/* compiled from: Twttr */
public class ax extends a implements a {
    final VideoContainerHost z;

    public ax(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity));
    }

    ax(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar) {
        this(activity, displayMode, fVar, aVar, (LinearLayout) LayoutInflater.from(activity).inflate(2130969096, new FrameLayout(activity), false), new ay());
    }

    ax(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, LinearLayout linearLayout, b bVar) {
        super(activity, displayMode, fVar, aVar, linearLayout, bVar);
        this.z = (VideoContainerHost) this.b.findViewById(2131951847);
    }

    public void a(cai cai) {
        super.a(cai);
        if (l() != null) {
            this.z.setVideoContainerConfig(new n(new TweetAVDataSource(this.w), this.t, bqk.c, Mode.a, null));
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        super.a(j, twitterUser);
        if (this.h != null) {
            this.h.setVisibility(8);
        }
    }

    public boolean c() {
        return j().c();
    }

    public au aR_() {
        return j().aR_();
    }

    public au aS_() {
        return j().aS_();
    }

    public au h() {
        return j().h();
    }

    public View i() {
        return j().i();
    }

    a j() {
        return this.z != null ? this.z.getAutoPlayableItem() : a.j;
    }
}
