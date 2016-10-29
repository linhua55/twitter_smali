package com.twitter.model.timeline;

import cni;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class bw extends av implements ax, az {
    public final cm a;

    private bw(by byVar, int i) {
        super(byVar, i);
        this.a = (cm) e.a(byVar.a);
    }

    public List<cm> c() {
        return n.b(this.a);
    }

    public cni d() {
        return this.a.w;
    }

    public long bf_() {
        return this.a.bf_();
    }
}
