package com.twitter.model.dms;

import com.twitter.model.core.as;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ae extends c {
    public static final n<ae> c;
    public final long d;
    public final as e;

    static {
        c = new ag();
    }

    public ae(af afVar) {
        super(afVar);
        this.d = af.a(afVar);
        this.e = af.b(afVar);
    }

    public int a() {
        return 4;
    }
}
