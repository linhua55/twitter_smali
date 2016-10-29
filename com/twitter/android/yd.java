package com.twitter.android;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class yd extends c {
    final /* synthetic */ VideoEditorFragment a;

    yd(VideoEditorFragment videoEditorFragment) {
        this.a = videoEditorFragment;
    }

    public void onAnimationEnd(Animation animation) {
        VideoEditorFragment.b(this.a).setVisibility(8);
    }
}
