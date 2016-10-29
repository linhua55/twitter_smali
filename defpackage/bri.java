package defpackage;

import android.support.annotation.VisibleForTesting;
import tv.periscope.android.api.ApiManager;

@VisibleForTesting
/* compiled from: Twttr */
/* renamed from: bri */
class bri implements brf {
    private final ApiManager a;

    bri(ApiManager apiManager) {
        this.a = apiManager;
    }

    public void a(String str) {
        this.a.replayViewed(str);
    }

    public void b(String str) {
        this.a.pingReplayViewed(str, 0);
    }

    public void c(String str) {
        this.a.endReplayViewed(str, 0, 0);
    }
}
