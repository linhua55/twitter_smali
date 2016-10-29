package defpackage;

import bvj;
import com.twitter.config.d;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: zr */
public class zr {
    public static boolean a(int i) {
        if (i == 0) {
            return zr.a("interest_picker_v1_1_nux_android_4721", true).equals("enabled");
        }
        if (i == 1) {
            return zr.a("interest_picker_v1_1_rux_android_4722", true).equals("enabled");
        }
        return false;
    }

    public static String a(String str, boolean z) {
        h.a(bvj.a() != 0, "getLoggedOutExperimentBucketForNUX should be called by logged-in users only");
        if (z) {
            return d.b(0, str, "unassigned");
        }
        return d.a(0, str, "unassigned");
    }
}
