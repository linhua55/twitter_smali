package com.twitter.model.core;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;

/* compiled from: Twttr */
public class cx {
    public static boolean a(int i) {
        return (i & 64) == 0;
    }

    public static boolean b(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0;
    }

    public static boolean c(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) == 0;
    }

    public static boolean d(int i) {
        return (i & 1) != 0;
    }

    public static boolean e(int i) {
        return (i & 2) != 0;
    }

    public static boolean f(int i) {
        return (i & ItemAnimator.FLAG_MOVED) != 0;
    }
}
