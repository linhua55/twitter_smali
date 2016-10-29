package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final View getAdvertiserView() {
        return super.a("1004");
    }

    public final View getBodyView() {
        return super.a("1002");
    }

    public final View getCallToActionView() {
        return super.a("1003");
    }

    public final View getHeadlineView() {
        return super.a("1001");
    }

    public final View getImageView() {
        return super.a("1005");
    }

    public final View getLogoView() {
        return super.a("1006");
    }

    public final void setAdvertiserView(View view) {
        super.a("1004", view);
    }

    public final void setBodyView(View view) {
        super.a("1002", view);
    }

    public final void setCallToActionView(View view) {
        super.a("1003", view);
    }

    public final void setHeadlineView(View view) {
        super.a("1001", view);
    }

    public final void setImageView(View view) {
        super.a("1005", view);
    }

    public final void setLogoView(View view) {
        super.a("1006", view);
    }
}
