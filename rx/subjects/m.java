package rx.subjects;

/* compiled from: Twttr */
public final class m<T> {
    static final n[] c;
    static final m d;
    static final m e;
    final boolean a;
    final n[] b;

    static {
        c = new n[0];
        d = new m(true, c);
        e = new m(false, c);
    }

    public m(boolean z, n[] nVarArr) {
        this.a = z;
        this.b = nVarArr;
    }

    public m a(n nVar) {
        int length = this.b.length;
        Object obj = new n[(length + 1)];
        System.arraycopy(this.b, 0, obj, 0, length);
        obj[length] = nVar;
        return new m(this.a, obj);
    }

    public m b(n nVar) {
        n[] nVarArr = this.b;
        int length = nVarArr.length;
        if (length == 1 && nVarArr[0] == nVar) {
            return e;
        }
        if (length == 0) {
            return this;
        }
        Object obj = new n[(length - 1)];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3;
            n nVar2 = nVarArr[i];
            if (nVar2 == nVar) {
                i3 = i2;
            } else if (i2 == length - 1) {
                return this;
            } else {
                i3 = i2 + 1;
                obj[i2] = nVar2;
            }
            i++;
            i2 = i3;
        }
        if (i2 == 0) {
            return e;
        }
        n[] nVarArr2;
        if (i2 < length - 1) {
            nVarArr2 = new n[i2];
            System.arraycopy(obj, 0, nVarArr2, 0, i2);
        } else {
            Object obj2 = obj;
        }
        return new m(this.a, nVarArr2);
    }
}
