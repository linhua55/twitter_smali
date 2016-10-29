package com.twitter.model.businessprofiles;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ab implements Comparable<ab> {
    public static final ab a;
    public static final ab b;
    public static final n<ab> c;
    public final int d;
    public final int e;

    public /* synthetic */ int compareTo(Object obj) {
        return a((ab) obj);
    }

    static {
        a = new ab(0, 0);
        b = new ab(24, 0);
        c = new ac();
    }

    public ab(int i, int i2) {
        if (i < 0) {
            this.d = 0;
            this.e = 0;
        } else if (i >= 24) {
            this.d = 24;
            this.e = 0;
        } else {
            this.d = i;
            this.e = i2;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ab abVar = (ab) obj;
        if (this.d == abVar.d && this.e == abVar.e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.d * 31) + this.e;
    }

    public String toString() {
        return String.format("%02d:%02d", new Object[]{Integer.valueOf(this.d), Integer.valueOf(this.e)});
    }

    public int a(ab abVar) {
        if (abVar == null) {
            return 1;
        }
        return ((this.d * 60) + this.e) - ((abVar.d * 60) + abVar.e);
    }
}
