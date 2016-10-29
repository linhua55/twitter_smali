package com.twitter.library.client;

import com.twitter.config.d;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.core.TwitterUser;
import defpackage.beg;
import defpackage.ben;

/* compiled from: Twttr */
class bl extends z {
    final /* synthetic */ bg a;

    private bl(bg bgVar) {
        this.a = bgVar;
    }

    protected void a(x xVar, Session session, int[] iArr, LoginResponse loginResponse, String str, TwitterUser twitterUser) {
        aa aaVar = (aa) xVar.l().b();
        bm bmVar = (bm) bg.b(this.a).remove(xVar.d);
        if (d.a("login_challenge_enabled") && loginResponse != null && loginResponse.d == 2 && loginResponse.b.e == 2) {
            session.a(LoginStatus.a);
            if (bmVar != null) {
                bmVar.b(session, loginResponse.b);
            }
        } else if (loginResponse != null && loginResponse.d == 2 && (loginResponse.b.e == 1 || loginResponse.b.e == 0)) {
            session.a(LoginStatus.a);
            if (bmVar != null) {
                bmVar.a(session, loginResponse.b);
            }
        } else if (aaVar.b()) {
            try {
                String a = bg.a(this.a, session, loginResponse, twitterUser);
                if (bmVar != null) {
                    bmVar.a(session, a);
                }
            } catch (Exception e) {
                bg.a(this.a, session, str);
                if (bmVar != null) {
                    bmVar.a(session, 2, iArr, null);
                }
            }
        } else if (bmVar != null) {
            if (xVar instanceof beg) {
                bmVar.a(session, 1, iArr, ((beg) xVar).s());
            } else if (xVar instanceof ben) {
                bmVar.a(session, 1, iArr, null);
            }
            bg.a(this.a, session, str);
        }
    }

    public void a(x xVar) {
        Session session = (Session) bg.c(this.a).get(xVar.N().a);
        if (session != null) {
            if (xVar instanceof ben) {
                ben ben = (ben) xVar;
                a(xVar, session, ben.s(), ben.e(), ben.g(), ben.h());
            } else if (xVar instanceof beg) {
                beg beg = (beg) xVar;
                a(xVar, session, beg.t(), beg.x(), beg.g(), beg.h());
            }
        }
    }
}
