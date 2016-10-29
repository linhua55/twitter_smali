package com.google.android.gms.internal;

import java.util.Map;

final class ez implements fj {
    ez() {
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("u");
        if (str == null) {
            qd.d("URL missing from httpTrack GMSG.");
        } else {
            new sb(szVar.getContext(), szVar.o().b, str).g();
        }
    }
}
