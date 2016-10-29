package com.twitter.android.dm;

import android.content.res.Resources;
import android.view.View;
import com.twitter.android.hx;
import com.twitter.util.collection.ar;

/* compiled from: Twttr */
public class ak {
    public static void a(View view) {
        Resources resources = view.getResources();
        int a = hx.a(resources, (int) resources.getDimension(2131690082));
        View findViewById = view.findViewById(2131953280);
        View findViewById2 = view.findViewById(2131952265);
        View findViewById3 = view.findViewById(2131953283);
        View findViewById4 = view.findViewById(2131953281);
        for (View findViewById5 : ar.a(findViewById5, new View[]{findViewById2, findViewById3, findViewById4})) {
            int paddingLeft = findViewById5.getPaddingLeft();
            int paddingRight = findViewById5.getPaddingRight();
            if (a != paddingLeft || a != paddingRight) {
                findViewById5.setPadding(a, findViewById5.getPaddingTop(), a, findViewById5.getBottom());
            }
        }
    }
}
