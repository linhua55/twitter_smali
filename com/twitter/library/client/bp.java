package com.twitter.library.client;

import bes;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bdx;

/* compiled from: Twttr */
class bp extends z {
    final /* synthetic */ bg a;
    private final boolean b;

    bp(bg bgVar, boolean z) {
        this.a = bgVar;
        this.b = z;
    }

    public void a(x xVar) {
        aa aaVar = (aa) xVar.l().b();
        Session session = (Session) bg.c(this.a).get(xVar.N().a);
        if (session != null) {
            if (this.b) {
                b(xVar, aaVar, session);
            } else {
                a(xVar, aaVar, session);
            }
        }
    }

    private void a(x xVar, aa aaVar, Session session) {
        bes bes = (bes) xVar;
        bq bqVar = (bq) bg.b(this.a).remove(bes.d);
        if (aaVar.b()) {
            try {
                String a = bg.a(this.a, session, bes.b(), bes.s());
                if (bqVar != null) {
                    bqVar.a(session, a);
                    return;
                }
                return;
            } catch (Exception e) {
                bg.a(this.a, session, bes.t());
                if (bqVar != null) {
                    bqVar.a(session, 2, 400, bes.h());
                    return;
                }
                return;
            }
        }
        bg.a(this.a, session, bes.t());
        if (bqVar != null) {
            int d = aaVar.d();
            if (d == 412) {
                bqVar.a(session, bes.h());
            } else {
                bqVar.a(session, 1, d, bes.h());
            }
        }
    }

    private void b(x xVar, aa aaVar, Session session) {
        bdx bdx = (bdx) xVar;
        bq bqVar = (bq) bg.b(this.a).remove(bdx.d);
        if (aaVar.b()) {
            try {
                String a = bg.a(this.a, session, bdx.t(), bdx.h());
                if (bqVar != null) {
                    bqVar.a(session, a);
                    return;
                }
                return;
            } catch (Exception e) {
                bg.a(this.a, session, bdx.s());
                if (bqVar != null) {
                    bqVar.a(session, 2, 400, bdx.g());
                    return;
                }
                return;
            }
        }
        bg.a(this.a, session, bdx.s());
        if (bqVar != null) {
            int d = aaVar.d();
            if (d == 412) {
                bqVar.a(session, bdx.g());
            } else {
                bqVar.a(session, 1, d, bdx.g());
            }
        }
    }
}
