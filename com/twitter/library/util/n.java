package com.twitter.library.util;

import android.content.Context;
import android.database.Cursor;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import java.util.Map;

/* compiled from: Twttr */
public class n extends a {
    private static boolean b;
    private static String c;

    public /* bridge */ /* synthetic */ Cursor a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ void a(Map map, o oVar, boolean z) {
        super.a(map, oVar, z);
    }

    n(Context context) {
        super(context);
    }

    public boolean b() {
        String e = bg.a().c().e();
        if (c != null && c.equals(e)) {
            return b;
        }
        b = new l(this.a, e, "ContactLoaderHelper").getBoolean("contacts_uploaded", false);
        c = e;
        return b;
    }

    public void c() {
        String e = bg.a().c().e();
        if (new l(this.a, e, "ContactLoaderHelper").a().a("contacts_uploaded", true).commit()) {
            b = true;
            c = e;
        }
    }
}
