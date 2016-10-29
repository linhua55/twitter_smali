package defpackage;

import com.twitter.config.c;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: buj */
public class buj {
    private static buj a;
    private boolean b;

    public static buj a() {
        h.a();
        cqf.a(buj.class);
        if (a == null) {
            a = new buj();
        }
        return a;
    }

    private buj() {
        this.b = c.a("conversations_autopopulate_reply_android_4275").equals("treatment");
    }

    public boolean b() {
        this.b = c.a("conversations_autopopulate_reply_android_4275", "treatment");
        return this.b;
    }

    public boolean c() {
        return this.b;
    }
}
