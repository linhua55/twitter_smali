package com.twitter.library.av.playback;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;

@VisibleForTesting
/* compiled from: Twttr */
class ap extends BroadcastReceiver {
    private final AVPlayer a;
    private final ay b;

    ap(AVPlayer aVPlayer, ay ayVar) {
        this.a = aVPlayer;
        this.b = ayVar;
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.b.a(false);
            if (this.a.u()) {
                this.a.r();
            }
            this.a.a(true);
        } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
            this.b.a(true);
            this.a.k();
        }
    }
}
