package defpackage;

import android.content.Context;
import bpd;
import com.twitter.android.av.v;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.search.a;
import com.twitter.library.api.timeline.s;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import java.util.Arrays;

/* compiled from: Twttr */
/* renamed from: boj */
public class boj extends x {
    private final long[] a;
    private final TwitterUser b;
    private final boolean c;
    private final ab g;

    public boj(Context context, Session session, long[] jArr, boolean z) {
        super(context, boj.class.getName(), new ab(session));
        this.a = jArr;
        this.b = session.f();
        this.c = z;
        this.g = N();
    }

    protected void a_(aa aaVar) {
        int a = an.a(this.a.length, 100);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < a) {
            int i4 = i * 100;
            if (((bpd) new bpd(this.p, this.e, this.g, Arrays.copyOfRange(this.a, i4, Math.min(i4 + 100, this.a.length))).a(this)).P().b()) {
                b((AsyncOperation) new a(this.p, this.g, this.a));
                i4 = 1;
                i2 = i3;
            } else {
                i4 = i2;
                i2 = 1;
            }
            i++;
            i3 = i2;
            i2 = i4;
        }
        if (!(i3 == 0 || i2 == 0)) {
            aaVar.a(418);
        }
        if (i2 != 0 && this.c) {
            b((AsyncOperation) (s) new s(this.p, this.g, this.b, 1).f(v.a()).k("Request being made to fill timeline with new followed users tweets. User did not trigger this request."));
        }
    }

    public long[] a() {
        return this.a;
    }
}
