package rx.internal.util;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class k {
    final int h;
    Object[] i;
    Object[] j;
    volatile int k;
    int l;

    public k(int i) {
        this.h = i;
    }

    public void b(Object obj) {
        if (this.k == 0) {
            this.i = new Object[(this.h + 1)];
            this.j = this.i;
            this.i[0] = obj;
            this.l = 1;
            this.k = 1;
        } else if (this.l == this.h) {
            Object[] objArr = new Object[(this.h + 1)];
            objArr[0] = obj;
            this.j[this.h] = objArr;
            this.j = objArr;
            this.l = 1;
            this.k++;
        } else {
            this.j[this.l] = obj;
            this.l++;
            this.k++;
        }
    }

    public Object[] d() {
        return this.i;
    }

    public int e() {
        return this.k;
    }

    List<Object> f() {
        int i = this.h;
        int i2 = this.k;
        List<Object> arrayList = new ArrayList(i2 + 1);
        int i3 = 0;
        Object[] d = d();
        int i4 = 0;
        while (i3 < i2) {
            arrayList.add(d[i4]);
            i3++;
            i4++;
            if (i4 == i) {
                d = (Object[]) d[i];
                i4 = 0;
            }
        }
        return arrayList;
    }

    public String toString() {
        return f().toString();
    }
}
