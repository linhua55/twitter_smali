package com.twitter.android;

import bbu;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class vh {
    public final String a;
    private boolean b;

    vh(String str) {
        this.b = false;
        this.a = str;
    }

    void a(long j) {
        if (!this.b) {
            bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{this.a}));
            this.b = true;
        }
    }
}
