package com.twitter.library.av.model.parser;

import com.twitter.config.c;

/* compiled from: Twttr */
final class e {
    public final boolean a;
    public final boolean b;

    e(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    static e a() {
        return new e(c.a("dash_exo_player_3489", new String[]{"dash_enabled"}), true);
    }
}
