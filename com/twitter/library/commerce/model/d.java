package com.twitter.library.commerce.model;

import java.util.ArrayList;

/* compiled from: Twttr */
public class d {
    public static void a(ArrayList arrayList, int i) {
        if (i > arrayList.size()) {
            arrayList.ensureCapacity(i);
            for (int size = i - arrayList.size(); size > 0; size--) {
                arrayList.add(null);
            }
        }
    }
}
