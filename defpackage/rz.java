package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import bdf;
import bdj;
import com.twitter.android.UrlInterpreterActivity;
import com.twitter.android.client.a;
import com.twitter.library.api.al;
import com.twitter.library.client.br;
import com.twitter.library.view.w;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: rz */
public class rz extends bdf {
    private static final Pattern a;
    private final Context b;
    private final bdj c;
    private final a d;

    static {
        a = Pattern.compile("<a.* href=\\ ?\"([^\"]*)\"[^>]*>(.*)</a>");
    }

    public rz(Context context) {
        this.b = context;
        this.c = bdj.a(context);
        this.d = new a(context);
    }

    public void a(al alVar, al alVar2) {
        a();
        if (!TelephonyUtil.i().c() && al.a(alVar, alVar2)) {
            b();
        }
    }

    public void a(boolean z, boolean z2) {
        a();
        if (this.c.e() && z2 != z) {
            b();
        }
    }

    private void a() {
        br a = br.a();
        if (this.c.b()) {
            a.a(this.d);
        } else {
            a.a(null);
        }
    }

    private void b() {
        String str = null;
        br a = br.a();
        if (this.c.b() && this.c.e()) {
            Intent data;
            String d = this.c.d();
            Matcher matcher = a.matcher(d);
            if (matcher.find()) {
                data = new Intent(this.b, UrlInterpreterActivity.class).setData(Uri.parse(matcher.group(1)));
                str = matcher.group(2);
                d = d.replace(matcher.group(0), "%1$s");
            } else {
                data = null;
            }
            Resources resources = this.b.getResources();
            String[] split = d.split("\n");
            List arrayList = new ArrayList();
            for (String str2 : split) {
                if (str2.contains("%1$s")) {
                    arrayList.add(new w(resources, str2, str));
                } else {
                    arrayList.add(new w(str2));
                }
            }
            a.a(arrayList);
            a.a(true);
            this.d.a(data);
            return;
        }
        a.a(false);
    }
}
