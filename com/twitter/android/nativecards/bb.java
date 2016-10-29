package com.twitter.android.nativecards;

import amp;
import android.content.Context;
import com.twitter.library.client.az;
import com.twitter.library.vineloops.VineLoopAggregator;
import com.twitter.library.vineloops.c;

/* compiled from: Twttr */
public class bb extends s {
    amp a;
    private final String b;
    private final VineLoopAggregator c;
    private final c d;

    public bb(Context context, String str) {
        this(str, VineLoopAggregator.a(context), c.a(context, az.a(context)));
    }

    bb(String str, VineLoopAggregator vineLoopAggregator, c cVar) {
        this.b = str;
        this.c = vineLoopAggregator;
        this.d = cVar;
    }

    public void a(Context context, VideoPlayerView videoPlayerView) {
        super.a(context, videoPlayerView);
        this.a = new amp(this);
        this.a.a(videoPlayerView.a);
    }

    public synchronized void a() {
        super.a();
        if (!(this.a == null || this.b == null)) {
            int a = this.a.a();
            if (a > 0) {
                this.c.a(this.b, a);
                this.d.a();
            }
        }
        this.a = null;
    }
}
