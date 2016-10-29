package defpackage;

import android.content.Context;
import blz;
import com.twitter.library.client.Session;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: ada */
final class ada implements b<Long, blz> {
    final /* synthetic */ Context a;
    final /* synthetic */ Session b;
    final /* synthetic */ byi c;

    ada(Context context, Session session, byi byi) {
        this.a = context;
        this.b = session;
        this.c = byi;
    }

    public blz a(Long l) {
        return new blz(this.a, this.b, this.c, l.longValue());
    }
}
