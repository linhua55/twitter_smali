package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class bf extends c {
    final /* synthetic */ VideoClipRangeSeekBar a;

    bf(VideoClipRangeSeekBar videoClipRangeSeekBar) {
        this.a = videoClipRangeSeekBar;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.E = false;
    }
}
