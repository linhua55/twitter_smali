package com.twitter.library.util;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo.DisplayNameComparator;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Parcelable;
import android.preference.ListPreference;
import android.provider.Settings.Secure;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.StringRes;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.Pair;
import android.webkit.WebView;
import bdc;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.network.w;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.moments.ab;
import com.twitter.ui.view.a;
import com.twitter.util.aj;
import com.twitter.util.c;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.q;
import defpackage.bcs;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

/* compiled from: Twttr */
public abstract class aq {
    public static final Random a;
    private static final Pattern b;

    static {
        a = new Random();
        b = Pattern.compile("%(\\d+\\$|<?)([^a-zA-z%]*)([[a-zA-Z%]&&[^tT]]|[tT][a-zA-Z])");
    }

    public static a a(Context context, @StringRes int i, @ColorRes int i2) {
        return new ar(context.getResources().getColor(i2), context, i);
    }

    public static a a(Context context, @StringRes int i, @ColorRes int i2, Class cls) {
        return new as(context.getResources().getColor(i2), context, cls, i);
    }

    public static Spanned a(Object[] objArr, String str, String str2) {
        int i = 0;
        int indexOf = str.indexOf(str2);
        if (indexOf == -1) {
            return new SpannableString(str);
        }
        int indexOf2 = str.indexOf(str2, indexOf + 1);
        if (indexOf2 == -1) {
            return new SpannableString(str);
        }
        int length = objArr.length;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i2 = indexOf2;
        int i3 = indexOf;
        indexOf2 = 0;
        indexOf = 0;
        do {
            spannableStringBuilder.append(str.substring(indexOf2, i3));
            spannableStringBuilder.append(str.substring(str2.length() + i3, i2));
            spannableStringBuilder.setSpan(objArr[indexOf], i3 - i, (i2 - i) - str2.length(), 33);
            indexOf++;
            indexOf2 = str2.length() + i2;
            if (indexOf < length) {
                i3 = str.indexOf(str2, indexOf2);
                if (i3 != -1) {
                    i2 = str.indexOf(str2, i3 + 1);
                    i += str2.length() * 2;
                }
                if (i3 == -1) {
                    break;
                }
            } else {
                break;
            }
        } while (i2 != -1);
        spannableStringBuilder.append(str.substring(indexOf2));
        return spannableStringBuilder;
    }

    @Deprecated
    public static Spanned a(Object[] objArr, String str, char c) {
        return a(objArr, str, String.valueOf(c));
    }

    public static String a(String str) {
        return (str == null || !str.startsWith("@")) ? str : str.substring(1);
    }

    @Deprecated
    public static void a(ListPreference listPreference, String str) {
        CharSequence[] entries = listPreference.getEntries();
        int findIndexOfValue = listPreference.findIndexOfValue(str);
        if (findIndexOfValue != -1) {
            listPreference.setSummary(entries[findIndexOfValue]);
        }
    }

    public static boolean b(String str) {
        return str != null && str.startsWith("video/mp4") && str.contains("avc1.42E0");
    }

    public static void a(Context context, Tweet tweet, boolean z) {
        a(context, new as(tweet), z);
    }

    public static void a(Context context, as asVar, boolean z) {
        String string = context.getString(bdc.tweet_share_link, new Object[]{asVar.d, Long.valueOf(asVar.e)});
        String string2 = context.getString(bdc.app_download_url);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(context.getString(bdc.tweet_date_format), Locale.getDefault());
        ah ahVar = new ah();
        for (Integer intValue : ah.b) {
            ahVar.a(intValue.intValue(), context.getString(bdc.tweets_share_subject_long_format, new Object[]{asVar.c, asVar.d}), context.getString(bdc.tweets_share_long_format, new Object[]{asVar.c, asVar.d, simpleDateFormat.format(Long.valueOf(asVar.i)), asVar.f, ah.a(string, r0), ah.a(string2, 13)}));
        }
        for (Integer intValue2 : ah.a) {
            ahVar.a(intValue2.intValue(), context.getString(bdc.tweets_share_short_format, new Object[]{asVar.d, ah.a(string, r0)}));
        }
        ahVar.a(context, asVar, z);
    }

    public static void a(Context context, String str, String str2, String str3) {
        String string = context.getString(bdc.user_share_link, new Object[]{str2});
        String string2 = context.getString(bdc.app_download_url);
        ah ahVar = new ah();
        for (Integer intValue : ah.b) {
            ahVar.a(intValue.intValue(), context.getString(bdc.user_share_subject_long_format, new Object[]{str, str2}), context.getString(bdc.user_share_long_format, new Object[]{str, str2, str3, ah.a(string, r0), ah.a(string2, 13)}));
        }
        for (Integer intValue2 : ah.a) {
            ahVar.a(intValue2.intValue(), context.getString(bdc.user_share_short_format, new Object[]{str, str2, ah.a(string, r0)}));
        }
        ahVar.a(context, null, true);
    }

    public static void a(Context context, String str, String str2) {
        boolean z = aj.b((CharSequence) str) && str.charAt(0) == '#';
        if (z) {
            str = str.substring(1);
        }
        try {
            String replaceAll = URLEncoder.encode(str, "utf-8").replaceAll("\\+", "%20");
            String string = context.getString(bdc.app_download_url);
            if (z) {
                replaceAll = context.getString(bdc.search_hashtag_share_link, new Object[]{replaceAll});
            } else {
                replaceAll = context.getString(bdc.search_share_link, new Object[]{replaceAll});
            }
            ah ahVar = new ah();
            for (Integer intValue : ah.b) {
                ahVar.a(intValue.intValue(), context.getString(bdc.search_share_subject_long_format, new Object[]{str2}), context.getString(bdc.search_share_long_format, new Object[]{str2, ah.a(replaceAll, intValue.intValue()), ah.a(string, 13)}));
            }
            for (Integer intValue2 : ah.a) {
                ahVar.a(intValue2.intValue(), context.getString(bdc.search_share_short_format, new Object[]{ah.a(replaceAll, intValue2.intValue())}));
            }
            ahVar.a(context, null, true);
        } catch (UnsupportedEncodingException e) {
        }
    }

    public static void a(Context context, String str, boolean z) {
        a(context, str, z, null);
    }

    public static void a(Context context, String str, boolean z, IntentSender intentSender) {
        ah ahVar = new ah();
        ahVar.a(1, " ", "\n" + str);
        ahVar.a(1, "\n" + str);
        if (z) {
            ahVar.a(true);
        }
        ahVar.a(context, null, true, intentSender);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, String str5) {
        String string = context.getString(bdc.list_share_link, new Object[]{str2, str3});
        String string2 = context.getString(bdc.app_download_url);
        ah ahVar = new ah();
        for (Integer intValue : ah.b) {
            ahVar.a(intValue.intValue(), context.getString(bdc.list_share_subject_long_format, new Object[]{str, str2}), context.getString(bdc.list_share_long_format, new Object[]{str4, str, str5, ah.a(string, r0), ah.a(string2, 13)}));
        }
        for (Integer intValue2 : ah.a) {
            ahVar.a(intValue2.intValue(), context.getString(bdc.list_share_short_format, new Object[]{str4, str2, ah.a(string, r0)}));
        }
        ahVar.a(context, null, true);
    }

    public static void b(Context context, String str, String str2, String str3, String str4, String str5) {
        String string = context.getString(bdc.app_download_url);
        ah ahVar = new ah();
        for (Integer intValue : ah.b) {
            ahVar.a(intValue.intValue(), context.getString(bdc.timeline_share_subject_long_format, new Object[]{str, str2}), context.getString(bdc.timeline_share_long_format, new Object[]{str3, str, str2, str4, ah.a(str5, r0), ah.a(string, 13)}));
        }
        for (Integer intValue2 : ah.a) {
            ahVar.a(intValue2.intValue(), context.getString(bdc.timeline_share_short_format, new Object[]{str3, str2, ah.a(str5, r0)}));
        }
        ahVar.a(context, null, true);
    }

    public static void a(Context context, ab abVar, boolean z) {
        ah ahVar = new ah();
        for (Integer intValue : ah.b) {
            ahVar.a(intValue.intValue(), abVar.c, abVar.n);
        }
        for (Integer intValue2 : ah.a) {
            ahVar.a(intValue2.intValue(), abVar.n);
        }
        ahVar.a(context, null, z);
    }

    public static String a(String str, String str2) {
        String str3 = "d6PaPHJeSpyHXeVyWT6ePCcSMSrnD83MnfMgWhtczxpnSMSF7CQcBSQqtBNh6Jym";
        return q.b(str2 + "d6PaPHJeSpyHXeVyWT6ePCcSMSrnD83MnfMgWhtczxpnSMSF7CQcBSQqtBNh6Jym" + str + "Activation");
    }

    public static String c(String str) {
        while (str.matches("(?i).*twitter.*")) {
            str = str.replaceAll("(?i)twitter", BuildConfig.VERSION_NAME);
        }
        return str;
    }

    public static boolean a(Context context) {
        for (Account account : AccountManager.get(context).getAccountsByType("com.google")) {
            if (account.name.endsWith("@twitter.com")) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context, boolean z, String str) {
        return !z || b.a() > 0 || str.endsWith("@twitter.com");
    }

    public static boolean b(Context context) {
        if (!AppConfig.m().l()) {
            return true;
        }
        String string = Secure.getString(context.getContentResolver(), "android_id");
        if (string == null) {
            return false;
        }
        string = q.a(string);
        if (string != null) {
            return Arrays.asList(context.getResources().getStringArray(bcs.whitelisted_device_ids)).contains(string);
        }
        return false;
    }

    public static boolean d(String str) {
        List c = d.c("vine_video_hosts");
        if (!(str == null || c.isEmpty())) {
            String host = Uri.parse(str).getHost();
            if (!(host == null || host.isEmpty())) {
                for (Object next : c) {
                    if ((next instanceof String) && host.equalsIgnoreCase((String) next)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void a(Context context, String str) {
        c.a(context, context.getString(bdc.app_name), str);
    }

    public static void a(Editable editable, Object obj, String str, boolean z) {
        int spanStart = editable.getSpanStart(obj);
        int spanEnd = editable.getSpanEnd(obj);
        if (spanStart >= 0 && spanEnd >= spanStart) {
            editable.removeSpan(obj);
            editable.replace(spanStart, spanEnd, str);
            if (z && !str.isEmpty()) {
                editable.setSpan(obj, spanStart, str.length() + spanStart, 33);
            }
        }
    }

    public static CharSequence a(Resources resources, int i, Object... objArr) {
        CharSequence text = resources.getText(i);
        return !(text instanceof Spanned) ? String.format(text.toString(), objArr) : Html.fromHtml(String.format(a((Spanned) text), objArr));
    }

    public static String a(Spanned spanned) {
        int i = 0;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned);
        StyleSpan[] styleSpanArr = (StyleSpan[]) spanned.getSpans(0, spanned.length(), StyleSpan.class);
        int length = styleSpanArr.length;
        while (i < length) {
            StyleSpan styleSpan = styleSpanArr[i];
            int style = styleSpan.getStyle();
            if ((style & 3) == 3) {
                spannableStringBuilder.insert(spannableStringBuilder.getSpanStart(styleSpan), "<b><i>");
                spannableStringBuilder.insert(spannableStringBuilder.getSpanEnd(styleSpan), "</i></b>");
            } else if ((style & 1) == 1) {
                spannableStringBuilder.insert(spannableStringBuilder.getSpanStart(styleSpan), "<b>");
                spannableStringBuilder.insert(spannableStringBuilder.getSpanEnd(styleSpan), "</b>");
            } else if ((style & 2) == 2) {
                spannableStringBuilder.insert(spannableStringBuilder.getSpanStart(styleSpan), "<i>");
                spannableStringBuilder.insert(spannableStringBuilder.getSpanEnd(styleSpan), "</i>");
            }
            i++;
        }
        return spannableStringBuilder.toString();
    }

    public static List<Pair<String, String>> c(Context context) {
        int i = 0;
        n d = n.d();
        n d2 = n.d();
        PackageManager packageManager = context.getPackageManager();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            Object obj = applicationInfo.packageName;
            if (packageManager.getLaunchIntentForPackage(obj) != null) {
                long j;
                long lastModified;
                try {
                    j = packageManager.getPackageInfo(obj, 0).firstInstallTime;
                } catch (NameNotFoundException e) {
                    j = 0;
                }
                if (j == 0) {
                    lastModified = new File(applicationInfo.sourceDir).lastModified();
                } else {
                    lastModified = j;
                }
                if (lastModified > 0) {
                    d.c(obj);
                    d2.c(String.valueOf(lastModified));
                }
            }
        }
        List list = (List) d.q();
        List list2 = (List) d2.q();
        int size = list.size();
        n d3 = n.d();
        while (i < size) {
            int min = Math.min(size, i + 100);
            d3.c(new Pair(aj.a((CharSequence) ",", list.subList(i, min)), aj.a((CharSequence) ",", list2.subList(i, min))));
            i += min;
        }
        return (List) d3.q();
    }

    public static float a(int i, int i2, float f) {
        return (i <= 0 || i2 <= 0) ? f : ((float) i) / ((float) i2);
    }

    public static String a(boolean... zArr) {
        return String.valueOf(b(zArr));
    }

    public static long b(boolean... zArr) {
        long j = 0;
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                j += (long) (1 << i);
            }
        }
        return j;
    }

    public static String a(Map<String, ?> map) {
        StringBuilder stringBuilder = new StringBuilder();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (!(str == null || value == null)) {
                    stringBuilder.append(str.replace(',', '_').replace('=', '_')).append("=").append(value.toString().replace(',', '_').replace('=', '_')).append(",");
                }
            }
        }
        return stringBuilder.length() > 0 ? stringBuilder.deleteCharAt(stringBuilder.length() - 1).toString() : null;
    }

    public static void a(Context context, Uri uri) {
        a(context, new Intent("android.intent.action.VIEW", uri), bdc.intent_chooser_title);
    }

    public static void a(WebView webView, String str, Map<String, String> map) {
        webView.loadUrl(str, map);
    }

    public static void a(WebView webView, String str, Map<String, String> map, OAuthToken oAuthToken) {
        Map a = a(oAuthToken, str);
        if (map != null) {
            a.putAll(map);
        }
        a(webView, str, a);
    }

    public static void a(WebView webView, String str, OAuthToken oAuthToken) {
        a(webView, str, null, oAuthToken);
    }

    private static Map<String, String> a(OAuthToken oAuthToken, String str) {
        URI a = com.twitter.util.n.a(str);
        r d = r.d();
        if (oAuthToken != null) {
            d.b("Authorization", new w(oAuthToken).a(RequestMethod.GET, a, null, 0));
        }
        return (Map) d.q();
    }

    public static void a(WebView webView, String str, byte[] bArr) {
        webView.postUrl(str, bArr);
    }

    private static void a(Context context, Intent intent, @StringRes int i) {
        List a = MutableList.a();
        a(context, a, intent, null);
        if (!a.isEmpty()) {
            try {
                context.startActivity(Intent.createChooser((Intent) a.remove(a.size() - 1), context.getString(i)).putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) a.toArray(new Parcelable[a.size()])));
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    static void a(Context context, List<Intent> list, Intent intent, Set<ComponentName> set) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        if (queryIntentActivities != null) {
            Collections.sort(queryIntentActivities, new DisplayNameComparator(packageManager));
            String packageName = context.getPackageName();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                String str = resolveInfo.activityInfo.packageName;
                ComponentName componentName = new ComponentName(str, resolveInfo.activityInfo.name);
                if (!str.equals(packageName) && (set == null || set.add(componentName))) {
                    list.add(new Intent(intent).setPackage(str).setComponent(new ComponentName(str, resolveInfo.activityInfo.name)));
                }
            }
        }
    }

    public static String a(List<? extends NameValuePair> list) {
        return list != null ? URLEncodedUtils.format(list, "UTF-8").replace("*", "%2A") : null;
    }

    public static Spannable a(String str, @ColorInt int i) {
        Spannable spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(i), 0, str.length(), 33);
        return spannableString;
    }
}
