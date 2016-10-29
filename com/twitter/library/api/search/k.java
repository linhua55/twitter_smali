package com.twitter.library.api.search;

import com.twitter.model.topic.i;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class k {
    public final l a;
    public final ArrayList<j> b;

    k(l lVar, ArrayList<j> arrayList) {
        this.a = lVar;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((i) ((j) it.next()).b.a(3)).j = lVar.c;
        }
        this.b = arrayList;
    }
}
