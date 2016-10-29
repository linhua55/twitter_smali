package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.vu;

@oi
public class o {
    public void a(Context context, AdOverlayInfoParcel adOverlayInfoParcel) {
        a(context, adOverlayInfoParcel, true);
    }

    public void a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.l == 4 && adOverlayInfoParcel.d == null) {
            if (adOverlayInfoParcel.c != null) {
                adOverlayInfoParcel.c.e();
            }
            ar.b().a(context, adOverlayInfoParcel.b, adOverlayInfoParcel.j);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.n.e);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.a(intent, adOverlayInfoParcel);
        if (!vu.i()) {
            intent.addFlags(AccessibilityNodeInfoCompat.ACTION_COLLAPSE);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        ar.e().a(context, intent);
    }
}
