package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import ia;
import ib;
import ie;

public final class zzac extends Button {
    public zzac(Context context) {
        this(context, null);
    }

    public zzac(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private int a(int i, int i2, int i3) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return i3;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return i2;
            default:
                throw new IllegalStateException("Unknown button size: " + i);
        }
    }

    private int a(int i, int i2, int i3, int i4) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return i2;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return i3;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return i4;
            default:
                throw new IllegalStateException("Unknown color scheme: " + i);
        }
    }

    private void a(Resources resources) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        float f = resources.getDisplayMetrics().density;
        setMinHeight((int) ((f * 48.0f) + 0.5f));
        setMinWidth((int) ((f * 48.0f) + 0.5f));
    }

    private void a(Resources resources, int i, int i2, boolean z) {
        setBackgroundDrawable(resources.getDrawable(z ? a(i, a(i2, ib.common_plus_signin_btn_icon_dark, ib.common_plus_signin_btn_icon_light, ib.common_plus_signin_btn_icon_dark), a(i2, ib.common_plus_signin_btn_text_dark, ib.common_plus_signin_btn_text_light, ib.common_plus_signin_btn_text_dark)) : a(i, a(i2, ib.common_google_signin_btn_icon_dark, ib.common_google_signin_btn_icon_light, ib.common_google_signin_btn_icon_light), a(i2, ib.common_google_signin_btn_text_dark, ib.common_google_signin_btn_text_light, ib.common_google_signin_btn_text_light))));
    }

    private boolean a(Scope[] scopeArr) {
        if (scopeArr == null) {
            return false;
        }
        for (Scope a : scopeArr) {
            String a2 = a.a();
            if (a2.contains("/plus.") && !a2.equals("https://www.googleapis.com/auth/plus.me")) {
                return true;
            }
            if (a2.equals("https://www.googleapis.com/auth/games")) {
                return true;
            }
        }
        return false;
    }

    private void b(Resources resources, int i, int i2, boolean z) {
        setTextColor((ColorStateList) bm.a(resources.getColorStateList(z ? a(i2, ia.common_plus_signin_btn_text_dark, ia.common_plus_signin_btn_text_light, ia.common_plus_signin_btn_text_dark) : a(i2, ia.common_google_signin_btn_text_dark, ia.common_google_signin_btn_text_light, ia.common_google_signin_btn_text_light))));
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                setText(resources.getString(ie.common_signin_button_text));
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                setText(resources.getString(ie.common_signin_button_text_long));
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                setText(null);
                break;
            default:
                throw new IllegalStateException("Unknown button size: " + i);
        }
        setTransformationMethod(null);
    }

    public void a(Resources resources, int i, int i2, Scope[] scopeArr) {
        boolean a = a(scopeArr);
        a(resources);
        a(resources, i, i2, a);
        b(resources, i, i2, a);
    }
}
