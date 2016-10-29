package com.twitter.android.runtimepermissions;

import android.content.Context;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.twitter.ui.widget.u;
import java.util.Set;

/* compiled from: Twttr */
public class c {
    public static void a(Context context, View view, Set<String> set) {
        Snackbar a = u.a(context, view, 2131363257, 0);
        a.setAction(2131362661, new d(context, set));
        a.show();
    }
}
