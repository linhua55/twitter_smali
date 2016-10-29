package com.twitter.model.json.timeline.urt;

import cns;
import cnt;
import cnu;
import cob;
import coi;
import com.twitter.model.timeline.aa;
import com.twitter.model.timeline.at;
import com.twitter.model.timeline.au;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class c extends cob {
    private final cnt e;

    public /* synthetic */ av b(cnu cnu) {
        return a(cnu);
    }

    public c(String str, long j, cnt cnt) {
        super(str, j, null, null);
        this.e = cnt;
    }

    public at a(cnu cnu) {
        n d = n.d();
        for (cns cns : this.e.a) {
            if (cns instanceof coi) {
                bw a = a(cnu, (coi) cns);
                if (a != null) {
                    d.c(a);
                }
            } else if (cns instanceof aa) {
            }
        }
        if (this.e.b != null) {
        }
        return (at) ((au) ((au) new au().a((List) d.q()).a(this.c)).b(this.b)).r();
    }

    private bw a(cnu cnu, coi coi) {
        return (bw) ((by) ((by) new by().a(cnu.a(coi.b)).a(this.c)).b(this.b)).r();
    }
}
