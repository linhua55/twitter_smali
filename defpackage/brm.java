package defpackage;

import com.twitter.config.d;
import com.twitter.library.av.playback.AVPlayer;

/* compiled from: Twttr */
/* renamed from: brm */
class brm implements bqy {
    final /* synthetic */ AVPlayer a;

    brm(AVPlayer aVPlayer) {
        this.a = aVPlayer;
    }

    public boolean a() {
        return this.a.e().c().c() == 7;
    }

    public String b() {
        return "heartbeat";
    }

    public long c() {
        return 1000 * d.a("live_video_scribe_heartbeat_interval", 30);
    }
}
