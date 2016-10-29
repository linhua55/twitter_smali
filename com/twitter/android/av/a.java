package com.twitter.android.av;

import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.au;

/* compiled from: Twttr */
public class a {
    private final AVDataSource a;

    public a(au auVar) {
        this.a = auVar.c();
    }

    public d a() {
        switch (this.a.c()) {
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new o(this.a);
            default:
                return new bg(this.a);
        }
    }
}
