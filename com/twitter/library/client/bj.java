package com.twitter.library.client;

import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bdu;

/* compiled from: Twttr */
class bj extends z {
    final /* synthetic */ bg a;

    bj(bg bgVar) {
        this.a = bgVar;
    }

    public void a(x xVar) {
        boolean z = false;
        bdu bdu = (bdu) xVar;
        int[] h = bdu.h();
        boolean t = bdu.t();
        aa aaVar = (aa) xVar.l().b();
        Session session = (Session) bg.c(this.a).get(xVar.N().a);
        if (session != null) {
            bk bkVar = (bk) bg.b(this.a).remove(bdu.d);
            int d;
            if (aaVar.b()) {
                try {
                    String a = bg.a(this.a, session, bdu.s(), bdu.g());
                    if (bkVar != null) {
                        bkVar.a(session, a, !t);
                        return;
                    }
                    return;
                } catch (Exception e) {
                    session.a(LoginStatus.a);
                    if (bkVar != null) {
                        d = aaVar.d();
                        if (!t) {
                            z = true;
                        }
                        bkVar.a(session, 2, d, h, z);
                        return;
                    }
                    return;
                }
            }
            session.a(LoginStatus.a);
            if (bkVar != null) {
                d = aaVar.d();
                if (!t) {
                    z = true;
                }
                bkVar.a(session, 1, d, h, z);
            }
        }
    }
}
