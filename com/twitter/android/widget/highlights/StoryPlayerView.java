package com.twitter.android.widget.highlights;

import android.content.Context;
import com.twitter.library.av.ScaleType;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class StoryPlayerView extends VideoPlayerView {
    public StoryPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment) {
        super(context, aVPlayerAttachment, Mode.a);
        m();
        q();
    }

    protected ScaleType a(Mode mode) {
        return ScaleType.FIT;
    }
}
