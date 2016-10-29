package com.twitter.library.media.manager;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.k;
import com.twitter.library.service.aa;
import com.twitter.media.request.ResourceRequestType;
import com.twitter.media.request.g;
import cus;

/* compiled from: Twttr */
class z implements s {
    final /* synthetic */ o a;
    final /* synthetic */ o b;
    final /* synthetic */ ResourceRequestType c;
    final /* synthetic */ cus d;
    final /* synthetic */ String e;
    final /* synthetic */ String f;
    final /* synthetic */ t g;
    final /* synthetic */ g h;
    final /* synthetic */ v i;

    z(v vVar, o oVar, o oVar2, ResourceRequestType resourceRequestType, cus cus, String str, String str2, t tVar, g gVar) {
        this.i = vVar;
        this.a = oVar;
        this.b = oVar2;
        this.c = resourceRequestType;
        this.d = cus;
        this.e = str;
        this.f = str2;
        this.g = tVar;
        this.h = gVar;
    }

    public boolean a(aa aaVar) {
        this.a.j();
        this.a.f();
        this.b.i();
        return this.c == ResourceRequestType.a || !this.d.b(this.e);
    }

    public void a(ab<aa> abVar) {
        this.b.j();
        this.b.f();
        aa aaVar = (aa) abVar.b();
        k g = aaVar != null ? aaVar.g() : null;
        ae aeVar = new ae(g, null);
        this.g.a(this.h, this.e, g);
        this.i.obtainMessage(3, aeVar).sendToTarget();
    }
}
