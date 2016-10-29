package defpackage;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.ai;
import com.twitter.library.av.l;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.network.j;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.k;
import com.twitter.util.network.b;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
/* renamed from: bpx */
public abstract class bpx {
    protected abstract i a(Context context);

    protected abstract AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo);

    protected abstract void a(Context context, Map<String, String> map, b bVar);

    protected abstract void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd);

    public AVMediaPlaylist a(Context context, au auVar) {
        return a(context, auVar, l.a(context));
    }

    public AVMediaPlaylist a(Context context, au auVar, l lVar) {
        AVDataSource c = auVar.c();
        String e = c.e();
        i a = a(context);
        Map b = b(context);
        DynamicAdInfo a2 = a(lVar, c);
        return a(auVar, a, a(context, b, a, a(context, a(e, b, k.a(a2)).toString(), c.g())), b, a2);
    }

    protected DynamicAdInfo a(l lVar, AVDataSource aVDataSource) {
        if (ai.a()) {
            return lVar.a(aVDataSource.a());
        }
        return null;
    }

    protected Builder a(String str, Map<String, String> map, DynamicAd dynamicAd) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        a(buildUpon, (Map) map, dynamicAd);
        return buildUpon;
    }

    protected String a(Context context, String str, Map<String, String> map) {
        return str;
    }

    protected Map<String, String> b(Context context) {
        Map concurrentHashMap = new ConcurrentHashMap();
        b e = TelephonyUtil.i().e();
        concurrentHashMap.put("User-Agent", bpx.c(context));
        concurrentHashMap.put("Twitter-Player", Boolean.toString(true));
        concurrentHashMap.put("X-CDN-DEVICE", a());
        concurrentHashMap.put("Network-Type", e.b);
        a(context, concurrentHashMap, e);
        return concurrentHashMap;
    }

    protected String a() {
        return TelephonyUtil.i().f() ? "phone" : "tablet";
    }

    protected HttpOperation a(Context context, Map<String, String> map, i iVar, String str) {
        HttpOperation a = new j(context, str).a(iVar).a();
        for (Entry entry : map.entrySet()) {
            a.a((String) entry.getKey(), (String) entry.getValue());
        }
        return a.c();
    }

    public static String c(Context context) {
        return bpx.a(context, VERSION.SDK_INT, Build.MODEL);
    }

    protected static String a(Context context, int i, String str) {
        return String.format("Twitter-android/%s Android/%d (%s)", new Object[]{bpx.d(context), Integer.valueOf(i), str});
    }

    protected static String d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    protected static String a(HttpOperation httpOperation) {
        com.twitter.internal.network.k l = httpOperation != null ? httpOperation.l() : null;
        if (l == null) {
            return null;
        }
        Exception exception = l.c;
        return bpx.a(l.a, exception != null ? exception.getMessage() : l.b);
    }

    public static String a(int i, String str) {
        return String.format("Network error. status code: %d reason: %s", new Object[]{Integer.valueOf(i), str});
    }
}
