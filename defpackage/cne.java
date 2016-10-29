package defpackage;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;

/* compiled from: Twttr */
/* renamed from: cne */
public abstract class cne {
    public static final int a;

    static {
        a = cne.a(new int[]{1, 4, 32, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS, 16, ItemAnimator.FLAG_MOVED, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, AccessibilityNodeInfoCompat.ACTION_SET_TEXT, AccessibilityNodeInfoCompat.ACTION_COPY, AccessibilityNodeInfoCompat.ACTION_PASTE, AccessibilityNodeInfoCompat.ACTION_CUT, AccessibilityNodeInfoCompat.ACTION_SET_SELECTION, AccessibilityNodeInfoCompat.ACTION_EXPAND, AccessibilityNodeInfoCompat.ACTION_DISMISS});
    }

    public static int a(int[] iArr) {
        return cne.a(0, iArr);
    }

    public static int a(int i, int[] iArr) {
        for (int i2 : iArr) {
            i |= i2;
        }
        return i;
    }

    public static int a(int i, int i2) {
        return i | i2;
    }

    public static boolean b(int i, int i2) {
        return (i & i2) == i2;
    }

    public static int a(int i, int i2, int i3) {
        if (cne.b(i, i2)) {
            return 2;
        }
        if (cne.b(i, i3)) {
            return 1;
        }
        return 0;
    }
}
