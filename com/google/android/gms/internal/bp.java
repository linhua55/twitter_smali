package com.google.android.gms.internal;

import java.util.Comparator;

class bp implements Comparator<String> {
    final /* synthetic */ bo a;

    bp(bo boVar) {
        this.a = boVar;
    }

    public int a(String str, String str2) {
        return str2.length() - str.length();
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((String) obj, (String) obj2);
    }
}
