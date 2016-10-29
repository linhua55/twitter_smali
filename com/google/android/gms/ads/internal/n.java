package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.sz;

@oi
public class n implements m {
    private final pt a;
    private final sz b;

    public n(pt ptVar, sz szVar) {
        this.a = ptVar;
        this.b = szVar;
    }

    public void a(String str) {
        b.a("An auto-clicking creative is blocked");
        Builder builder = new Builder();
        builder.scheme("https");
        builder.path("//pagead2.googlesyndication.com/pagead/gen_204");
        builder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
        if (!TextUtils.isEmpty(str)) {
            builder.appendQueryParameter("navigationURL", str);
        }
        if (!(this.a == null || this.a.b == null || TextUtils.isEmpty(this.a.b.o))) {
            builder.appendQueryParameter("debugDialog", this.a.b.o);
        }
        ar.e().a(this.b.getContext(), this.b.o().b, builder.toString());
    }
}
