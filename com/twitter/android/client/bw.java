package com.twitter.android.client;

import android.content.Context;
import android.os.Bundle;
import com.twitter.library.api.upload.p;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.media.util.af;
import com.twitter.library.media.util.r;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
class bw extends z {
    private final Context a;

    bw(Context context) {
        this.a = context.getApplicationContext();
    }

    public void a(x xVar) {
        bg a = bg.a();
        ab N = xVar.N();
        Session c = a.c();
        if (N.c == c.g()) {
            a(c, (p) xVar, (aa) xVar.l().b());
        }
    }

    private void a(Session session, p pVar, aa aaVar) {
        TwitterUser twitterUser;
        int i;
        z a = z.a(this.a);
        Bundle bundle = pVar.o;
        boolean b = aaVar.b();
        if (b) {
            twitterUser = (TwitterUser) bundle.getParcelable("user");
        } else {
            TwitterUser f = session.f();
            bundle.putParcelable("user", f);
            twitterUser = f;
        }
        boolean z = b && twitterUser != null;
        long j = twitterUser != null ? twitterUser.c : 0;
        MediaFile mediaFile = (MediaFile) bundle.getParcelable("avatar_media");
        if (mediaFile == null || !z) {
            af.a().b(j);
        } else {
            l.a(this.a).a(UserImageRequest.a(twitterUser.e, -3).a());
        }
        com.twitter.android.profiles.l lVar = new com.twitter.android.profiles.l(this.a);
        if ((pVar.e() && z) || (pVar.s() && !z)) {
            lVar.b(twitterUser.k);
            r.d(this.a, twitterUser.c);
        }
        if (((MediaFile) bundle.getParcelable("header_media")) != null && z) {
            lVar.a(twitterUser.k);
        }
        if (mediaFile != null && z) {
            mediaFile.c();
        }
        bv.a(session, pVar.a());
        if (!z) {
            switch (aaVar.d()) {
                case 422:
                    i = 2131363199;
                    break;
                case 503:
                    i = 2131363200;
                    break;
                default:
                    i = 2131363201;
                    break;
            }
        }
        i = 2131363202;
        if (j == session.g()) {
            session.a(twitterUser);
        }
        a.a(z, i, bundle, session);
    }
}
