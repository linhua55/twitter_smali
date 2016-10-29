package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzg$zza;
import if;

public final class SignInButton extends FrameLayout implements OnClickListener {
    private int a;
    private int b;
    private Scope[] c;
    private View d;
    private OnClickListener e;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = null;
        a(context, attributeSet);
        a(this.a, this.b, this.c);
    }

    private static Button a(Context context, int i, int i2, Scope[] scopeArr) {
        Button com_google_android_gms_common_internal_zzac = new zzac(context);
        com_google_android_gms_common_internal_zzac.a(context.getResources(), i, i2, scopeArr);
        return com_google_android_gms_common_internal_zzac;
    }

    private void a(Context context) {
        if (this.d != null) {
            removeView(this.d);
        }
        try {
            this.d = d.a(context, this.a, this.b, this.c);
        } catch (zzg$zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.d = a(context, this.a, this.b, this.c);
        }
        addView(this.d);
        this.d.setEnabled(isEnabled());
        this.d.setOnClickListener(this);
    }

    private void a(Context context, AttributeSet attributeSet) {
        int i = 0;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, if.SignInButton, 0, 0);
        try {
            this.a = obtainStyledAttributes.getInt(if.SignInButton_buttonSize, 0);
            this.b = obtainStyledAttributes.getInt(if.SignInButton_colorScheme, 2);
            String string = obtainStyledAttributes.getString(if.SignInButton_scopeUris);
            if (string == null) {
                this.c = null;
            } else {
                String[] split = string.trim().split("\\s+");
                this.c = new Scope[split.length];
                while (i < split.length) {
                    this.c[i] = new Scope(split[i].toString());
                    i++;
                }
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(int i, int i2, Scope[] scopeArr) {
        this.a = i;
        this.b = i2;
        this.c = scopeArr;
        a(getContext());
    }

    public void onClick(View view) {
        if (this.e != null && view == this.d) {
            this.e.onClick(this);
        }
    }

    public void setColorScheme(int i) {
        a(this.a, i, this.c);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.d.setEnabled(z);
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.e = onClickListener;
        if (this.d != null) {
            this.d.setOnClickListener(this);
        }
    }

    public void setScopes(Scope[] scopeArr) {
        a(this.a, this.b, scopeArr);
    }

    public void setSize(int i) {
        a(i, this.b, this.c);
    }
}
