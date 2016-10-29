package defpackage;

import android.support.annotation.VisibleForTesting;
import tv.periscope.android.api.ApiManager;

@VisibleForTesting
/* compiled from: Twttr */
/* renamed from: brh */
class brh implements brf {
    private final ApiManager a;

    brh(ApiManager apiManager) {
        this.a = apiManager;
    }

    public void a(String str) {
        this.a.startWatching(str);
    }

    public void b(String str) {
        this.a.pingWatching(str, null, 0, 0);
    }

    public void c(String str) {
        this.a.endWatching(str, null, 0, 0);
    }
}
