package com.twitter.app.main;

import android.os.Bundle;
import com.twitter.library.api.timeline.s;
import com.twitter.library.client.Session;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bex;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class l extends z {
    final /* synthetic */ MainActivity a;

    l(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void a(x xVar) {
        Session q = this.a.ab();
        ab N = xVar.N();
        boolean z = N != null && N.a(q);
        if (xVar instanceof s) {
            if (z) {
                a((s) xVar);
            }
        } else if (xVar instanceof com.twitter.library.api.upload.z) {
            a((com.twitter.library.api.upload.z) xVar, xVar.l(), z);
        } else if (xVar instanceof bex) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar != null && aaVar.b()) {
                this.a.Y().a(q.f(), q.j());
                this.a.Y().h();
            }
        }
    }

    private void a(s sVar) {
        long E = sVar.E();
        int H = sVar.H();
        if (E == 0 && H > 0) {
            this.a.a(this.a.o + H);
        }
        if (((aa) sVar.l().b()).b()) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("home", false);
            TwitterDataSyncService.a(this.a, bundle, this.a.ab());
        }
    }

    private void a(com.twitter.library.api.upload.z zVar, com.twitter.internal.android.service.ab<aa> abVar, boolean z) {
        boolean b = ((aa) abVar.b()).b();
        switch (zVar.M()) {
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                if (b && z) {
                    this.a.a(this.a.o + 1);
                }
            default:
        }
    }
}
