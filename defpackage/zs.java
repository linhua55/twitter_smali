package defpackage;

import android.content.Context;
import com.twitter.android.util.aq;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: zs */
public class zs {
    private static final Map<FactorType, String> a;

    static {
        a = new HashMap();
        a.put(FactorType.EMAIL, NotificationCompatApi21.CATEGORY_EMAIL);
        a.put(FactorType.SMS, "sms");
    }

    public static boolean a() {
        if (!bg.a().c().d()) {
            if (c.a("one_factor_authorization_android_3724", "1fa_with_password")) {
                return true;
            }
        }
        return false;
    }

    public static boolean b() {
        return d.a("one_factor_authorization_android_sms_enabled");
    }

    public static boolean a(Context context, FactorType factorType) {
        return zs.b() && factorType == FactorType.SMS && aq.a(context).f();
    }

    public static String a(FactorType factorType) {
        return (String) a.get(factorType);
    }

    public static String a(OneFactorEligibleFactor[] oneFactorEligibleFactorArr, FactorType factorType) {
        if (!(oneFactorEligibleFactorArr == null || factorType == null)) {
            for (OneFactorEligibleFactor oneFactorEligibleFactor : oneFactorEligibleFactorArr) {
                if (oneFactorEligibleFactor.b == factorType) {
                    return oneFactorEligibleFactor.c;
                }
            }
        }
        return null;
    }
}
