package com.twitter.android.interestpicker;

import cyw;

/* compiled from: Twttr */
class ac implements cyw<aw, Boolean> {
    final /* synthetic */ int a;
    final /* synthetic */ x b;

    ac(x xVar, int i) {
        this.b = xVar;
        this.a = i;
    }

    public Boolean a(aw awVar) {
        if (this.a == 0) {
            return Boolean.valueOf(awVar.g);
        }
        boolean z = awVar.g && awVar.f == this.a;
        return Boolean.valueOf(z);
    }
}
