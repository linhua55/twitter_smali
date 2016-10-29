package defpackage;

import auc;
import com.twitter.database.model.s;

/* compiled from: Twttr */
/* renamed from: ays */
public interface ays extends s {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;

    static {
        a = auc.b("notif_txt");
        b = auc.c("notif_id");
        c = auc.a("notif_id", Integer.valueOf(0));
        d = auc.c("type");
        e = auc.a(new String[]{d, auc.c("source_user_name")});
        f = auc.a("type", new Integer[]{Integer.valueOf(4), Integer.valueOf(3), Integer.valueOf(5), Integer.valueOf(2), Integer.valueOf(12), Integer.valueOf(6)});
        g = auc.b("type", Integer.valueOf(13));
        h = auc.b("type", Integer.valueOf(1));
    }
}
