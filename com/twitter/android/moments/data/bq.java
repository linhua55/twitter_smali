package com.twitter.android.moments.data;

import cys;
import defpackage.cll;
import java.util.List;

/* compiled from: Twttr */
class bq implements cys<List<cll>> {
    final /* synthetic */ bo a;

    bq(bo boVar) {
        this.a = boVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((List) obj);
    }

    public void a(List<cll> list) {
        for (cll cll : list) {
            bo.c(this.a).a(cll.b, cll);
        }
    }
}
