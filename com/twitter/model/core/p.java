package com.twitter.model.core;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class p {
    public static int a(int i, int i2) {
        switch (i2) {
            case WireMessage.WIRE_CHAT /*1*/:
                return (((i | 1) | AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) & -129) & -5;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (e(i)) {
                    return 32772;
                }
                return 4;
            case AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY /*256*/:
                return ((((i | AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) | 1) | AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) & -129) & -5;
            case AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD /*8192*/:
                return (i | AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD) & -17;
            default:
                return i | i2;
        }
    }

    public static int b(int i, int i2) {
        if ((i2 & 1) != 0) {
            i2 = (((i2 | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) | 16) | AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) | ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT;
        }
        return (i2 ^ -1) & i;
    }

    public static boolean a(int i) {
        return (i & 1) != 0;
    }

    public static boolean b(int i) {
        return (i & 2) != 0;
    }

    public static boolean c(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD) != 0;
    }

    public static boolean d(int i) {
        return (i & 4) != 0;
    }

    public static boolean e(int i) {
        return (AccessibilityNodeInfoCompat.ACTION_PASTE & i) != 0;
    }

    public static boolean f(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) != 0;
    }

    public static boolean g(int i) {
        return (i & 8) != 0;
    }

    public static boolean h(int i) {
        return (i & 16) != 0;
    }

    public static boolean i(int i) {
        return (i & 32) != 0;
    }

    public static boolean j(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_COPY) != 0;
    }

    public static boolean k(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) != 0;
    }

    public static boolean l(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) != 0;
    }
}
