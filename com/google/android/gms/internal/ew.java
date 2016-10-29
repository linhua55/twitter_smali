package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public final class ew implements fj {
    private long a(long j) {
        return (j - ar.i().a()) + ar.i().b();
    }

    private void b(sz szVar, Map<String, String> map) {
        String str = (String) map.get("label");
        String str2 = (String) map.get("start_label");
        String str3 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str)) {
            b.d("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str3)) {
            b.d("No timestamp given for CSI tick.");
        } else {
            try {
                long a = a(Long.parseLong(str3));
                if (TextUtils.isEmpty(str2)) {
                    str2 = "native:view_load";
                }
                szVar.x().a(str, str2, a);
            } catch (Throwable e) {
                b.d("Malformed timestamp for CSI tick.", e);
            }
        }
    }

    private void c(sz szVar, Map<String, String> map) {
        String str = (String) map.get("value");
        if (TextUtils.isEmpty(str)) {
            b.d("No value given for CSI experiment.");
            return;
        }
        cy a = szVar.x().a();
        if (a == null) {
            b.d("No ticker for WebView, dropping experiment ID.");
        } else {
            a.a("e", str);
        }
    }

    private void d(sz szVar, Map<String, String> map) {
        String str = (String) map.get("name");
        String str2 = (String) map.get("value");
        if (TextUtils.isEmpty(str2)) {
            b.d("No value given for CSI extra.");
        } else if (TextUtils.isEmpty(str)) {
            b.d("No name given for CSI extra.");
        } else {
            cy a = szVar.x().a();
            if (a == null) {
                b.d("No ticker for WebView, dropping extra parameter.");
            } else {
                a.a(str, str2);
            }
        }
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            b(szVar, map);
        } else if ("experiment".equals(str)) {
            c(szVar, map);
        } else if ("extra".equals(str)) {
            d(szVar, map);
        }
    }
}
