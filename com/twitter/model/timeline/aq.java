package com.twitter.model.timeline;

import cni;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class aq extends av implements ax, az {
    public final c a;

    private aq(as asVar, int i) {
        super(asVar, i);
        this.a = asVar.a;
    }

    public List<cm> c() {
        return n.a(this.a.b);
    }

    public cni d() {
        for (cm cmVar : this.a.b) {
            if (cmVar.f()) {
                return cmVar.w;
            }
        }
        return null;
    }
}
