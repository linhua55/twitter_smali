package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public class fs implements fj {
    private final ft a;

    public fs(ft ftVar) {
        this.a = ftVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        float parseFloat;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        try {
            if (map.get("blurRadius") != null) {
                parseFloat = Float.parseFloat((String) map.get("blurRadius"));
                this.a.b(equals);
                this.a.a(equals2, parseFloat);
            }
        } catch (Throwable e) {
            b.b("Fail to parse float", e);
        }
        parseFloat = 0.0f;
        this.a.b(equals);
        this.a.a(equals2, parseFloat);
    }
}
