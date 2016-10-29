package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import java.util.Map;

public class aj implements fj {
    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("request_id");
        qd.d("Invalid request: " + ((String) map.get("errors")));
        ab.c().b(str);
    }
}
