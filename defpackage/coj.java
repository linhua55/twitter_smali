package defpackage;

import com.twitter.model.core.cm;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.al;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;

/* compiled from: Twttr */
/* renamed from: coj */
public class coj extends cob {
    public final coi e;

    public /* synthetic */ av b(cnu cnu) {
        return a(cnu);
    }

    public coj(String str, long j, cnw cnw, cny cny, coi coi) {
        super(str, j, cnw, cny);
        this.e = coi;
    }

    public bw a(cnu cnu) {
        aj ajVar;
        cm a = cnu.a(this.e.b);
        if (this.a != null) {
            ajVar = (aj) new al().c(this.a.a).q();
        } else {
            ajVar = null;
        }
        return (bw) ((by) ((by) ((by) new by().a(a).a(this.c)).b(this.b)).a(ajVar)).r();
    }
}
