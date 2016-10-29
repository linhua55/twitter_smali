package defpackage;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.telephony.TelephonyManager;
import com.twitter.config.d;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.businessprofiles.KeyEngagementType;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: brz */
public class brz {
    public static boolean a() {
        return d.a("business_profiles_enabled");
    }

    public static boolean b() {
        return d.a("b2c_resin_dm_cta_enabled");
    }

    public static boolean c() {
        return d.a("b2c_resin_enabled");
    }

    public static boolean d() {
        return brz.c() && d.a("b2c_resin_cs_pointer_enabled");
    }

    public static boolean e() {
        return brz.c() && d.a("b2c_resin_online_hours_enabled");
    }

    public static boolean f() {
        return brz.c() && d.a("b2c_resin_responsiveness_level_enabled");
    }

    public static boolean a(m mVar) {
        return (!brz.d() || mVar.h == null || mVar.h.d == null) ? false : true;
    }

    public static boolean g() {
        return d.a("business_profiles_state_enabled");
    }

    public static boolean b(m mVar) {
        return (mVar == null || mVar.e == KeyEngagementType.c || !d.a("business_profiles_featured_tab_enabled")) ? false : true;
    }

    public static boolean a(TwitterUser twitterUser, m mVar) {
        return twitterUser != null && mVar == null && brz.a() && (!brz.g() || twitterUser.N == BusinessProfileState.ENABLED);
    }

    public static boolean b(TwitterUser twitterUser, m mVar) {
        return (twitterUser == null || !brz.a() || mVar == null) ? false : true;
    }

    public static String a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        CharSequence simCountryIso = telephonyManager.getSimCountryIso();
        if (aj.b(simCountryIso)) {
            return simCountryIso.toUpperCase(Locale.US);
        }
        if (telephonyManager.getPhoneType() != 2) {
            CharSequence networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (aj.b(networkCountryIso)) {
                return networkCountryIso.toUpperCase(Locale.US);
            }
        }
        return BuildConfig.VERSION_NAME;
    }
}
