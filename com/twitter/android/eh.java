package com.twitter.android;

import android.content.Context;
import android.provider.Settings.Secure;
import cjj;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.f;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.api.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bgn;

/* compiled from: Twttr */
class eh extends z {
    private final Context a;

    eh(Context context) {
        this.a = context;
    }

    public void a(x xVar) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(0).a("4", Secure.getString(this.a.getContentResolver(), "android_id"));
        d a = d.a(this.a);
        if (a != null) {
            bbw.a("6", a.a());
            bbw.a(a.b());
        }
        aa aaVar = (aa) xVar.l().b();
        if (aaVar.b()) {
            cjj e = ((bgn) xVar).e();
            AppEventTrack.a(this.a, AppEventTrack.a(new f(e.a, e.b, e.c, e.d, e.e, null, true).a()));
            bbw.b("external:::irs:referred");
            bbw.a(3, e.c, e.d, e.a, e.e, e.b, null, null);
        } else {
            bbw.b("external:::irs:error");
            k g = aaVar.g();
            HttpOperation f = aaVar.f();
            if (!(g == null || f == null || f.i() == null)) {
                bbw.a(f.i().toString(), g);
            }
        }
        bbu.a(bbw);
    }
}
