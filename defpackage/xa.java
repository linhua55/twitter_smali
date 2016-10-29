package defpackage;

import android.content.Context;
import cly;
import com.twitter.model.dms.l;

/* compiled from: Twttr */
/* renamed from: xa */
public abstract class xa {
    protected final l a;
    protected final cly b;
    protected final String c;
    protected final long d;
    protected final long e;
    protected final Context f;

    protected xa(Context context, String str, long j, l lVar, cly cly) {
        this.f = context;
        this.c = str;
        this.b = cly;
        this.d = j;
        this.a = lVar;
        this.e = this.a.k();
    }

    public long a() {
        return this.d;
    }
}
