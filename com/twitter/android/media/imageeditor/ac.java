package com.twitter.android.media.imageeditor;

import android.os.Looper;
import com.twitter.util.concurrent.i;

/* compiled from: Twttr */
class ac extends i {
    ac() {
        super(Looper.getMainLooper(), false);
    }

    public void a() {
        this.c.removeCallbacksAndMessages(null);
    }
}
