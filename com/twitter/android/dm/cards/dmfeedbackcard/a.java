package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.res.Resources;
import big;
import com.twitter.config.d;
import com.twitter.util.aj;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.text.NumberFormat;
import java.util.Map;

/* compiled from: Twttr */
public class a {
    private static final Map<Integer, Integer> a;

    static {
        a = (Map) r.a(5).b(Integer.valueOf(1), Integer.valueOf(2131362346)).b(Integer.valueOf(2), Integer.valueOf(2131362347)).b(Integer.valueOf(3), Integer.valueOf(2131362348)).b(Integer.valueOf(4), Integer.valueOf(2131362349)).b(Integer.valueOf(5), Integer.valueOf(2131362350)).q();
    }

    public static String a(Resources resources, int i, String str) {
        return (String) e.b(b(resources, i, str), String.valueOf(i));
    }

    public static boolean a() {
        return d.a("b2c_feedback_expiration_enabled");
    }

    public static String a(Resources resources, String str, int i, String str2) {
        if (!big.d() || !aj.b(str) || !aj.b(str2) || b(resources, i, a(str2)) == null) {
            return resources.getString(2131362344);
        }
        return resources.getString(2131362345, new Object[]{str, b(resources, i, a(str2))});
    }

    private static String a(String str) {
        return "nps".equalsIgnoreCase(str) ? "2586390716:feedback_nps" : "2586390716:feedback_csat";
    }

    private static String b(Resources resources, int i, String str) {
        if ("2586390716:feedback_csat".equals(str)) {
            Integer num = (Integer) a.get(Integer.valueOf(i));
            return num != null ? resources.getString(num.intValue()) : null;
        } else if (!"2586390716:feedback_nps".equals(str) || i < 0 || i > 10) {
            return null;
        } else {
            return NumberFormat.getInstance().format((long) i);
        }
    }
}
