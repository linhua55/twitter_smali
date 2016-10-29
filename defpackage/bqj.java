package defpackage;

import android.annotation.SuppressLint;
import bqk;

@SuppressLint({"BlacklistedInterface"})
/* compiled from: Twttr */
/* renamed from: bqj */
public abstract class bqj implements bqk {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof bqk) || obj.getClass() != getClass()) {
            return super.equals(obj);
        }
        return g().equals(((bqk) obj).g());
    }

    public int hashCode() {
        return g().hashCode();
    }
}
