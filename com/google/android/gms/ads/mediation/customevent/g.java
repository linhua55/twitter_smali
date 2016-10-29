package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.o;
import java.util.HashMap;

@Deprecated
public final class g implements o {
    private final HashMap<String, Object> a;

    public g() {
        this.a = new HashMap();
    }

    public Object a(String str) {
        return this.a.get(str);
    }
}
