package com.twitter.library.av;

import android.content.Context;
import com.twitter.library.av.playback.AVPlayerAttachment;
import defpackage.bqu;

/* compiled from: Twttr */
public class az {
    public VideoViewContainer a(Context context, AVPlayerAttachment aVPlayerAttachment) {
        return a(context, aVPlayerAttachment, new bb());
    }

    public VideoViewContainer a(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar) {
        if (bqu.a()) {
            return new SimpleVideoViewContainer(context, aVPlayerAttachment, bbVar);
        }
        return new SynchronizingVideoViewContainer(context, aVPlayerAttachment, bbVar);
    }
}
