package com.twitter.android;

import android.view.View;
import android.widget.ListView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.widget.UserView;

/* compiled from: Twttr */
public class xo {
    public static boolean a(ListView listView, long j) {
        int childCount = listView.getChildCount() - 1;
        for (int i = 0; i <= childCount; i++) {
            View childAt = listView.getChildAt(i);
            if (childAt != null) {
                UserView userView;
                if (childAt instanceof UserView) {
                    userView = (UserView) childAt;
                } else {
                    if (childAt instanceof GroupedRowView) {
                        childAt = ((GroupedRowView) childAt).getChildAt(0);
                        if (childAt instanceof UserView) {
                            userView = (UserView) childAt;
                        }
                    }
                    userView = null;
                }
                if (userView != null && ((xp) userView.getTag()).d == j) {
                    return true;
                }
            }
        }
        return false;
    }
}
