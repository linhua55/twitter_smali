package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qw;

@oi
class m extends qb {
    final /* synthetic */ zzd a;

    private m(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        this.a = com_google_android_gms_ads_internal_overlay_zzd;
    }

    public void a() {
        Bitmap b = ar.e().b(this.a.o, this.a.b.q.d);
        if (b != null) {
            qw.a.post(new n(this, ar.g().a(this.a.o, b, this.a.b.q.e, this.a.b.q.f)));
        }
    }

    public void b() {
    }
}
