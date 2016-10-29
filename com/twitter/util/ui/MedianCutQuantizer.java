package com.twitter.util.ui;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* compiled from: Twttr */
public class MedianCutQuantizer {
    private static final String a;
    private n[] b;
    private n[] c;

    /* compiled from: Twttr */
    enum ColorDimension {
        RED(new p()),
        GREEN(new o()),
        BLUE(new k());
        
        public final Comparator<n> comparator;

        private ColorDimension(Comparator<n> comparator) {
            this.comparator = comparator;
        }
    }

    static {
        a = MedianCutQuantizer.class.getSimpleName();
    }

    public MedianCutQuantizer(int[] iArr, int i) {
        this.b = null;
        this.c = null;
        this.c = a(iArr, i);
    }

    public n[] a() {
        return this.c;
    }

    n[] a(int[] iArr, int i) {
        int i2;
        int i3 = 0;
        m mVar = new m(iArr);
        int a = mVar.a();
        this.b = new n[a];
        for (i2 = 0; i2 < a; i2++) {
            this.b[i2] = new n(mVar.a(i2), mVar.b(i2));
        }
        if (a <= i) {
            return this.b;
        }
        l lVar = new l(this, 0, a - 1, 0);
        List arrayList = new ArrayList();
        arrayList.add(lVar);
        i2 = 1;
        while (i2 < i && r0 == 0) {
            l a2 = a(arrayList);
            if (a2 != null) {
                arrayList.add(a2.c());
                i2++;
            } else {
                i3 = 1;
            }
        }
        return b(arrayList);
    }

    private l a(List<l> list) {
        l lVar = null;
        int i = Integer.MAX_VALUE;
        for (l lVar2 : list) {
            int i2;
            l lVar3;
            if (lVar2.a() < 2 || lVar2.c >= i) {
                i2 = i;
                lVar3 = lVar;
            } else {
                lVar3 = lVar2;
                i2 = lVar2.c;
            }
            lVar = lVar3;
            i = i2;
        }
        return lVar;
    }

    private n[] b(List<l> list) {
        n[] nVarArr = new n[list.size()];
        int i = 0;
        for (l e : list) {
            nVarArr[i] = e.e();
            i++;
        }
        return nVarArr;
    }
}
