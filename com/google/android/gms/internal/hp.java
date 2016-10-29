package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@oi
class hp {
    private final Object[] a;
    private boolean b;

    hp(AdRequestParcel adRequestParcel, String str, int i) {
        this.a = a(adRequestParcel, str, i);
    }

    private static String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Collections.sort(new ArrayList(bundle.keySet()));
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            String str2 = obj == null ? "null" : obj instanceof Bundle ? a((Bundle) obj) : obj.toString();
            stringBuilder.append(str2);
        }
        return stringBuilder.toString();
    }

    private static Object[] a(AdRequestParcel adRequestParcel, String str, int i) {
        Set hashSet = new HashSet(Arrays.asList(((String) cj.af.c()).split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(adRequestParcel.b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(adRequestParcel.c));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(adRequestParcel.d));
        }
        if (hashSet.contains("keywords")) {
            if (adRequestParcel.e != null) {
                arrayList.add(adRequestParcel.e.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(adRequestParcel.f));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(adRequestParcel.g));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(adRequestParcel.h));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(adRequestParcel.i);
        }
        if (hashSet.contains("location")) {
            if (adRequestParcel.k != null) {
                arrayList.add(adRequestParcel.k.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(adRequestParcel.l);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(adRequestParcel.m));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(adRequestParcel.n));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (adRequestParcel.o != null) {
                arrayList.add(adRequestParcel.o.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(adRequestParcel.p);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(adRequestParcel.q);
        }
        return arrayList.toArray();
    }

    void a() {
        this.b = true;
    }

    boolean b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hp)) {
            return false;
        }
        return Arrays.equals(this.a, ((hp) obj).a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public String toString() {
        return "[InterstitialAdPoolKey " + Arrays.toString(this.a) + "]";
    }
}
