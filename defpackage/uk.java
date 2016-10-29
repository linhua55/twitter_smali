package defpackage;

import android.content.Context;
import atn;
import bfl;
import bfm;
import bfn;
import com.twitter.library.client.Session;
import com.twitter.model.av.n;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
/* renamed from: uk */
public class uk extends atn<Long, x<n>, bfn> {
    private final Context a;
    private final Session b;

    public uk(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    protected x<n> a(bfn bfn) {
        n g = bfn.g();
        return g != null ? x.a(g) : x.a();
    }

    protected bfn a(Long l) {
        return l != null ? new bfm(this.a, this.b, l.longValue()) : new bfl(this.a, this.b);
    }
}
