package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public final class p extends n {
    private final LinkedTreeMap<String, n> a;

    public p() {
        this.a = new LinkedTreeMap();
    }

    public void a(String str, n nVar) {
        if (nVar == null) {
            nVar = o.a;
        }
        this.a.put(str, nVar);
    }

    public Set<Entry<String, n>> o() {
        return this.a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof p) && ((p) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
