package com.twitter.library.media.util;

import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;

/* compiled from: Twttr */
final class f implements e {
    private final AudioManager a;

    private f(AudioManager audioManager) {
        this.a = audioManager;
    }

    public int a(OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        return this.a.requestAudioFocus(onAudioFocusChangeListener, i, i2);
    }

    public void a(OnAudioFocusChangeListener onAudioFocusChangeListener) {
        this.a.abandonAudioFocus(onAudioFocusChangeListener);
    }
}
