package com.twitter.library.av.playback;

/* compiled from: Twttr */
public class ax implements aw {
    private final AVPlayer a;

    public ax(AVPlayer aVPlayer) {
        this.a = aVPlayer;
    }

    public void a(boolean z) {
        this.a.b(z);
    }

    public void a(AVPlayer$PlayerPauseType aVPlayer$PlayerPauseType) {
        this.a.a(aVPlayer$PlayerPauseType);
    }

    public void n() {
        if (this.a.M() == null) {
            this.a.c(false);
            this.a.a(null);
        }
    }

    public void o() {
        if (this.a.u()) {
            a(AVPlayer$PlayerPauseType.HARD);
        } else {
            a(this.a.x());
        }
    }

    public void a(float f) {
        this.a.b(f);
    }

    public void p() {
        this.a.B();
    }
}
