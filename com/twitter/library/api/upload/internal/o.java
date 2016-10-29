package com.twitter.library.api.upload.internal;

import com.twitter.library.api.upload.g;
import com.twitter.library.api.upload.h;
import com.twitter.library.scribe.ScribeItemUploadMedia;

/* compiled from: Twttr */
class o implements g {
    final /* synthetic */ n a;

    o(n nVar) {
        this.a = nVar;
    }

    public void a(h hVar) {
        n nVar = this.a;
        nVar.f++;
        if (this.a.a(hVar)) {
            this.a.b();
            return;
        }
        this.a.b(hVar);
        String str = hVar.b() ? this.a.f > 1 ? "retry" : "success" : "failure";
        this.a.a("segmented_uploader", this.a.g, str, new ScribeItemUploadMedia().a(this.a.d.f).a(this.a.d.d.length()).a(this.a.d.a()).a(this.a.e));
    }
}
