package com.twitter.android.commerce.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.view.ProfileEntryActivity;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.af;
import com.twitter.library.commerce.model.am;
import com.twitter.library.commerce.model.m;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.caw;
import defpackage.cmb;
import defpackage.cmc;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Currency;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class c {
    public static void a(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (view != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static void a(Context context, Tweet tweet, String str, String str2) {
        a(context, tweet, str, str2, null);
    }

    public static void a(Context context, Tweet tweet, String str, String str2, String str3) {
        Session c = bg.a().c();
        if (c != null) {
            bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(c.g()).a(context, tweet, null, null).b(str)).g(null);
            if (aj.b((CharSequence) str2)) {
                bbw.b(str2, str3);
            }
            bbu.a(bbw);
        }
    }

    public static void a(Context context, ViewGroup viewGroup, Integer num, int i, boolean z) {
        a(context, viewGroup, num, i, z, false);
    }

    public static void a(Context context, ViewGroup viewGroup, Integer num, String str, boolean z) {
        a(context, viewGroup, num, str, z, false);
    }

    public static void a(Context context, ViewGroup viewGroup, Integer num, int i, boolean z, boolean z2) {
        a(context, viewGroup, num, context.getString(i), z, z2);
    }

    public static void a(Context context, ViewGroup viewGroup, Integer num, String str, boolean z, boolean z2) {
        ((TextView) viewGroup.findViewById(2131952119)).setText(str);
        ImageView imageView = (ImageView) viewGroup.findViewById(2131952118);
        if (num != null) {
            imageView.setImageResource(num.intValue());
        } else {
            imageView.setVisibility(8);
        }
        if (!z) {
            viewGroup.findViewById(2131952116).setVisibility(8);
        }
        if (z2) {
            viewGroup.findViewById(2131952117).setVisibility(0);
        }
    }

    public static String a(Calendar calendar) {
        Calendar.getInstance().setTimeInMillis(calendar.getTimeInMillis());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy");
        simpleDateFormat.setTimeZone(calendar.getTimeZone());
        return simpleDateFormat.format(calendar.getTime());
    }

    public static void a(Context context, Tweet tweet, PromotedEvent promotedEvent) {
        if ((promotedEvent == PromotedEvent.BUYNOW_CARD_CLICK || promotedEvent == PromotedEvent.BUYNOW_PURCHASE_SUCCESS || promotedEvent == PromotedEvent.CL_OFFER_ACCEPTED || promotedEvent == PromotedEvent.CL_OFFER_CARD_CLICK) && tweet != null && tweet.f != null) {
            com.twitter.android.client.c.a(context).a(promotedEvent, tweet.f);
        }
    }

    public static boolean a() {
        return b("commerce_enabled");
    }

    public static boolean b() {
        return b("commerce_allow_unverified_email_address");
    }

    public static boolean c() {
        return b("commerce_order_history_enabled");
    }

    private static boolean b(String str) {
        boolean z;
        boolean a = d.a(str);
        AppConfig m = AppConfig.m();
        if (m.b() || m.a()) {
            z = true;
        } else {
            z = false;
        }
        if (z || a) {
            return true;
        }
        return false;
    }

    public static boolean d() {
        return d.a("commerce_offers_enabled");
    }

    public static boolean e() {
        boolean z;
        boolean a = d.a("commerce_upgrade_profile");
        AppConfig m = AppConfig.m();
        if (m.b() || m.a()) {
            z = true;
        } else {
            z = false;
        }
        if (z || a) {
            return true;
        }
        return false;
    }

    public static boolean f() {
        return d.a("commerce_use_v2_api");
    }

    public static CreditCard a(am amVar) {
        if (amVar != null) {
            return amVar.a();
        }
        return null;
    }

    public static CreditCard b(am amVar) {
        if (amVar != null) {
            for (CreditCard creditCard : amVar.e()) {
                if (creditCard.o()) {
                    return creditCard;
                }
            }
        }
        return null;
    }

    public static m c(am amVar) {
        if (amVar != null) {
            return amVar.c();
        }
        return null;
    }

    public static af d(am amVar) {
        if (amVar != null) {
            return amVar.d();
        }
        return null;
    }

    public static a a(CreditCard creditCard, am amVar) {
        if (amVar != null) {
            a[] h = amVar.h();
            if (h != null) {
                for (a aVar : h) {
                    if (aVar.h().equals(creditCard.q())) {
                        return aVar;
                    }
                }
            }
        }
        return null;
    }

    public static String a(Context context, List<Type> list) {
        String str = "/";
        if (list == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        for (Type type : list) {
            if (i > 0) {
                stringBuilder.append("/");
            }
            stringBuilder.append(Type.a(context, type));
            i++;
        }
        return stringBuilder.toString();
    }

    public static String a(boolean z, String str) {
        if (z) {
            return "settings:payment_settings:" + str;
        }
        return "buy_now::" + str;
    }

    public static void a(Activity activity, Tweet tweet, String str, a aVar, m mVar, String str2, CreditCard creditCard, List<String> list, int i, boolean z, boolean z2, boolean z3) {
        if (!(tweet == null || str == null)) {
            a(activity, tweet, a(z, "store_profile:payment_method:start"), str);
            a((Context) activity, tweet, PromotedEvent.BUYNOW_STORE_PROFILE_START);
        }
        Intent intent = new Intent(activity, ProfileEntryActivity.class);
        Bundle bundle = new Bundle();
        ab.a(bundle, "commerce_address_object", (Object) aVar, a.a);
        ab.a(bundle, "commerce_profile_email", (Object) mVar, m.a);
        bundle.putParcelable("commerce_buynow_tweet", tweet);
        bundle.putBoolean("commerce_launched_from_settings", z);
        bundle.putBoolean("commerce_phone_required", z2);
        bundle.putBoolean("commerce_billing_required", z3);
        if (list != null && (list instanceof Serializable)) {
            bundle.putSerializable("commerce_allowed_states_for_item", (Serializable) list);
        }
        if (creditCard != null && e()) {
            ab.a(bundle, "commerce_partial_card_object", (Object) creditCard, CreditCard.d);
        }
        e.a(bundle, str2);
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, i);
    }

    public static boolean a(Context context, boolean z) {
        return a(context, z, "debug_always_require_phone");
    }

    public static boolean b(Context context, boolean z) {
        return a(context, z, "debug_always_require_billing");
    }

    private static boolean a(Context context, boolean z, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, false) ? true : z;
    }

    public static List<String> a(String str) {
        if (str != null) {
            return Arrays.asList(str.replace(" ", BuildConfig.VERSION_NAME).split(","));
        }
        return new ArrayList();
    }

    public static HashMap<String, Object> a(cmb cmb) {
        HashMap<String, Object> hashMap = new HashMap();
        for (String str : cmb.a()) {
            Object a = cmb.a(str);
            if (a instanceof cmc) {
                hashMap.put(str, ((cmc) a).a);
            } else {
                hashMap.put(str, a);
            }
        }
        return hashMap;
    }

    public static String a(HashMap<String, Object> hashMap, String str) {
        try {
            return (String) hashMap.get(str);
        } catch (ClassCastException e) {
            return null;
        }
    }

    public static boolean a(HashMap<String, Object> hashMap, String str, boolean z) {
        CharSequence a = a((HashMap) hashMap, str);
        if (!aj.b(a)) {
            Object obj = hashMap.get(str);
            if (obj == null || !(obj instanceof Boolean)) {
                return z;
            }
            return ((Boolean) obj).booleanValue();
        } else if (a.toLowerCase().equals("false")) {
            return false;
        } else {
            if (a.toLowerCase().equals("true")) {
                return true;
            }
            return z;
        }
    }

    public static String a(Object obj) {
        return a(obj, "USD");
    }

    public static String a(Object obj, String str) {
        String str2 = null;
        if ((obj instanceof String) && str != null) {
            try {
                str2 = a(new BigDecimal((String) obj), str);
            } catch (NumberFormatException e) {
            }
        }
        return str2;
    }

    public static List<String> a(cmb cmb, String[] strArr) {
        List arrayList = new ArrayList(strArr.length);
        for (String a : strArr) {
            cmc a2 = cmc.a(a, cmb);
            if (!(a2 == null || a2.a == null)) {
                arrayList.add(a2.a);
            }
        }
        return arrayList;
    }

    public static String a(BigDecimal bigDecimal) {
        return a(bigDecimal, "USD");
    }

    public static String a(BigDecimal bigDecimal, String str) {
        BigDecimal divide = bigDecimal.divide(new BigDecimal(1000000));
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(Locale.getDefault());
        try {
            currencyInstance.setCurrency(Currency.getInstance(str));
            return currencyInstance.format(divide);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static String b(cmb cmb) {
        CharSequence a = caw.a("product_url", cmb);
        CharSequence a2 = caw.a("mobile_url_params", cmb);
        CharSequence charSequence = null;
        if (aj.b(a2)) {
            try {
                charSequence = URLDecoder.decode(a2, "UTF-8");
            } catch (UnsupportedEncodingException e) {
            }
        }
        if (!aj.b(a) || !aj.b(charSequence)) {
            return a;
        }
        return a + (aj.a(Uri.parse(a).getQuery()) ? '?' : '&') + charSequence;
    }
}
