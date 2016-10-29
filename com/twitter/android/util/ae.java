package com.twitter.android.util;

import android.media.SoundPool;

/* compiled from: Twttr */
final class ae implements Runnable {
    final /* synthetic */ SoundPool a;

    ae(SoundPool soundPool) {
        this.a = soundPool;
    }

    public void run() {
        this.a.release();
    }
}
