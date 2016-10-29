package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class bl {
    private final List<String> a;
    private final Object b;

    private bl(Object obj) {
        this.b = bm.a(obj);
        this.a = new ArrayList();
    }

    public bl a(String str, Object obj) {
        this.a.add(((String) bm.a(str)) + "=" + String.valueOf(obj));
        return this;
    }

    public String toString() {
        StringBuilder append = new StringBuilder(100).append(this.b.getClass().getSimpleName()).append('{');
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            append.append((String) this.a.get(i));
            if (i < size - 1) {
                append.append(", ");
            }
        }
        return append.append('}').toString();
    }
}
