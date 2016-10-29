package com.twitter.android.client;

import com.twitter.badge.LauncherIconBadgeUpdaterService;
import com.twitter.library.service.ac;
import com.twitter.library.service.v;
import java.util.List;

/* compiled from: Twttr */
class ae extends ac<Void, v> {
    final /* synthetic */ z a;

    private ae(z zVar) {
        this.a = zVar;
    }

    public void a(v vVar) {
        for (Integer intValue : (List) vVar.l().b()) {
            int intValue2 = intValue.intValue();
            z.b(this.a).remove(intValue2);
            z.c(this.a).remove(intValue2);
        }
        if (z.b(this.a).size() == 0) {
            z.e(this.a).b(z.d(this.a));
        }
        LauncherIconBadgeUpdaterService.a(z.f(this.a));
    }
}
