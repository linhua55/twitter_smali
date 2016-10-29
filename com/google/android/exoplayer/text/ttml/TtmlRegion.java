package com.google.android.exoplayer.text.ttml;

import com.google.android.exoplayer.text.Cue;

/* compiled from: Twttr */
final class TtmlRegion {
    public final float line;
    public final float position;
    public final float width;

    public TtmlRegion() {
        this(Cue.DIMEN_UNSET, Cue.DIMEN_UNSET, Cue.DIMEN_UNSET);
    }

    public TtmlRegion(float f, float f2, float f3) {
        this.position = f;
        this.line = f2;
        this.width = f3;
    }
}
