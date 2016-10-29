package rx.internal.util;

import defpackage.czo;

/* compiled from: Twttr */
public final class o<T> {
    final float a;
    int b;
    int c;
    int d;
    T[] e;

    public o() {
        this(16, 0.75f);
    }

    public o(int i, float f) {
        this.a = f;
        int a = czo.a(i);
        this.b = a - 1;
        this.d = (int) (((float) a) * f);
        this.e = new Object[a];
    }

    public boolean a(T t) {
        Object[] objArr = this.e;
        int i = this.b;
        int a = a(t.hashCode()) & i;
        Object obj = objArr[a];
        if (obj != null) {
            if (obj.equals(t)) {
                return false;
            }
            do {
                a = (a + 1) & i;
                obj = objArr[a];
                if (obj == null) {
                }
            } while (!obj.equals(t));
            return false;
        }
        objArr[a] = t;
        a = this.c + 1;
        this.c = a;
        if (a >= this.d) {
            b();
        }
        return true;
    }

    public boolean b(T t) {
        Object[] objArr = this.e;
        int i = this.b;
        int a = a(t.hashCode()) & i;
        Object obj = objArr[a];
        if (obj == null) {
            return false;
        }
        if (obj.equals(t)) {
            return a(a, objArr, i);
        }
        do {
            a = (a + 1) & i;
            obj = objArr[a];
            if (obj == null) {
                return false;
            }
        } while (!obj.equals(t));
        return a(a, objArr, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean a(int r4, T[] r5, int r6) {
        /*
        r3 = this;
        r0 = r3.c;
        r0 = r0 + -1;
        r3.c = r0;
    L_0x0006:
        r0 = r4 + 1;
        r0 = r0 & r6;
    L_0x0009:
        r1 = r5[r0];
        if (r1 != 0) goto L_0x0012;
    L_0x000d:
        r0 = 0;
        r5[r4] = r0;
        r0 = 1;
        return r0;
    L_0x0012:
        r2 = r1.hashCode();
        r2 = a(r2);
        r2 = r2 & r6;
        if (r4 > r0) goto L_0x0025;
    L_0x001d:
        if (r4 >= r2) goto L_0x0021;
    L_0x001f:
        if (r2 <= r0) goto L_0x0029;
    L_0x0021:
        r5[r4] = r1;
        r4 = r0;
        goto L_0x0006;
    L_0x0025:
        if (r4 < r2) goto L_0x0029;
    L_0x0027:
        if (r2 > r0) goto L_0x0021;
    L_0x0029:
        r0 = r0 + 1;
        r0 = r0 & r6;
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.o.a(int, java.lang.Object[], int):boolean");
    }

    public void a() {
        this.c = 0;
        this.e = new Object[0];
    }

    void b() {
        Object[] objArr = this.e;
        int length = objArr.length;
        int i = length << 1;
        int i2 = i - 1;
        Object[] objArr2 = new Object[i];
        int i3 = length;
        length = this.c;
        while (true) {
            int i4 = length - 1;
            if (length != 0) {
                do {
                    i3--;
                } while (objArr[i3] == null);
                length = a(objArr[i3].hashCode()) & i2;
                if (objArr2[length] != null) {
                    do {
                        length = (length + 1) & i2;
                    } while (objArr2[length] != null);
                }
                objArr2[length] = objArr[i3];
                length = i4;
            } else {
                this.b = i2;
                this.d = (int) (((float) i) * this.a);
                this.e = objArr2;
                return;
            }
        }
    }

    static int a(int i) {
        int i2 = -1640531527 * i;
        return i2 ^ (i2 >>> 16);
    }

    public T[] c() {
        return this.e;
    }
}
