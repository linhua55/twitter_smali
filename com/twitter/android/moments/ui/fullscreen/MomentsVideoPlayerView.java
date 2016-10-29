package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.aw;
import com.twitter.library.av.az;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class MomentsVideoPlayerView extends VideoPlayerView {
    public MomentsVideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, aw awVar, Mode mode) {
        super(context, aVPlayerAttachment, new az().a(context, aVPlayerAttachment), awVar, mode);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(0, 0, i3 - i, i4 - i2);
        }
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }
}
