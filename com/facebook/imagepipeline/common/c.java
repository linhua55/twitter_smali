package com.facebook.imagepipeline.common;

import com.facebook.common.util.a;
import java.util.Locale;

/* compiled from: Twttr */
public class c {
    public final int a;
    public final int b;

    public int hashCode() {
        return a.a(this.a, this.b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.a == cVar.a && this.b == cVar.b) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format((Locale) null, "%dx%d", new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b)});
    }
}
