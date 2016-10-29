package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzd;
import java.util.Map;

final class fg implements fj {
    fg() {
    }

    public void a(sz szVar, Map<String, String> map) {
        zzd i = szVar.i();
        if (i != null) {
            i.a();
            return;
        }
        i = szVar.j();
        if (i != null) {
            i.a();
        } else {
            qd.d("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
