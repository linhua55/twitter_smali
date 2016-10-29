package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.rk;
import com.google.android.gms.internal.sf;
import com.google.android.gms.internal.sz;
import java.util.ArrayList;
import java.util.List;

public class zzs$zza extends ViewSwitcher {
    private final rk a;
    private final sf b;

    public zzs$zza(Context context, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        super(context);
        this.a = new rk(context);
        if (context instanceof Activity) {
            this.b = new sf((Activity) context, onGlobalLayoutListener, onScrollChangedListener);
            this.b.a();
            return;
        }
        this.b = null;
    }

    public rk a() {
        return this.a;
    }

    public void b() {
        qd.e("Disable position monitoring on adFrame.");
        if (this.b != null) {
            this.b.b();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b != null) {
            this.b.c();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.b != null) {
            this.b.d();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.a.a(motionEvent);
        return false;
    }

    public void removeAllViews() {
        List<sz> arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != null && (childAt instanceof sz)) {
                arrayList.add((sz) childAt);
            }
        }
        super.removeAllViews();
        for (sz destroy : arrayList) {
            destroy.destroy();
        }
    }
}
