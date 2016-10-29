package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.dm;

public abstract class NativeAdView extends FrameLayout {
    private final FrameLayout a;
    private final dm b;

    public NativeAdView(Context context) {
        super(context);
        this.a = b(context);
        this.b = a();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = b(context);
        this.b = a();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = b(context);
        this.b = a();
    }

    private dm a() {
        bm.a(this.a, "createDelegate must be called after mOverlayFrame has been created");
        return aa.d().a(this.a.getContext(), this, this.a);
    }

    private FrameLayout b(Context context) {
        View a = a(context);
        a.setLayoutParams(new LayoutParams(-1, -1));
        addView(a);
        return a;
    }

    protected View a(String str) {
        try {
            j a = this.b.a(str);
            if (a != null) {
                return (View) m.a(a);
            }
        } catch (Throwable e) {
            b.b("Unable to call getAssetView on delegate", e);
        }
        return null;
    }

    FrameLayout a(Context context) {
        return new FrameLayout(context);
    }

    protected void a(String str, View view) {
        try {
            this.b.a(str, m.a((Object) view));
        } catch (Throwable e) {
            b.b("Unable to call setAssetView on delegate", e);
        }
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.a);
    }

    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.a != view) {
            super.bringChildToFront(this.a);
        }
    }

    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.a);
    }

    public void removeView(View view) {
        if (this.a != view) {
            super.removeView(view);
        }
    }

    public void setNativeAd(a aVar) {
        try {
            this.b.a((j) aVar.a());
        } catch (Throwable e) {
            b.b("Unable to call setNativeAd on delegate", e);
        }
    }
}
