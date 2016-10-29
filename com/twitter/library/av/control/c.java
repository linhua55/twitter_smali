package com.twitter.library.av.control;

import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
public class c {
    private final boolean a;
    private final int b;
    private final int c;

    public c(boolean z, int i, int i2) {
        this.a = z;
        this.b = i;
        this.c = i2;
    }

    public boolean a(bd bdVar) {
        return this.a && bdVar.c >= ((long) this.b) && bdVar.b >= ((long) this.c);
    }
}
