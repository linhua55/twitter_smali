package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.bm;
import java.util.ArrayList;
import java.util.HashMap;

public class d {
    private final String[] a;
    private final ArrayList<HashMap<String, Object>> b;
    private final String c;
    private final HashMap<Object, Integer> d;
    private boolean e;
    private String f;

    private d(String[] strArr, String str) {
        this.a = (String[]) bm.a(strArr);
        this.b = new ArrayList();
        this.c = str;
        this.d = new HashMap();
        this.e = false;
        this.f = null;
    }
}
