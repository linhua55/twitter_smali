package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.SearchAdRequestParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.periscope.chatman.api.WireMessage;

@oi
public final class ou {
    private static final SimpleDateFormat a;

    static {
        a = new SimpleDateFormat("yyyyMMdd", Locale.US);
    }

    public static AdResponseParcel a(Context context, AdRequestInfoParcel adRequestInfoParcel, String str) {
        try {
            String str2;
            long j;
            String optString;
            String str3;
            boolean optBoolean;
            JSONObject jSONObject = new JSONObject(str);
            String optString2 = jSONObject.optString("ad_base_url", null);
            Object optString3 = jSONObject.optString("ad_url", null);
            String optString4 = jSONObject.optString("ad_size", null);
            boolean z = (adRequestInfoParcel == null || adRequestInfoParcel.m == 0) ? false : true;
            CharSequence optString5 = z ? jSONObject.optString("ad_json", null) : jSONObject.optString("ad_html", null);
            long j2 = -1;
            String optString6 = jSONObject.optString("debug_dialog", null);
            long j3 = jSONObject.has("interstitial_timeout") ? (long) (jSONObject.getDouble("interstitial_timeout") * 1000.0d) : -1;
            String optString7 = jSONObject.optString("orientation", null);
            int i = -1;
            if ("portrait".equals(optString7)) {
                i = ar.g().b();
            } else if ("landscape".equals(optString7)) {
                i = ar.g().a();
            }
            AdResponseParcel adResponseParcel = null;
            if (TextUtils.isEmpty(optString5)) {
                if (TextUtils.isEmpty(optString3)) {
                    b.d("Could not parse the mediation config: Missing required " + (z ? "ad_json" : "ad_html") + " or " + "ad_url" + " field.");
                    return new AdResponseParcel(0);
                }
                adResponseParcel = ok.a(adRequestInfoParcel, context, adRequestInfoParcel.k.b, optString3, null, null, null, null, null);
                optString2 = adResponseParcel.b;
                str2 = adResponseParcel.c;
                j2 = adResponseParcel.n;
            } else if (TextUtils.isEmpty(optString2)) {
                b.d("Could not parse the mediation config: Missing required ad_base_url field");
                return new AdResponseParcel(0);
            } else {
                CharSequence charSequence = optString5;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("click_urls");
            List list = adResponseParcel == null ? null : adResponseParcel.d;
            if (optJSONArray != null) {
                list = a(optJSONArray, list);
            }
            optJSONArray = jSONObject.optJSONArray("impression_urls");
            List list2 = adResponseParcel == null ? null : adResponseParcel.f;
            if (optJSONArray != null) {
                list2 = a(optJSONArray, list2);
            }
            optJSONArray = jSONObject.optJSONArray("manual_impression_urls");
            List list3 = adResponseParcel == null ? null : adResponseParcel.j;
            if (optJSONArray != null) {
                list3 = a(optJSONArray, list3);
            }
            if (adResponseParcel != null) {
                if (adResponseParcel.l != -1) {
                    i = adResponseParcel.l;
                }
                if (adResponseParcel.g > 0) {
                    j = adResponseParcel.g;
                    optString = jSONObject.optString("active_view");
                    str3 = null;
                    optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
                    if (optBoolean) {
                        str3 = jSONObject.optString("ad_passback_url", null);
                    }
                    return new AdResponseParcel(adRequestInfoParcel, optString2, str2, list, list2, j, jSONObject.optBoolean("mediation", false), jSONObject.optLong("mediation_config_cache_time_milliseconds", -1), list3, jSONObject.optLong("refresh_interval_milliseconds", -1), i, optString4, j2, optString6, optBoolean, str3, optString, jSONObject.optBoolean("custom_render_allowed", false), z, adRequestInfoParcel.p, jSONObject.optBoolean("content_url_opted_out", true), jSONObject.optBoolean("prefetch", false), jSONObject.optInt("oauth2_token_status", 0), jSONObject.optString("gws_query_id", BuildConfig.VERSION_NAME), "height".equals(jSONObject.optString("fluid", BuildConfig.VERSION_NAME)), jSONObject.optBoolean("native_express", false), RewardItemParcel.a(jSONObject.optJSONArray("rewards")), a(jSONObject.optJSONArray("video_start_urls"), null), a(jSONObject.optJSONArray("video_complete_urls"), null), jSONObject.optBoolean("use_displayed_impression", false));
                }
            }
            j = j3;
            optString = jSONObject.optString("active_view");
            str3 = null;
            optBoolean = jSONObject.optBoolean("ad_is_javascript", false);
            if (optBoolean) {
                str3 = jSONObject.optString("ad_passback_url", null);
            }
            return new AdResponseParcel(adRequestInfoParcel, optString2, str2, list, list2, j, jSONObject.optBoolean("mediation", false), jSONObject.optLong("mediation_config_cache_time_milliseconds", -1), list3, jSONObject.optLong("refresh_interval_milliseconds", -1), i, optString4, j2, optString6, optBoolean, str3, optString, jSONObject.optBoolean("custom_render_allowed", false), z, adRequestInfoParcel.p, jSONObject.optBoolean("content_url_opted_out", true), jSONObject.optBoolean("prefetch", false), jSONObject.optInt("oauth2_token_status", 0), jSONObject.optString("gws_query_id", BuildConfig.VERSION_NAME), "height".equals(jSONObject.optString("fluid", BuildConfig.VERSION_NAME)), jSONObject.optBoolean("native_express", false), RewardItemParcel.a(jSONObject.optJSONArray("rewards")), a(jSONObject.optJSONArray("video_start_urls"), null), a(jSONObject.optJSONArray("video_complete_urls"), null), jSONObject.optBoolean("use_displayed_impression", false));
        } catch (JSONException e) {
            b.d("Could not parse the mediation config: " + e.getMessage());
            return new AdResponseParcel(0);
        }
    }

    private static Integer a(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }

    private static String a(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(ViewCompat.MEASURED_SIZE_MASK & i)});
    }

    private static String a(NativeAdOptionsParcel nativeAdOptionsParcel) {
        switch (nativeAdOptionsParcel != null ? nativeAdOptionsParcel.c : 0) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "portrait";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "landscape";
            default:
                return "any";
        }
    }

    @Nullable
    private static List<String> a(@Nullable JSONArray jSONArray, @Nullable List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new LinkedList();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    public static JSONObject a(Context context, AdRequestInfoParcel adRequestInfoParcel, pb pbVar, pi piVar, Location location, bx bxVar, String str, String str2, List<String> list, Bundle bundle) {
        try {
            Map hashMap = new HashMap();
            if (list.size() > 0) {
                hashMap.put("eid", TextUtils.join(",", list));
            }
            if (adRequestInfoParcel.b != null) {
                hashMap.put("ad_pos", adRequestInfoParcel.b);
            }
            a((HashMap) hashMap, adRequestInfoParcel.c);
            hashMap.put("format", adRequestInfoParcel.d.b);
            if (adRequestInfoParcel.d.f == -1) {
                hashMap.put("smart_w", "full");
            }
            if (adRequestInfoParcel.d.c == -2) {
                hashMap.put("smart_h", "auto");
            }
            if (adRequestInfoParcel.d.j) {
                hashMap.put("fluid", "height");
            }
            if (adRequestInfoParcel.d.h != null) {
                StringBuilder stringBuilder = new StringBuilder();
                for (AdSizeParcel adSizeParcel : adRequestInfoParcel.d.h) {
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(adSizeParcel.f == -1 ? (int) (((float) adSizeParcel.g) / pbVar.r) : adSizeParcel.f);
                    stringBuilder.append("x");
                    stringBuilder.append(adSizeParcel.c == -2 ? (int) (((float) adSizeParcel.d) / pbVar.r) : adSizeParcel.c);
                }
                hashMap.put("sz", stringBuilder);
            }
            if (adRequestInfoParcel.m != 0) {
                hashMap.put("native_version", Integer.valueOf(adRequestInfoParcel.m));
                if (!adRequestInfoParcel.d.k) {
                    hashMap.put("native_templates", adRequestInfoParcel.n);
                    hashMap.put("native_image_orientation", a(adRequestInfoParcel.z));
                    if (!adRequestInfoParcel.A.isEmpty()) {
                        hashMap.put("native_custom_templates", adRequestInfoParcel.A);
                    }
                }
            }
            hashMap.put("slotname", adRequestInfoParcel.e);
            hashMap.put("pn", adRequestInfoParcel.f.packageName);
            if (adRequestInfoParcel.g != null) {
                hashMap.put("vc", Integer.valueOf(adRequestInfoParcel.g.versionCode));
            }
            hashMap.put("ms", str2);
            hashMap.put("seq_num", adRequestInfoParcel.i);
            hashMap.put("session_id", adRequestInfoParcel.j);
            hashMap.put("js", adRequestInfoParcel.k.b);
            a((HashMap) hashMap, pbVar, piVar);
            hashMap.put("platform", Build.MANUFACTURER);
            hashMap.put("submodel", Build.MODEL);
            if (adRequestInfoParcel.c.a >= 2 && adRequestInfoParcel.c.k != null) {
                a((HashMap) hashMap, adRequestInfoParcel.c.k);
            }
            if (adRequestInfoParcel.a >= 2) {
                hashMap.put("quality_signals", adRequestInfoParcel.l);
            }
            if (adRequestInfoParcel.a >= 4 && adRequestInfoParcel.p) {
                hashMap.put("forceHttps", Boolean.valueOf(adRequestInfoParcel.p));
            }
            if (bundle != null) {
                hashMap.put("content_info", bundle);
            }
            if (adRequestInfoParcel.a >= 5) {
                hashMap.put("u_sd", Float.valueOf(adRequestInfoParcel.t));
                hashMap.put("sh", Integer.valueOf(adRequestInfoParcel.s));
                hashMap.put("sw", Integer.valueOf(adRequestInfoParcel.r));
            } else {
                hashMap.put("u_sd", Float.valueOf(pbVar.r));
                hashMap.put("sh", Integer.valueOf(pbVar.t));
                hashMap.put("sw", Integer.valueOf(pbVar.s));
            }
            if (adRequestInfoParcel.a >= 6) {
                if (!TextUtils.isEmpty(adRequestInfoParcel.u)) {
                    try {
                        hashMap.put("view_hierarchy", new JSONObject(adRequestInfoParcel.u));
                    } catch (Throwable e) {
                        b.d("Problem serializing view hierarchy to JSON", e);
                    }
                }
                hashMap.put("correlation_id", Long.valueOf(adRequestInfoParcel.v));
            }
            if (adRequestInfoParcel.a >= 7) {
                hashMap.put("request_id", adRequestInfoParcel.w);
            }
            if (adRequestInfoParcel.a >= 11 && adRequestInfoParcel.C != null) {
                hashMap.put("capability", adRequestInfoParcel.C.a());
            }
            a((HashMap) hashMap, str);
            if (adRequestInfoParcel.a >= 12 && !TextUtils.isEmpty(adRequestInfoParcel.D)) {
                hashMap.put("anchor", adRequestInfoParcel.D);
            }
            if (adRequestInfoParcel.a >= 13) {
                hashMap.put("avol", Float.valueOf(adRequestInfoParcel.E));
            }
            if (adRequestInfoParcel.a >= 14 && adRequestInfoParcel.F > 0) {
                hashMap.put("target_api", Integer.valueOf(adRequestInfoParcel.F));
            }
            if (adRequestInfoParcel.a >= 15) {
                hashMap.put("scroll_index", Integer.valueOf(adRequestInfoParcel.G == -1 ? -1 : adRequestInfoParcel.G));
            }
            if (b.a(2)) {
                qd.e("Ad Request JSON: " + ar.e().a(hashMap).toString(2));
            }
            return ar.e().a(hashMap);
        } catch (JSONException e2) {
            b.d("Problem serializing ad request to JSON: " + e2.getMessage());
            return null;
        }
    }

    private static void a(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    private static void a(HashMap<String, Object> hashMap, AdRequestParcel adRequestParcel) {
        String a = qa.a();
        if (a != null) {
            hashMap.put("abf", a);
        }
        if (adRequestParcel.b != -1) {
            hashMap.put("cust_age", a.format(new Date(adRequestParcel.b)));
        }
        if (adRequestParcel.c != null) {
            hashMap.put("extras", adRequestParcel.c);
        }
        if (adRequestParcel.d != -1) {
            hashMap.put("cust_gender", Integer.valueOf(adRequestParcel.d));
        }
        if (adRequestParcel.e != null) {
            hashMap.put("kw", adRequestParcel.e);
        }
        if (adRequestParcel.g != -1) {
            hashMap.put("tag_for_child_directed_treatment", Integer.valueOf(adRequestParcel.g));
        }
        if (adRequestParcel.f) {
            hashMap.put("adtest", "on");
        }
        if (adRequestParcel.a >= 2) {
            if (adRequestParcel.h) {
                hashMap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(adRequestParcel.i)) {
                hashMap.put("ppid", adRequestParcel.i);
            }
            if (adRequestParcel.j != null) {
                a((HashMap) hashMap, adRequestParcel.j);
            }
        }
        if (adRequestParcel.a >= 3 && adRequestParcel.l != null) {
            hashMap.put("url", adRequestParcel.l);
        }
        if (adRequestParcel.a >= 5) {
            if (adRequestParcel.n != null) {
                hashMap.put("custom_targeting", adRequestParcel.n);
            }
            if (adRequestParcel.o != null) {
                hashMap.put("category_exclusions", adRequestParcel.o);
            }
            if (adRequestParcel.p != null) {
                hashMap.put("request_agent", adRequestParcel.p);
            }
        }
        if (adRequestParcel.a >= 6 && adRequestParcel.q != null) {
            hashMap.put("request_pkg", adRequestParcel.q);
        }
        if (adRequestParcel.a >= 7) {
            hashMap.put("is_designed_for_families", Boolean.valueOf(adRequestParcel.r));
        }
    }

    private static void a(HashMap<String, Object> hashMap, SearchAdRequestParcel searchAdRequestParcel) {
        Object obj;
        Object obj2 = null;
        if (Color.alpha(searchAdRequestParcel.b) != 0) {
            hashMap.put("acolor", a(searchAdRequestParcel.b));
        }
        if (Color.alpha(searchAdRequestParcel.c) != 0) {
            hashMap.put("bgcolor", a(searchAdRequestParcel.c));
        }
        if (!(Color.alpha(searchAdRequestParcel.d) == 0 || Color.alpha(searchAdRequestParcel.e) == 0)) {
            hashMap.put("gradientto", a(searchAdRequestParcel.d));
            hashMap.put("gradientfrom", a(searchAdRequestParcel.e));
        }
        if (Color.alpha(searchAdRequestParcel.f) != 0) {
            hashMap.put("bcolor", a(searchAdRequestParcel.f));
        }
        hashMap.put("bthick", Integer.toString(searchAdRequestParcel.g));
        switch (searchAdRequestParcel.h) {
            case mx.View_android_theme /*0*/:
                obj = "none";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                obj = "dashed";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                obj = "dotted";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                obj = "solid";
                break;
            default:
                obj = null;
                break;
        }
        if (obj != null) {
            hashMap.put("btype", obj);
        }
        switch (searchAdRequestParcel.i) {
            case mx.View_android_theme /*0*/:
                obj2 = "light";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                obj2 = "medium";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                obj2 = "dark";
                break;
        }
        if (obj2 != null) {
            hashMap.put("callbuttoncolor", obj2);
        }
        if (searchAdRequestParcel.j != null) {
            hashMap.put("channel", searchAdRequestParcel.j);
        }
        if (Color.alpha(searchAdRequestParcel.k) != 0) {
            hashMap.put("dcolor", a(searchAdRequestParcel.k));
        }
        if (searchAdRequestParcel.l != null) {
            hashMap.put("font", searchAdRequestParcel.l);
        }
        if (Color.alpha(searchAdRequestParcel.m) != 0) {
            hashMap.put("hcolor", a(searchAdRequestParcel.m));
        }
        hashMap.put("headersize", Integer.toString(searchAdRequestParcel.n));
        if (searchAdRequestParcel.o != null) {
            hashMap.put("q", searchAdRequestParcel.o);
        }
    }

    private static void a(HashMap<String, Object> hashMap, pb pbVar, pi piVar) {
        hashMap.put("am", Integer.valueOf(pbVar.a));
        hashMap.put("cog", a(pbVar.b));
        hashMap.put("coh", a(pbVar.c));
        if (!TextUtils.isEmpty(pbVar.d)) {
            hashMap.put("carrier", pbVar.d);
        }
        hashMap.put("gl", pbVar.e);
        if (pbVar.f) {
            hashMap.put("simulator", Integer.valueOf(1));
        }
        if (pbVar.g) {
            hashMap.put("is_sidewinder", Integer.valueOf(1));
        }
        hashMap.put("ma", a(pbVar.h));
        hashMap.put("sp", a(pbVar.i));
        hashMap.put("hl", pbVar.j);
        if (!TextUtils.isEmpty(pbVar.k)) {
            hashMap.put("mv", pbVar.k);
        }
        hashMap.put("muv", Integer.valueOf(pbVar.l));
        if (pbVar.m != -2) {
            hashMap.put("cnt", Integer.valueOf(pbVar.m));
        }
        hashMap.put("gnt", Integer.valueOf(pbVar.n));
        hashMap.put("pt", Integer.valueOf(pbVar.o));
        hashMap.put("rm", Integer.valueOf(pbVar.p));
        hashMap.put("riv", Integer.valueOf(pbVar.q));
        Bundle bundle = new Bundle();
        bundle.putString("build", pbVar.y);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("is_charging", pbVar.v);
        bundle2.putDouble("battery_level", pbVar.u);
        bundle.putBundle("battery", bundle2);
        bundle2 = new Bundle();
        bundle2.putInt("active_network_state", pbVar.x);
        bundle2.putBoolean("active_network_metered", pbVar.w);
        if (piVar != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("predicted_latency_micros", piVar.a);
            bundle3.putLong("predicted_down_throughput_bps", piVar.b);
            bundle3.putLong("predicted_up_throughput_bps", piVar.c);
            bundle2.putBundle("predictions", bundle3);
        }
        bundle.putBundle("network", bundle2);
        hashMap.put("device", bundle);
    }

    private static void a(HashMap<String, Object> hashMap, String str) {
        if (str != null) {
            Map hashMap2 = new HashMap();
            hashMap2.put("token", str);
            hashMap.put("pan", hashMap2);
        }
    }
}
