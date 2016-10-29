package defpackage;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.support.annotation.VisibleForTesting;
import com.twitter.config.d;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.client.u;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.serialization.s;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: vx */
public class vx {
    private static final long a;
    private static final long b;
    private final l c;
    private final Context d;

    static {
        a = TimeUnit.DAYS.toSeconds(10);
        b = TimeUnit.DAYS.toSeconds(2);
    }

    public static boolean a() {
        return d.a("performance_ads_tpm_id_sync_android_enabled");
    }

    public static vx a(Context context, String str) {
        return new vx(context, str);
    }

    public static vx a(Context context, long j) {
        return new vx(context, bg.a().b(j).e());
    }

    private vx(Context context, String str) {
        this.c = new l(context, str, "tpm_id_sync");
        this.d = context;
    }

    public static long b() {
        return TimeUnit.SECONDS.toMillis(d.a("performance_ads_tpm_id_sync_encryption_interval_in_seconds", a));
    }

    public boolean c() {
        boolean z;
        long j = this.c.getLong("last_redirect_timestamp", 0);
        long toMillis = TimeUnit.SECONDS.toMillis(d.a("performance_ads_tpm_id_sync_click_interval_in_seconds", b));
        if (CollectionUtils.b(e())) {
            z = false;
        } else {
            z = true;
        }
        if (!z || j + toMillis > al.b()) {
            return false;
        }
        return true;
    }

    public void a(List<String> list) {
        this.c.a().a("ids", list, s.a(s.j)).apply();
    }

    public String a(String str) {
        String d = d();
        if (d == null) {
            return str;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        Builder builder = new Builder();
        builder.scheme("https").authority("analytics.twitter.com").path("mob_idsync_click").appendQueryParameter("slug", lastPathSegment).appendQueryParameter("idb", d);
        UserSettings j = bg.a().c().j();
        if (j != null) {
            builder.appendQueryParameter("tailored_ads", String.valueOf(j.q));
        }
        com.twitter.library.api.d a = u.a.a();
        if (a != null) {
            builder.appendQueryParameter("ad_tracking", String.valueOf(!a.b()));
        }
        return builder.build().toString();
    }

    @VisibleForTesting
    String d() {
        Object e = e();
        if (CollectionUtils.b(e)) {
            return null;
        }
        List a = MutableList.a();
        a.addAll(e);
        String str = (String) a.remove(e.size() - 1);
        this.c.a().a("ids", a, s.a(s.j)).a("last_redirect_timestamp", al.b()).apply();
        return str;
    }

    @VisibleForTesting
    List<String> e() {
        return (List) this.c.a("ids", s.a(s.j));
    }
}
