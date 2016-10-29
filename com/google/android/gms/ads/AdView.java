package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import android.util.AttributeSet;
import com.google.android.gms.ads.purchase.b;

public final class AdView extends BaseAdView {
    public AdView(Context context) {
        super(context, 1);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 1);
    }

    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    @RequiresPermission("android.permission.INTERNET")
    public /* bridge */ /* synthetic */ void a(d dVar) {
        super.a(dVar);
    }

    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public /* bridge */ /* synthetic */ a getAdListener() {
        return super.getAdListener();
    }

    public /* bridge */ /* synthetic */ g getAdSize() {
        return super.getAdSize();
    }

    public /* bridge */ /* synthetic */ String getAdUnitId() {
        return super.getAdUnitId();
    }

    public /* bridge */ /* synthetic */ b getInAppPurchaseListener() {
        return super.getInAppPurchaseListener();
    }

    public /* bridge */ /* synthetic */ String getMediationAdapterClassName() {
        return super.getMediationAdapterClassName();
    }

    public /* bridge */ /* synthetic */ void setAdListener(a aVar) {
        super.setAdListener(aVar);
    }

    public /* bridge */ /* synthetic */ void setAdSize(g gVar) {
        super.setAdSize(gVar);
    }

    public /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        super.setAdUnitId(str);
    }

    public /* bridge */ /* synthetic */ void setInAppPurchaseListener(b bVar) {
        super.setInAppPurchaseListener(bVar);
    }
}
