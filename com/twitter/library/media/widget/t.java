package com.twitter.library.media.widget;

import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
class t implements Runnable {
    final /* synthetic */ PromotedAdaptiveTweetMediaView a;

    t(PromotedAdaptiveTweetMediaView promotedAdaptiveTweetMediaView) {
        this.a = promotedAdaptiveTweetMediaView;
    }

    public void run() {
        this.a.a(PromotedEvent.at);
    }
}
