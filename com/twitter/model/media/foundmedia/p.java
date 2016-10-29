package com.twitter.model.media.foundmedia;

import android.util.Pair;
import android.util.SparseArray;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class p {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Size e;
    public final SparseArray<Pair<Size, String>> f;

    public p(String str, String str2, String str3, String str4, Size size, SparseArray<Pair<Size, String>> sparseArray) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = size;
        this.f = sparseArray;
    }
}
