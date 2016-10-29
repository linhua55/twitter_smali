package com.twitter.library.client;

import bbu;
import cfb;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.internal.network.k;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.b;

/* compiled from: Twttr */
class bn extends z {
    final /* synthetic */ bg a;
    private final int b;

    bn(bg bgVar, int i) {
        this.a = bgVar;
        this.b = i;
    }

    public void a(x xVar) {
        aa aaVar = (aa) xVar.l().b();
        String str = xVar.N().a;
        Session session = (Session) bg.c(this.a).get(str);
        if (session != null) {
            switch (this.b) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    bg.d(this.a);
                    boolean a = bg.a(this.a, str);
                    session.a(LoginStatus.a);
                    bg.b(this.a, session, a);
                    session.a();
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bbu.a(new TwitterScribeLog(session.g()).b(new String[]{"api::verify_credentials:unauthorized:check"}));
                    k g = aaVar.g();
                    int i = g != null ? (g.a == 401 && g.j == 89) ? 1 : 0 : 0;
                    if (i != 0) {
                        String valueOf = String.valueOf(aaVar.g().j);
                        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(session.g()).b(new String[]{"api::verify_credentials:unauthorized:logout"});
                        twitterScribeLog.a(valueOf);
                        bbu.a(twitterScribeLog);
                        cfb.c("SessionManager", "Invalid credentials. The auth token has expired.");
                        bg.d(this.a);
                        bg.e(this.a);
                        a b = b.b(session.e());
                        if (b != null) {
                            boolean a2 = bg.a(this.a, str);
                            b.b(null);
                            d.a().a(null);
                            session.a(LoginStatus.a);
                            bg.a(this.a, session, a2);
                            session.a();
                        }
                    }
                default:
            }
        }
    }
}
