package com.facebook.imagepipeline.nativecode;

import defpackage.cf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class a {
    public static final List<String> a;

    static {
        List arrayList = new ArrayList();
        arrayList.add("webp");
        a = Collections.unmodifiableList(arrayList);
    }

    public static void a() {
        for (int i = 0; i < a.size(); i++) {
            cf.a((String) a.get(i));
        }
        cf.a("imagepipeline");
    }
}
