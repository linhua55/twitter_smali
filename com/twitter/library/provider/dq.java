package com.twitter.library.provider;

import cni;

/* compiled from: Twttr */
final class dq {
    public final long a;
    public final cni b;

    dq(long j, cni cni) {
        this.a = j;
        this.b = cni;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dq dqVar = (dq) obj;
        if (this.a != dqVar.a) {
            return false;
        }
        if (this.b != null) {
            return this.b.equals(dqVar.b);
        }
        if (dqVar.b != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.b != null ? this.b.hashCode() : 0) + (((int) (this.a ^ (this.a >>> 32))) * 31);
    }
}
