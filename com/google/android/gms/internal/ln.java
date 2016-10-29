package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public class ln {
    private final sz a;
    private final boolean b;
    private final String c;

    public ln(sz szVar, Map<String, String> map) {
        this.a = szVar;
        this.c = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.b = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        } else {
            this.b = true;
        }
    }

    public void a() {
        if (this.a == null) {
            b.d("AdWebView is null");
            return;
        }
        int b = "portrait".equalsIgnoreCase(this.c) ? ar.g().b() : "landscape".equalsIgnoreCase(this.c) ? ar.g().a() : this.b ? -1 : ar.g().c();
        this.a.b(b);
    }
}
