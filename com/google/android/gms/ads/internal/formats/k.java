package com.google.android.gms.ads.internal.formats;

import android.text.TextUtils;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.sz;
import java.util.Map;

class k implements fj {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        j.c(this.a).l().a(new l(this, map));
        String str = (String) map.get("overlayHtml");
        String str2 = (String) map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            j.c(this.a).loadData(str, "text/html", Util.UTF_8);
        } else {
            j.c(this.a).loadDataWithBaseURL(str2, str, "text/html", Util.UTF_8, null);
        }
    }
}
