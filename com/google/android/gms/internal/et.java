package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public final class et implements fj {
    private final eu a;

    public et(eu euVar) {
        this.a = euVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("name");
        if (str == null) {
            b.d("App event with no name parameter.");
        } else {
            this.a.a(str, (String) map.get("info"));
        }
    }
}
