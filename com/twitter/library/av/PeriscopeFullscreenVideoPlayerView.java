package com.twitter.library.av;

import android.content.Context;
import android.graphics.Rect;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class PeriscopeFullscreenVideoPlayerView extends VideoPlayerView {
    public PeriscopeFullscreenVideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, aw awVar, Mode mode) {
        super(context, aVPlayerAttachment, awVar, mode);
    }

    protected Rect a(int i, int i2, int i3, int i4) {
        return new Rect(0, 0, i3 - i, i4 - i2);
    }
}
