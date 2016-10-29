package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
/* renamed from: acv */
class acv implements cyw<Long, x<TwitterUser>> {
    final /* synthetic */ acu a;

    acv(acu acu) {
        this.a = acu;
    }

    public x<TwitterUser> a(Long l) {
        return x.b(this.a.a.a(l.longValue()));
    }
}
