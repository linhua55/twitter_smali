package com.twitter.model.search;

import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class j {
    public static final n<j> a;
    public final String b;
    public final List<int[]> c;

    static {
        a = new l();
    }

    public j(String str, List<int[]> list) {
        this.b = str;
        this.c = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        boolean equals = this.b == null ? jVar.b == null : this.b.equals(jVar.b);
        if (!equals) {
            return false;
        }
        int size = this.c.size();
        if (size != jVar.c.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            int[] iArr = (int[]) this.c.get(i);
            int[] iArr2 = (int[]) jVar.c.get(i);
            if (iArr.length != iArr2.length) {
                return false;
            }
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] != iArr2[i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        return ((this.b != null ? this.b.hashCode() : 0) * 31) + this.c.hashCode();
    }
}
