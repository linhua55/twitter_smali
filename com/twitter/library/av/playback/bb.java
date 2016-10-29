package com.twitter.library.av.playback;

import defpackage.bdc;

/* compiled from: Twttr */
class bb implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ int b;
    final /* synthetic */ ay c;

    bb(ay ayVar, String str, int i) {
        this.c = ayVar;
        this.a = str;
        this.b = i;
    }

    public void run() {
        String string;
        this.c.a.a("error", this.a);
        if (this.b == 1) {
            string = this.c.e.getString(bdc.media_playback_error);
        } else {
            string = this.a;
        }
        if (this.c.a.H()) {
            this.c.a.onCompletion(null);
        } else {
            super.a(this.b, string);
        }
    }
}
