package com.twitter.android.client;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.support.annotation.VisibleForTesting;
import cbp;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.twitter.android.TweetActivity;
import com.twitter.android.UrlInterpreterActivity;
import com.twitter.android.browser.BrowserActivity;
import com.twitter.android.mx;
import com.twitter.android.util.ak;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.bg;
import com.twitter.library.provider.dd;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.collection.ar;
import com.twitter.util.n;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import com.twitter.util.x;
import defpackage.bbu;
import defpackage.bdj;
import defpackage.cey;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import sa;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;
import vx;

/* compiled from: Twttr */
public class OpenUriHelper {
    public static final Pattern a;
    public static final Set<String> b;
    public static final Set<String> c;
    private static final Pattern d;
    private static OpenUriHelper e;

    static {
        a = Pattern.compile("^https?://twitter\\.com(/#!)?/(mentions|i/connect)$");
        b = ar.a((Object) "com.android.chrome", "com.chrome.beta", "com.chrome.dev", "com.android.browser", "org.mozilla.firefox", "com.opera.mini.android", "com.opera.browser", "mobi.mgeek.TunnyBrowser", "com.UCMobile.intl");
        c = ar.a((Object) "www.periscope.tv", "periscope.tv", "vine.co");
        d = Pattern.compile("^https?://\\S+\\/parser$");
    }

    private OpenUriHelper() {
    }

    public static synchronized OpenUriHelper a() {
        OpenUriHelper openUriHelper;
        synchronized (OpenUriHelper.class) {
            if (e == null) {
                e = new OpenUriHelper();
            }
            openUriHelper = e;
        }
        return openUriHelper;
    }

    public static void a(Context context, Tweet tweet, cr crVar, long j, String str, String str2, TwitterScribeAssociation twitterScribeAssociation, String str3) {
        String str4;
        String a;
        if (!(tweet == null || tweet.f == null)) {
            bbu.a(cbp.a(PromotedEvent.URL_CLICK, tweet.f).a(crVar.B).a());
        }
        switch (ap.a[a(context, tweet, crVar).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(context, (Tweet) e.a((Object) tweet), crVar, twitterScribeAssociation);
                str4 = null;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a(context, Uri.parse(crVar.C));
                str4 = null;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a = a(crVar, j, context);
                a(context, a, crVar.C, j, new ar(context, a), false, null);
                str4 = a;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a = a(crVar, j, context);
                a(context, a, crVar.C, j, new aq(context, a, tweet), false, null);
                str4 = a;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                c(context);
                str4 = null;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                a(context, crVar, j);
                str4 = null;
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                r.a(context, 2131362895);
                str4 = null;
                break;
            default:
                str4 = null;
                break;
        }
        if (str != null) {
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).a(context, tweet, twitterScribeAssociation, null).b(str)).a(str2)).a((ScribeAssociation) twitterScribeAssociation);
            a = crVar.C;
            if (str4 == null) {
                str4 = crVar.B;
            }
            bbu.a(((TwitterScribeLog) twitterScribeLog.b(a, str4)).g(str3));
        }
    }

    private static void a(Context context, Tweet tweet, cr crVar, TwitterScribeAssociation twitterScribeAssociation) {
        o asVar = new as(context, tweet, twitterScribeAssociation, (MediaEntity) crVar);
        if (!bdj.a(context).g() || crVar.D.startsWith("pic.twitter.com")) {
            asVar.a();
        } else {
            a(context, asVar);
        }
    }

    private static void a(Context context, cr crVar, long j) {
        Matcher matcher = cey.e.matcher(crVar.C != null ? crVar.C : crVar.B);
        if (matcher.matches()) {
            String group = matcher.group();
            context.startActivity(new Intent(context, TweetActivity.class).setData(dd.b.buildUpon().appendEncodedPath(group.substring(group.lastIndexOf(47) + 1)).appendQueryParameter("ownerId", String.valueOf(j)).build()));
        }
    }

    private static void c(Context context) {
        context.startActivity(ak.a(context, bg.a().c().f(), false, false));
    }

    static LinkHandler a(Context context, Tweet tweet, cr crVar) {
        if ((crVar instanceof MediaEntity) && tweet != null) {
            return LinkHandler.a;
        }
        CharSequence charSequence = crVar.C != null ? crVar.C : crVar.B;
        if (cey.e.matcher(charSequence).matches()) {
            return LinkHandler.f;
        }
        if (a.matcher(charSequence).matches()) {
            return LinkHandler.g;
        }
        if (crVar.C != null) {
            if (b(context, Uri.parse(crVar.C))) {
                return LinkHandler.b;
            }
            if (!n.b(crVar.C)) {
                return LinkHandler.e;
            }
        }
        if (!b(context) || (tweet != null && (tweet.f != null || tweet.G))) {
            return LinkHandler.d;
        }
        return LinkHandler.c;
    }

    public static void a(Context context, Tweet tweet, String str, long j, String str2, String str3, TwitterScribeAssociation twitterScribeAssociation) {
        a(context, tweet, str, j, str2, str3, twitterScribeAssociation, false, null);
    }

    public static void a(Context context, Tweet tweet, String str, long j, String str2, String str3, TwitterScribeAssociation twitterScribeAssociation, boolean z) {
        a(context, tweet, str, j, str2, str3, twitterScribeAssociation, z, null);
    }

    public static void a(Context context, Tweet tweet, String str, long j, String str2, String str3, TwitterScribeAssociation twitterScribeAssociation, boolean z, String str4) {
        if (!(tweet == null || tweet.f == null)) {
            bbu.a(cbp.a(PromotedEvent.CARD_URL_CLICK, tweet.f).a());
        }
        String a = a(str, j, context);
        a(context, a, null, j, new aq(context, a, tweet), z, str4);
        if (str2 != null && j != 0) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).a(context, tweet, twitterScribeAssociation, null).b(str2)).a(str3)).a((ScribeAssociation) twitterScribeAssociation)).d(str)).b(str));
        }
    }

    public static void a(Context context, Uri uri) {
        try {
            Intent flags = new Intent("android.intent.action.VIEW", uri).setFlags(268435456);
            if (x.a(uri)) {
                flags.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            }
            context.startActivity(flags);
        } catch (ActivityNotFoundException e) {
        }
    }

    public static void a(Context context, String str, long j) {
        a(context, str, j, null);
    }

    public static void a(Context context, String str, long j, Tweet tweet) {
        String a = a(str, j, context);
        a(context, a, null, j, new aq(context, a, tweet), false, null);
    }

    private static void a(Context context, String str, String str2, long j, o oVar, boolean z, String str3) {
        if (str2 != null) {
            str = str2;
        }
        Uri parse = Uri.parse(str);
        Matcher matcher = cey.e.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group();
            context.startActivity(new Intent(context, TweetActivity.class).setData(dd.b.buildUpon().appendEncodedPath(group.substring(group.lastIndexOf(47) + 1)).appendQueryParameter("ownerId", String.valueOf(j)).build()));
        } else if (a.matcher(str).matches()) {
            c(context);
        } else if (b(context, parse)) {
            a(context, parse);
        } else {
            bdj a = bdj.a(context);
            if (UrlInterpreterActivity.a(parse, z)) {
                context.startActivity(new Intent(context, UrlInterpreterActivity.class).putExtra("source", str3).setData(parse).putExtra("is_from_umf_prompt", z));
            } else if (a.g()) {
                a(context, oVar);
            } else {
                oVar.a();
            }
        }
    }

    public static void a(Context context, o oVar) {
        bdj a = bdj.a(context);
        long g = bg.a().c().g();
        sa.a(context, new an(oVar, a, g)).show();
        if (oVar.b() == 1) {
            bbu.a(new TwitterScribeLog(g).b("tweet:accept_data:::impression"));
        }
    }

    public static boolean a(Context context, String str) {
        if (!n.b(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if (a(context) && !b(context, parse) && b(parse)) {
            return true;
        }
        return false;
    }

    public static boolean b() {
        return VERSION.SDK_INT >= 19;
    }

    public static boolean a(Context context) {
        return b() && PreferenceManager.getDefaultSharedPreferences(context).getBoolean("in_app_browser", true);
    }

    public static boolean b(Context context, Uri uri) {
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", uri), 0);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            return false;
        }
        CharSequence charSequence = resolveActivity.activityInfo.packageName;
        if (aj.a(charSequence) || charSequence.startsWith("com.twitter.android")) {
            return false;
        }
        boolean equals = charSequence.equals("android");
        if (x.a(uri) || ((!b.contains(charSequence) && !equals) || ((a(uri) && equals) || b(uri.toString())))) {
            return true;
        }
        return false;
    }

    public static void a(Context context, String str, Tweet tweet) {
        context.startActivity(new Intent(context, BrowserActivity.class).setData(Uri.parse(str)).putExtra("tweet", tweet));
    }

    @VisibleForTesting
    static String a(String str) {
        if (str.startsWith("tel:")) {
            return str;
        }
        int indexOf = str.indexOf("://");
        if (indexOf == -1) {
            return "http://" + str;
        }
        return str.substring(0, indexOf).toLowerCase() + str.substring(indexOf);
    }

    static String a(cr crVar, long j, Context context) {
        return a(crVar.B, j, context);
    }

    static String a(String str, long j, Context context) {
        vx a = vx.a(context, bg.a().b(j).e());
        if (vx.a() && ao.d(Uri.parse(str)) && a.c()) {
            str = a.a(str);
        }
        return a(str);
    }

    public void a(Activity activity, Runnable runnable) {
        if (bdj.a((Context) activity).g() && d.a("twitter_access_android_media_forward_enabled")) {
            a((Context) activity, new ao(this, runnable));
        } else {
            runnable.run();
        }
    }

    private static boolean a(Uri uri) {
        String authority = uri.getAuthority();
        return authority != null && c.contains(authority.toLowerCase());
    }

    private static boolean b(String str) {
        return str != null && (str.contains("youtube.com/") || str.contains("youtu.be/"));
    }

    private static boolean b(Uri uri) {
        String authority = uri.getAuthority();
        if (authority == null || d.c("ad_formats_android_in_app_browser_unsupported_domains").contains(authority.toLowerCase())) {
            return false;
        }
        return true;
    }

    public static boolean b(Context context) {
        return c() && PreferenceManager.getDefaultSharedPreferences(context).getBoolean("readability_mode", true);
    }

    public static boolean c() {
        boolean a = d.a("readability_v2_enabled");
        boolean a2 = c.a("android_readability_3494", "readability_v2_enabled");
        CharSequence b = d.b("readability_v2_proxy_uri");
        if ((a || a2) && d.matcher(b).matches()) {
            return true;
        }
        return false;
    }
}
