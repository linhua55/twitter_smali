package com.crashlytics.android.core;

import aj;
import ak;
import al;
import am;
import an;
import defpackage.ao;
import defpackage.ap;
import io.fabric.sdk.android.f;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

/* compiled from: Twttr */
class bg {
    private static final an a;
    private static final bq[] b;
    private static final bt[] c;
    private static final bn[] d;
    private static final bi[] e;
    private static final bj[] f;

    static {
        a = new an(TtmlNode.ANONYMOUS_REGION_ID, TtmlNode.ANONYMOUS_REGION_ID, 0);
        b = new bq[0];
        c = new bt[0];
        d = new bn[0];
        e = new bi[0];
        f = new bj[0];
    }

    private static bl a(am amVar, ba baVar, Map<String, String> map) throws IOException {
        bh bhVar = new bh(new bm(new bs(amVar.b != null ? amVar.b : a), a(amVar.c), a(amVar.d)), a(a(amVar.e, map)));
        bk a = a(amVar.f);
        b a2 = baVar.a();
        if (a2 == null) {
            f.h().a("CrashlyticsCore", "No log data to include with this event.");
        }
        baVar.b();
        bo boVar = a2 != null ? new bo(a2) : new bp();
        return new bl(amVar.a, "ndk-crash", bhVar, a, boVar);
    }

    private static ak[] a(ak[] akVarArr, Map<String, String> map) {
        int i;
        Map treeMap = new TreeMap(map);
        if (akVarArr != null) {
            for (ak akVar : akVarArr) {
                treeMap.put(akVar.a, akVar.b);
            }
        }
        Entry[] entryArr = (Entry[]) treeMap.entrySet().toArray(new Entry[treeMap.size()]);
        ak[] akVarArr2 = new ak[entryArr.length];
        for (i = 0; i < akVarArr2.length; i++) {
            akVarArr2[i] = new ak((String) entryArr[i].getKey(), (String) entryArr[i].getValue());
        }
        return akVarArr2;
    }

    private static bk a(al alVar) {
        return new bk(((float) alVar.f) / 100.0f, alVar.g, alVar.h, alVar.a, alVar.b - alVar.d, alVar.c - alVar.e);
    }

    private static br a(ao[] aoVarArr) {
        bq[] bqVarArr = aoVarArr != null ? new bt[aoVarArr.length] : c;
        for (int i = 0; i < bqVarArr.length; i++) {
            ao aoVar = aoVarArr[i];
            bqVarArr[i] = new bt(aoVar, a(aoVar.c));
        }
        return new br(bqVarArr);
    }

    private static br a(ap[] apVarArr) {
        bq[] bqVarArr = apVarArr != null ? new bn[apVarArr.length] : d;
        for (int i = 0; i < bqVarArr.length; i++) {
            bqVarArr[i] = new bn(apVarArr[i]);
        }
        return new br(bqVarArr);
    }

    private static br a(aj[] ajVarArr) {
        bq[] bqVarArr = ajVarArr != null ? new bi[ajVarArr.length] : e;
        for (int i = 0; i < bqVarArr.length; i++) {
            bqVarArr[i] = new bi(ajVarArr[i]);
        }
        return new br(bqVarArr);
    }

    private static br a(ak[] akVarArr) {
        bq[] bqVarArr = akVarArr != null ? new bj[akVarArr.length] : f;
        for (int i = 0; i < bqVarArr.length; i++) {
            bqVarArr[i] = new bj(akVarArr[i]);
        }
        return new br(bqVarArr);
    }

    public static void a(am amVar, ba baVar, Map<String, String> map, CodedOutputStream codedOutputStream) throws IOException {
        a(amVar, baVar, map).b(codedOutputStream);
    }
}
