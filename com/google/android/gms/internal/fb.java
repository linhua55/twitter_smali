package com.google.android.gms.internal;

import java.util.Map;

final class fb implements fj {
    fb() {
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("ty");
        String str2 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt((String) map.get("tx"));
            int parseInt2 = Integer.parseInt(str);
            int parseInt3 = Integer.parseInt(str2);
            y n = szVar.n();
            if (n != null) {
                n.a().a(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException e) {
            qd.d("Could not parse touch parameters from gmsg.");
        }
    }
}
