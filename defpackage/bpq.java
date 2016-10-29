package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: bpq */
public final class bpq extends f<bpp> {
    private Context a;
    private Session b;
    private boolean c;
    private boolean d;
    private long[] e;
    private long[] f;
    private boolean g;
    private boolean h;
    private di i;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bpq a(Context context) {
        this.a = context;
        return this;
    }

    public bpq a(Session session) {
        this.b = session;
        return this;
    }

    public bpq a(long[] jArr) {
        this.e = jArr;
        return this;
    }

    public bpq a(di diVar) {
        this.i = diVar;
        return this;
    }

    protected bpp d() {
        return new bpp(this);
    }
}
