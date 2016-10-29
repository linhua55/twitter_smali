package defpackage;

/* compiled from: Twttr */
/* renamed from: dao */
final class dao {
    Object[] a;
    int b;

    dao() {
    }

    public void a(Object obj) {
        Object[] objArr;
        int i = this.b;
        Object obj2 = this.a;
        if (obj2 == null) {
            objArr = new Object[16];
            this.a = objArr;
        } else if (i == obj2.length) {
            objArr = new Object[((i >> 2) + i)];
            System.arraycopy(obj2, 0, objArr, 0, i);
            this.a = objArr;
        } else {
            Object obj3 = obj2;
        }
        objArr[i] = obj;
        this.b = i + 1;
    }
}
