package com.twitter.model.timeline;

import cni;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import java.util.List;

/* compiled from: Twttr */
public class ck extends av implements ax, az, ba {
    public final cp a;
    public final p o;

    private ck(cm cmVar, int i) {
        super(cmVar, i);
        this.a = cmVar.a;
        this.o = cmVar.l;
    }

    public List<cm> c() {
        return this.a.b;
    }

    public List<TwitterUser> a() {
        return this.a.a;
    }

    public cni d() {
        for (cm cmVar : this.a.b) {
            if (cmVar.f()) {
                return cmVar.w;
            }
        }
        for (TwitterUser twitterUser : this.a.a) {
            if (twitterUser.B != null) {
                return twitterUser.B;
            }
        }
        return null;
    }
}
