package defpackage;

import ark;
import aru;
import asa;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: bvp */
final class bvp extends z {
    final /* synthetic */ long a;

    bvp(long j) {
        this.a = j;
    }

    public void a(x xVar) {
        boolean b = ((aa) xVar.l().b()).b();
        ast c = asr.c(this.a);
        if (c == null) {
            asa.a("fs:load:fetched_manifest", aru.b(), this.a, ark.m).k();
        } else {
            c.a(b);
            if (b) {
                asr.a(this.a, al.b());
                asa.a("fs:load:fetched_manifest", aru.b(), this.a, ark.m).j();
            }
        }
        bvo.a.remove(Long.valueOf(this.a));
    }
}
