package com.twitter.android.moments.ui.maker.navigation;

import acx;
import ajh;
import android.app.Activity;
import android.view.ViewGroup;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class o {
    private final b a;
    private final j b;

    public static o a(Activity activity, acx acx, ajh ajh, ViewGroup viewGroup) {
        return new o(new j(activity, acx, ajh), new b(activity, acx, ajh, viewGroup));
    }

    public o(j jVar, b bVar) {
        this.a = bVar;
        this.b = jVar;
    }

    public u a(t tVar, NavigationKey navigationKey, k kVar) {
        switch (p.a[navigationKey.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a.a(tVar, kVar);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.b.a(tVar, kVar);
            default:
                throw new IllegalArgumentException("key must have a Screen type defined");
        }
    }
}
