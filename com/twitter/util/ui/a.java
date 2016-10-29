package com.twitter.util.ui;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ListView;

/* compiled from: Twttr */
public class a {
    private static volatile boolean a;

    static {
        a = false;
    }

    public static void a(View view, int i) {
        if (i == 4) {
            view.setImportantForAccessibility(2);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    a(viewGroup.getChildAt(i2), 4);
                }
                return;
            }
            return;
        }
        view.setImportantForAccessibility(i);
    }

    public static boolean a() {
        return a;
    }

    public static void a(Context context) {
        boolean z;
        a = false;
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && AccessibilityManagerCompat.isTouchExplorationEnabled(accessibilityManager)) {
            z = true;
        } else {
            z = false;
        }
        a = z;
    }

    public static void a(ListView listView) {
        if (a()) {
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int lastVisiblePosition = listView.getLastVisiblePosition();
            while (firstVisiblePosition <= lastVisiblePosition) {
                View childAt = listView.getChildAt(firstVisiblePosition);
                if (childAt == null || childAt.getContentDescription() == null) {
                    firstVisiblePosition++;
                } else {
                    listView.postDelayed(new b(childAt), 1000);
                    return;
                }
            }
        }
    }
}
