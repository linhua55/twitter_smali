package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class cd extends c {
    final /* synthetic */ VideoSegmentListItemView a;

    cd(VideoSegmentListItemView videoSegmentListItemView) {
        this.a = videoSegmentListItemView;
    }

    public void onAnimationStart(Animation animation) {
        this.a.k.setVisibility(0);
    }
}
