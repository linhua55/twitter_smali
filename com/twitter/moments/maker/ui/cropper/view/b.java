package com.twitter.moments.maker.ui.cropper.view;

import android.view.View;
import com.twitter.util.object.e;
import defpackage.csp;

/* compiled from: Twttr */
class b extends csp {
    final /* synthetic */ CropContainerView a;

    private b(CropContainerView cropContainerView) {
        this.a = cropContainerView;
    }

    public boolean a(View view, int i) {
        return view == this.a.e;
    }

    public int a(View view, int i, int i2) {
        e.a(this.a.f);
        return this.a.f.a(i);
    }

    public int b(View view, int i, int i2) {
        e.a(this.a.f);
        return this.a.f.b(i);
    }
}
