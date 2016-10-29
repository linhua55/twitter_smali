package com.google.ads.mediation;

import android.view.View;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.f;
import iq;

class c extends iq {
    private final f d;

    public c(f fVar) {
        this.d = fVar;
        a(fVar.b().toString());
        a(fVar.c());
        b(fVar.d().toString());
        a(fVar.e());
        c(fVar.f().toString());
        a(fVar.g().doubleValue());
        d(fVar.h().toString());
        e(fVar.i().toString());
        a(true);
        b(true);
    }

    public void a(View view) {
        if (view instanceof NativeAdView) {
            ((NativeAdView) view).setNativeAd(this.d);
        }
    }
}
