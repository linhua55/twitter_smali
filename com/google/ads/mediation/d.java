package com.google.ads.mediation;

import android.view.View;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.h;
import ir;

class d extends ir {
    private final h d;

    public d(h hVar) {
        this.d = hVar;
        a(hVar.b().toString());
        a(hVar.c());
        b(hVar.d().toString());
        a(hVar.e());
        c(hVar.f().toString());
        d(hVar.g().toString());
        a(true);
        b(true);
    }

    public void a(View view) {
        if (view instanceof NativeAdView) {
            ((NativeAdView) view).setNativeAd(this.d);
        }
    }
}
