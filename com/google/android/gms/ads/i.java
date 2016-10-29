package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.client.e;
import iu;

public final class i {
    private final e a;

    public i(Context context) {
        this.a = new e(context);
    }

    public void a() {
        this.a.a();
    }

    public void a(a aVar) {
        this.a.a(aVar);
        if (aVar != null && (aVar instanceof a)) {
            this.a.a((a) aVar);
        } else if (aVar == null) {
            this.a.a(null);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void a(d dVar) {
        this.a.a(dVar.a());
    }

    public void a(iu iuVar) {
        this.a.a(iuVar);
    }

    public void a(String str) {
        this.a.a(str);
    }

    public void a(boolean z) {
        this.a.a(z);
    }

    public void b(String str) {
        this.a.b(str);
    }
}
