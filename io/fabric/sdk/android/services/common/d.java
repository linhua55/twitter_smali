package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class d extends l {
    final /* synthetic */ b a;
    final /* synthetic */ c b;

    d(c cVar, b bVar) {
        this.b = cVar;
        this.a = bVar;
    }

    public void a() {
        b a = this.b.e();
        if (!this.a.equals(a)) {
            f.h().a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
            this.b.b(a);
        }
    }
}
