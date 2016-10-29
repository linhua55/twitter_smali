package com.twitter.android.moments.data;

import cys;
import defpackage.cll;
import java.util.List;

/* compiled from: Twttr */
class br implements cys<List<cll>> {
    final /* synthetic */ bo a;

    br(bo boVar) {
        this.a = boVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((List) obj);
    }

    public void a(List<cll> list) {
        for (cll cll : list) {
            bo.d(this.a).put(cll.b, cll);
        }
    }
}
