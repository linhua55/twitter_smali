package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@oi
public class rn {
    private final String[] a;
    private final double[] b;
    private final double[] c;
    private final int[] d;
    private int e;

    private rn(rq rqVar) {
        int size = rq.a(rqVar).size();
        this.a = (String[]) rq.b(rqVar).toArray(new String[size]);
        this.b = a(rq.a(rqVar));
        this.c = a(rq.c(rqVar));
        this.d = new int[size];
        this.e = 0;
    }

    private double[] a(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = ((Double) list.get(i)).doubleValue();
        }
        return dArr;
    }

    public List<rp> a() {
        List<rp> arrayList = new ArrayList(this.a.length);
        for (int i = 0; i < this.a.length; i++) {
            arrayList.add(new rp(this.a[i], this.c[i], this.b[i], ((double) this.d[i]) / ((double) this.e), this.d[i]));
        }
        return arrayList;
    }

    public void a(double d) {
        this.e++;
        int i = 0;
        while (i < this.c.length) {
            if (this.c[i] <= d && d < this.b[i]) {
                int[] iArr = this.d;
                iArr[i] = iArr[i] + 1;
            }
            if (d >= this.c[i]) {
                i++;
            } else {
                return;
            }
        }
    }
}
