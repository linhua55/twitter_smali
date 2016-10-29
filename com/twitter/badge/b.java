package com.twitter.badge;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
public class b extends ad {
    private final Context a;
    private final bg b;

    public b(Context context, bg bgVar) {
        this.a = context;
        this.b = bgVar;
    }

    public void a(Session session) {
        LauncherIconBadgeUpdaterService.a(this.a);
    }

    public void a(Session session, boolean z) {
        if (this.b.d(session)) {
            LauncherIconBadgeUpdaterService.b(this.a);
        }
    }
}
