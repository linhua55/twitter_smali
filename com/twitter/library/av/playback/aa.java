package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import com.twitter.config.d;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public class aa {
    private final int a;

    public aa() {
        this(10);
    }

    protected aa(int i) {
        this.a = i;
    }

    public AVMediaPlayer a(AVMedia aVMedia, Context context, w wVar, Handler handler) {
        boolean z;
        Object obj = (aVMedia.h() && d.a("android_media_playback_use_exoplayer_by_default")) ? 1 : null;
        if (aVMedia.i() || obj != null) {
            z = true;
        } else {
            z = false;
        }
        return (AVMediaPlayer) new ab(this, aVMedia, handler, wVar, context, z).a(handler, this.a);
    }
}
