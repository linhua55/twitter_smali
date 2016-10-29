package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;

@oi
public class l {
    public final int a;
    public final LayoutParams b;
    public final ViewGroup c;
    public final Context d;

    public l(sz szVar) throws zza {
        this.b = szVar.getLayoutParams();
        ViewParent parent = szVar.getParent();
        this.d = szVar.g();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zza("Could not get the parent of the WebView for an overlay.");
        }
        this.c = (ViewGroup) parent;
        this.a = this.c.indexOfChild(szVar.b());
        this.c.removeView(szVar.b());
        szVar.a(true);
    }
}
