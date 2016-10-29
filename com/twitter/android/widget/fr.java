package com.twitter.android.widget;

import java.util.Comparator;

/* compiled from: Twttr */
class fr implements Comparator<fs> {
    final /* synthetic */ fp a;

    fr(fp fpVar) {
        this.a = fpVar;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((fs) obj, (fs) obj2);
    }

    public int a(fs fsVar, fs fsVar2) {
        return fsVar.a - fsVar2.a;
    }
}
