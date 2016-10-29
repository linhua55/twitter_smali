package com.twitter.android.av;

import android.os.Bundle;
import bbu;
import cni;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.c;
import com.twitter.library.av.h;
import com.twitter.library.av.playback.au;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.av.b;
import defpackage.cbm;
import defpackage.cbp;
import defpackage.cbr;
import defpackage.cbu;
import defpackage.cbw;

/* compiled from: Twttr */
public class n {
    private final boolean a;

    protected n() {
        this(false);
    }

    protected n(boolean z) {
        this.a = z;
    }

    protected void a(au auVar, cni cni, c cVar, String str, String str2, String str3, String str4, Bundle bundle) {
        String str5 = null;
        TwitterScribeItem a = new bg(auVar.c()).a(cVar);
        h hVar = new h();
        hVar.a = a.F;
        hVar.c = a.H;
        hVar.l = a.ad;
        hVar.g = a.ae;
        hVar.k = a.af;
        hVar.h = a.K;
        hVar.b = cVar.h;
        hVar.i = a.L;
        hVar.j = cVar.i;
        PromotedEvent a2 = a(str, a.H);
        if (a2 != null) {
            if (PromotedEvent.P == a2 || PromotedEvent.Q == a2) {
                str4 = null;
            } else if (PromotedEvent.O == a2 || PromotedEvent.N == a2) {
                str2 = null;
                str5 = str3;
            } else {
                str4 = null;
                str2 = null;
            }
            hVar.e = str5;
            hVar.f = str4;
            hVar.d = str2;
            cbr c = cbp.a(a2, cni).b(a.L).c(hVar.a());
            if (PromotedEvent.aB == a2) {
                c.d(cVar.r);
            } else if (this.a && cbu.a(a2)) {
                c.d(cbm.a(new cbw().a(b.a(cVar.e)).a(cbu.a(auVar.c())).a()));
            }
            bbu.a(c.a());
        }
    }

    PromotedEvent a(String str, String str2) {
        if (MimeTypes.BASE_TYPE_VIDEO.equals(str2)) {
            return (PromotedEvent) m.c.get(str);
        }
        if ("ad".equals(str2)) {
            return (PromotedEvent) m.d.get(str);
        }
        return null;
    }
}
