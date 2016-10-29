package defpackage;

import android.content.Context;
import atn;
import bfp;
import cgu;
import chd;
import com.twitter.library.client.Session;
import com.twitter.model.av.MonetizationCategory;

/* compiled from: Twttr */
/* renamed from: up */
public class up extends atn<MonetizationCategory, cgu<MonetizationCategory>, bfp> {
    private final Context a;
    private final Session b;

    public up(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    protected cgu<MonetizationCategory> a(bfp bfp) {
        return new chd(bfp.e());
    }

    protected bfp a(MonetizationCategory monetizationCategory) {
        return new bfp(this.a, this.b);
    }
}
