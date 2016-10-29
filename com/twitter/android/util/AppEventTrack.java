package com.twitter.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import com.twitter.android.mx;
import com.twitter.config.b;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bdj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AppEventTrack {
    public static final Map<String, String> a;

    /* compiled from: Twttr */
    public enum EventType {
        Install,
        Open,
        Login,
        Signup,
        Update
    }

    static {
        a = new HashMap();
        a.put("twcamp", "utm_campaign");
        a.put("twcon", "utm_content");
        a.put("twterm", "utm_term");
        a.put("twsrc", "utm_source");
        a.put("twgr", "utm_medium");
    }

    public static void a(Context context, EventType eventType, String... strArr) {
        String str;
        String str2;
        String str3 = null;
        switch (c.a[eventType.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (strArr.length >= 1) {
                    str = strArr[0];
                } else {
                    str = null;
                }
                str2 = null;
                String str4 = str;
                str = null;
                str3 = str4;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (strArr.length >= 1) {
                    str = strArr[0];
                } else {
                    str = null;
                }
                if (strArr.length >= 2) {
                    str2 = strArr[1];
                } else {
                    str2 = null;
                }
                if (strArr.length >= 3) {
                    str3 = strArr[2];
                    break;
                }
                break;
            default:
                str2 = null;
                str = null;
                break;
        }
        String[] strArr2 = new String[]{str, str2, str3};
        if (eventType == EventType.Install || d.a("app_event_track_enabled")) {
            new d(context, eventType).execute(strArr2);
        }
    }

    static JSONObject b(Context context, EventType eventType, String... strArr) {
        JSONObject jSONObject = new JSONObject();
        com.twitter.library.api.d a = u.a.a();
        Long valueOf = Long.valueOf(bg.a().c().g());
        Locale locale = Locale.getDefault();
        String country = locale.getCountry();
        String str = Build.BRAND;
        String str2 = Build.MODEL;
        String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        String displayLanguage = locale.getDisplayLanguage();
        int i = VERSION.SDK_INT;
        String arVar = an.a(context).e.toString();
        long b = m.b();
        if (a != null) {
            try {
                jSONObject.put("aid", a.a());
                jSONObject.put("limit_ad_tracking", a.b() ? 1 : 0);
            } catch (JSONException e) {
                return null;
            }
        }
        jSONObject.put("user_id", valueOf).put("country_code", country).put("dev_brand", str).put("dev_model", str2).put("dev_carrier", networkOperatorName).put("lang", displayLanguage).put("os_ver", i).put("user_agent", arVar).put("ts", b).put("os_name", "android").put("guest_id", b.a());
        switch (c.a[eventType.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (strArr.length >= 3) {
                    jSONObject.put("action", "launch");
                    jSONObject.put("referrer", strArr[2]);
                    jSONObject.put("integration", "hasOffersSession");
                    break;
                }
                return null;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (strArr.length == 3) {
                    jSONObject.put("action", "open");
                    jSONObject.put("integration", "hasOffersSession");
                    jSONObject.put("mat_click_id", strArr[1]).put("ref_src", strArr[2]).put("ref", strArr[0]);
                    break;
                }
                return null;
            case WireMessage.WIRE_AUTH /*3*/:
                jSONObject.put("action", "update");
                jSONObject.put("integration", "hasOffersSession");
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                jSONObject.put("action", "login");
                jSONObject.put("integration", "hasOffersEvent");
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                jSONObject.put("action", "signup");
                jSONObject.put("integration", "hasOffersEvent");
                break;
        }
        return jSONObject;
    }

    public static String a(String str, List<Object> list) {
        if (!(str == null || list == null)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String[] split = ((String) it.next()).split(":");
                if (split.length == 2 && aj.a(split[0], str)) {
                    return split[1];
                }
            }
        }
        return null;
    }

    public static void a(Context context, Uri uri) {
        String queryParameter = uri.getQueryParameter("mat_click_id");
        String queryParameter2 = uri.getQueryParameter("ref_src");
        if (queryParameter2 == null) {
            queryParameter2 = a(uri.getQueryParameter("s"), d.c("shortened_tracking_parameters_mapping"));
        }
        if (queryParameter != null || queryParameter2 != null) {
            a(context, queryParameter2);
            a(context, EventType.Open, uri.toString(), queryParameter, queryParameter2);
        }
    }

    public static HashMap<String, String> a(String str) {
        HashMap<String, String> hashMap = new HashMap();
        if (str != null) {
            for (String split : str.split("&|%26|\\||%7C")) {
                String[] split2 = split.split("=|%3D|\\^|%5E");
                if (split2.length == 2) {
                    hashMap.put(split2[0], split2[1]);
                }
            }
        }
        return hashMap;
    }

    public static String a(Map<String, String> map) {
        Iterator it = map.entrySet().iterator();
        StringBuilder stringBuilder = new StringBuilder();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            stringBuilder.append(entry.getKey()).append("%5E").append(entry.getValue());
            if (!it.hasNext()) {
                break;
            }
            stringBuilder.append("%7C");
            it.remove();
        }
        return stringBuilder.toString();
    }

    static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if ((m.b() - defaultSharedPreferences.getLong("pref_ref_src_date", 0)) / 86400000 <= 30) {
            return defaultSharedPreferences.getString("pref_ref_src", null);
        }
        return null;
    }

    public static void a(Context context, TwitterScribeLog twitterScribeLog) {
        String a = a(context);
        bdj a2 = bdj.a(context);
        if (a != null) {
            new f(a(a)).a(twitterScribeLog, 3, null);
        } else if (a2.b()) {
            new f(null, null, a2.c(), "TwitterAccess", a2.e() ? "banner" : "no_banner", null, false).a(twitterScribeLog, 4, null);
        }
    }

    public static void a(Context context, String str) {
        if (aj.b((CharSequence) str)) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString("pref_ref_src", str).putLong("pref_ref_src_date", m.b()).apply();
        }
    }

    public static void b(Context context, String str) {
        if (aj.b((CharSequence) str)) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString("oem_referrer", str).apply();
        }
    }

    public static boolean b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("oem_referrer", null) != null;
    }
}
