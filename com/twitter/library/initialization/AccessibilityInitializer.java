package com.twitter.library.initialization;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.view.accessibility.AccessibilityManager;
import com.twitter.library.client.bg;
import com.twitter.util.ui.a;
import defpackage.aof;

/* compiled from: Twttr */
public class AccessibilityInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        a.a(context);
        AccessibilityManagerCompat.addAccessibilityStateChangeListener((AccessibilityManager) context.getSystemService("accessibility"), new a(this, context, bg.a()));
    }
}
