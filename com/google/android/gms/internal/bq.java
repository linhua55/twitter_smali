package com.google.android.gms.internal;

import java.util.Comparator;

class bq implements Comparator<bv> {
    final /* synthetic */ bo a;

    bq(bo boVar) {
        this.a = boVar;
    }

    public int a(bv bvVar, bv bvVar2) {
        int i = bvVar.c - bvVar2.c;
        return i != 0 ? i : (int) (bvVar.a - bvVar2.a);
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((bv) obj, (bv) obj2);
    }
}
