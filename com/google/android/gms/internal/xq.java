package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class xq implements Cloneable {
    private xo<?, ?> a;
    private Object b;
    private List<xu> c;

    xq() {
        this.c = new ArrayList();
    }

    private byte[] c() throws IOException {
        byte[] bArr = new byte[a()];
        a(zzsn.a(bArr));
        return bArr;
    }

    int a() {
        if (this.b != null) {
            return this.a.a(this.b);
        }
        int i = 0;
        for (xu a : this.c) {
            i = a.a() + i;
        }
        return i;
    }

    void a(xu xuVar) {
        this.c.add(xuVar);
    }

    void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.b != null) {
            this.a.a(this.b, com_google_android_gms_internal_zzsn);
            return;
        }
        for (xu a : this.c) {
            a.a(com_google_android_gms_internal_zzsn);
        }
    }

    public final xq b() {
        int i = 0;
        xq xqVar = new xq();
        try {
            xqVar.a = this.a;
            if (this.c == null) {
                xqVar.c = null;
            } else {
                xqVar.c.addAll(this.c);
            }
            if (this.b != null) {
                if (this.b instanceof xs) {
                    xqVar.b = ((xs) this.b).b_();
                } else if (this.b instanceof byte[]) {
                    xqVar.b = ((byte[]) this.b).clone();
                } else if (this.b instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.b;
                    Object obj = new byte[bArr.length][];
                    xqVar.b = obj;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        obj[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.b instanceof boolean[]) {
                    xqVar.b = ((boolean[]) this.b).clone();
                } else if (this.b instanceof int[]) {
                    xqVar.b = ((int[]) this.b).clone();
                } else if (this.b instanceof long[]) {
                    xqVar.b = ((long[]) this.b).clone();
                } else if (this.b instanceof float[]) {
                    xqVar.b = ((float[]) this.b).clone();
                } else if (this.b instanceof double[]) {
                    xqVar.b = ((double[]) this.b).clone();
                } else if (this.b instanceof xs[]) {
                    xs[] xsVarArr = (xs[]) this.b;
                    Object obj2 = new xs[xsVarArr.length];
                    xqVar.b = obj2;
                    while (i < xsVarArr.length) {
                        obj2[i] = xsVarArr[i].b_();
                        i++;
                    }
                }
            }
            return xqVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return b();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xq)) {
            return false;
        }
        xq xqVar = (xq) obj;
        if (this.b != null && xqVar.b != null) {
            return this.a == xqVar.a ? !this.a.b.isArray() ? this.b.equals(xqVar.b) : this.b instanceof byte[] ? Arrays.equals((byte[]) this.b, (byte[]) xqVar.b) : this.b instanceof int[] ? Arrays.equals((int[]) this.b, (int[]) xqVar.b) : this.b instanceof long[] ? Arrays.equals((long[]) this.b, (long[]) xqVar.b) : this.b instanceof float[] ? Arrays.equals((float[]) this.b, (float[]) xqVar.b) : this.b instanceof double[] ? Arrays.equals((double[]) this.b, (double[]) xqVar.b) : this.b instanceof boolean[] ? Arrays.equals((boolean[]) this.b, (boolean[]) xqVar.b) : Arrays.deepEquals((Object[]) this.b, (Object[]) xqVar.b) : false;
        } else {
            if (this.c != null && xqVar.c != null) {
                return this.c.equals(xqVar.c);
            }
            try {
                return Arrays.equals(c(), xqVar.c());
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(c()) + 527;
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }
}
