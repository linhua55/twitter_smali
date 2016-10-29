package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

@oi
public class cx {
    private final Map<String, cu> a;
    @Nullable
    private final cy b;

    public cx(@Nullable cy cyVar) {
        this.b = cyVar;
        this.a = new HashMap();
    }

    @Nullable
    public cy a() {
        return this.b;
    }

    public void a(String str, cu cuVar) {
        this.a.put(str, cuVar);
    }

    public void a(String str, String str2, long j) {
        cp.a(this.b, (cu) this.a.get(str2), j, str);
        this.a.put(str, cp.a(this.b, j));
    }
}
