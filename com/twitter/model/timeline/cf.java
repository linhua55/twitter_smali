package com.twitter.model.timeline;

import cni;
import com.twitter.model.core.cm;
import java.util.List;

/* compiled from: Twttr */
public class cf extends av implements ax, az {
    public final b a;

    private cf(ch chVar, int i) {
        super(chVar, i);
        this.a = chVar.a;
    }

    public List<cm> c() {
        return this.a.b();
    }

    public cni d() {
        for (cm cmVar : this.a.b()) {
            if (cmVar.f()) {
                return cmVar.w;
            }
        }
        return null;
    }
}
