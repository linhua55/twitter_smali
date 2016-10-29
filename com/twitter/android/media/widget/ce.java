package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ce extends c {
    final /* synthetic */ VideoSegmentListItemView a;

    ce(VideoSegmentListItemView videoSegmentListItemView) {
        this.a = videoSegmentListItemView;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.k.setVisibility(8);
    }
}
