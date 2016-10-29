package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: acb */
public class acb extends aca {
    private final String a;

    public acb(Context context, String str, String str2, int i) {
        Context context2 = context;
        this(context2, "found_media_items", bg.a().c(), str, str2, i);
    }

    protected acb(Context context, String str, Session session, String str2, String str3, int i) {
        super(context, str, str3, session, i);
        this.a = str2;
    }

    protected String b() {
        return "search";
    }

    protected e e() {
        return super.e().a("q", this.a);
    }
}
