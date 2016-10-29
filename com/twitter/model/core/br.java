package com.twitter.model.core;

import java.util.Comparator;

/* compiled from: Twttr */
public class br implements Comparator<bp> {
    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((bp) obj, (bp) obj2);
    }

    public int a(bp bpVar, bp bpVar2) {
        return Double.compare(bpVar2.d.d, bpVar.d.d);
    }
}
