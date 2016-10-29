package com.google.android.gms.internal;

import java.util.Map;

final class fc implements fj {
    fc() {
    }

    public void a(sz szVar, Map<String, String> map) {
        if (((Boolean) cj.at.c()).booleanValue()) {
            szVar.c(!Boolean.parseBoolean((String) map.get("disabled")));
        }
    }
}
