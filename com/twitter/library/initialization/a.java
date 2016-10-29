package com.twitter.library.initialization;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat;
import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class a extends AccessibilityStateChangeListenerCompat {
    final /* synthetic */ Context a;
    final /* synthetic */ bg b;
    final /* synthetic */ AccessibilityInitializer c;

    a(AccessibilityInitializer accessibilityInitializer, Context context, bg bgVar) {
        this.c = accessibilityInitializer;
        this.a = context;
        this.b = bgVar;
    }

    public void onAccessibilityStateChanged(boolean z) {
        com.twitter.util.ui.a.a(this.a);
        if (z) {
            bbu.a(new TwitterScribeLog(this.b.c().g()).b(new String[]{"app::::explorebytouch_enabled"}));
        }
    }
}
