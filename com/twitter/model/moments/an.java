package com.twitter.model.moments;

import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.l;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class an {
    public static final n<an> a;
    public final Map<Long, aj> b;
    public final List<as> c;
    public final aq d;
    public final l e;
    public final long f;

    static {
        a = new aw();
    }

    public an(ap apVar) {
        this.c = e.a(apVar.a);
        this.d = apVar.b;
        this.e = apVar.c;
        this.b = e.a(apVar.d);
        this.f = apVar.e;
    }
}
