package com.twitter.model.core;

import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.util.serialization.n;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class cd implements Iterable<ca> {
    public static final n<cd> a;
    public static final int[] b;
    public static final String[] c;
    public static final int[] d;
    private final List<ca> e;

    static {
        a = new cf(null);
        b = new int[0];
        c = new String[0];
        d = new int[0];
    }

    public cd(List<ca> list) {
        this.e = com.twitter.util.collection.n.a((List) list);
    }

    public Iterator<ca> iterator() {
        return this.e.iterator();
    }

    public static int[] a(cd cdVar) {
        int size = cdVar != null ? cdVar.e.size() : 0;
        if (size == 0) {
            return b;
        }
        int[] iArr = new int[size];
        Iterator it = cdVar.iterator();
        size = 0;
        while (it.hasNext()) {
            iArr[size] = ((ca) it.next()).b;
            size++;
        }
        return iArr;
    }

    public static List<OneFactorEligibleFactor> b(cd cdVar) {
        if (cdVar == null) {
            return null;
        }
        Iterator it = cdVar.iterator();
        while (it.hasNext()) {
            ca caVar = (ca) it.next();
            if (caVar.b == 267) {
                return caVar.h;
            }
        }
        return null;
    }
}
