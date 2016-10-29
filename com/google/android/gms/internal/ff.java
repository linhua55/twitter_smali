package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

final class ff implements fj {
    ff() {
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("u");
        if (str == null) {
            qd.d("URL missing from click GMSG.");
            return;
        }
        Uri a;
        Uri parse = Uri.parse(str);
        try {
            y n = szVar.n();
            if (n != null && n.b(parse)) {
                a = n.a(parse, szVar.getContext());
                new sb(szVar.getContext(), szVar.o().b, a.toString()).g();
            }
        } catch (zzao e) {
            qd.d("Unable to append parameter to URL: " + str);
        }
        a = parse;
        new sb(szVar.getContext(), szVar.o().b, a.toString()).g();
    }
}
