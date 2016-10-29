package com.twitter.android.settings.developer;

import android.app.Activity;
import android.content.Context;
import com.twitter.util.aj;
import csw;
import cvi;
import java.io.File;

/* compiled from: Twttr */
public class q {
    public static void a(Context context) {
        File c = c(context);
        if (c != null) {
            StringBuilder stringBuilder = new StringBuilder();
            for (p pVar : n.b(context)) {
                Iterable iterable = pVar.c;
                stringBuilder.append(pVar.a);
                stringBuilder.append(": ");
                stringBuilder.append(pVar.b);
                if (iterable != null) {
                    stringBuilder.append(" (");
                    stringBuilder.append(aj.a(", ", iterable));
                    stringBuilder.append(")");
                }
                stringBuilder.append("\n");
            }
            cvi.a(stringBuilder.toString(), c);
        }
    }

    public static void b(Context context) {
        cvi.d(c(context));
    }

    public static void a(Activity activity) {
        if (!activity.isFinishing()) {
            File c = c(activity.getApplicationContext());
            if (c != null) {
                csw.a(activity, c, "[twitter-android FS export]", 6000);
            }
        }
    }

    private static File c(Context context) {
        File b = cvi.b(context);
        if (b == null) {
            return null;
        }
        return new File(b, "feature_switches_export.txt");
    }
}
