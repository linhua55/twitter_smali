package com.twitter.library.api.upload;

import com.twitter.media.util.MediaException;
import com.twitter.platform.t;

/* compiled from: Twttr */
class j implements g {
    final /* synthetic */ t a;
    final /* synthetic */ long b;
    final /* synthetic */ l c;
    final /* synthetic */ i d;

    j(i iVar, t tVar, long j, l lVar) {
        this.d = iVar;
        this.a = tVar;
        this.b = j;
        this.c = lVar;
    }

    public void a(h hVar) {
        i.a(hVar, this.a.b() - this.b);
        this.c.a = hVar;
        if (hVar.b()) {
            this.c.set(hVar);
        } else if (hVar.c() == null) {
            this.c.setException(new MediaException(hVar.e()));
        } else {
            this.c.setException(hVar.c());
        }
    }
}
