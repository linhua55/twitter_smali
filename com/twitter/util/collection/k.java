package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class k<T> {
    private final float a;
    private l<T>[] b;
    private int c;
    private int d;

    public k() {
        this(20, 0.75f);
    }

    public k(int i) {
        this(i, 0.75f);
    }

    public k(int i, float f) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        } else if (f <= 0.0f) {
            throw new IllegalArgumentException("Illegal Load: " + f);
        } else {
            if (i == 0) {
                i = 1;
            }
            this.a = f;
            this.b = (l[]) ObjectUtils.a(new l[i]);
            this.d = (int) (((float) i) * f);
        }
    }

    public T a(int i) {
        l[] lVarArr = this.b;
        for (l lVar = lVarArr[(Integer.MAX_VALUE & i) % lVarArr.length]; lVar != null; lVar = lVar.d) {
            if (lVar.a == i) {
                return lVar.c;
            }
        }
        return null;
    }

    protected void a() {
        int length = this.b.length;
        l[] lVarArr = this.b;
        int i = (length * 2) + 1;
        l[] lVarArr2 = (l[]) ObjectUtils.a(new l[i]);
        this.d = (int) (((float) i) * this.a);
        this.b = lVarArr2;
        while (true) {
            int i2 = length - 1;
            if (length > 0) {
                l lVar = lVarArr[i2];
                while (lVar != null) {
                    l lVar2 = lVar.d;
                    int i3 = (lVar.a & Integer.MAX_VALUE) % i;
                    lVar.d = lVarArr2[i3];
                    lVarArr2[i3] = lVar;
                    lVar = lVar2;
                }
                length = i2;
            } else {
                return;
            }
        }
    }

    public T a(int i, T t) {
        l[] lVarArr = this.b;
        int length = (i & Integer.MAX_VALUE) % lVarArr.length;
        for (l lVar = lVarArr[length]; lVar != null; lVar = lVar.d) {
            if (lVar.a == i) {
                T t2 = lVar.c;
                lVar.c = t;
                return t2;
            }
        }
        if (this.c >= this.d) {
            a();
            lVarArr = this.b;
            length = (i & Integer.MAX_VALUE) % lVarArr.length;
        }
        lVarArr[length] = new l(i, i, t, lVarArr[length]);
        this.c++;
        return null;
    }
}
