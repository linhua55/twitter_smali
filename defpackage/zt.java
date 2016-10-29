package defpackage;

import com.twitter.config.c;

/* compiled from: Twttr */
/* renamed from: zt */
public class zt {
    public static int a() {
        if (c.a("android_push_notification_disaggregation_2520", new String[]{"one_five", "two_five"})) {
            return 3;
        }
        return 2;
    }

    public static int b() {
        if (c.a("android_push_notification_disaggregation_2520", new String[]{"one", "one_five"})) {
            return 1;
        }
        if (c.a("android_push_notification_disaggregation_2520", new String[]{"two", "two_five"})) {
            return 2;
        }
        return c.a("android_push_notification_disaggregation_2520", new String[]{"three"}) ? 3 : 0;
    }
}
