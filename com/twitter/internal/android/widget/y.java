package com.twitter.internal.android.widget;

import com.google.android.exoplayer.text.Cue;

/* compiled from: Twttr */
class y {
    private int a;
    private int b;

    private y() {
        this.a = Cue.TYPE_UNSET;
        this.b = Cue.TYPE_UNSET;
    }

    public void a() {
        this.a = Cue.TYPE_UNSET;
        this.b = Cue.TYPE_UNSET;
    }

    private int b(int i) {
        if (this.a == Cue.TYPE_UNSET) {
            this.a = i;
        }
        return this.a;
    }

    public int a(int i) {
        int i2;
        if (this.b != Cue.TYPE_UNSET) {
            i2 = i - this.b;
        } else {
            i2 = i;
        }
        this.b = i;
        return i2;
    }

    public int a(int i, float f) {
        if (Math.abs(i) > 0) {
            return a((int) Math.ceil((double) (((float) b(i)) * f)));
        }
        return 0;
    }
}
