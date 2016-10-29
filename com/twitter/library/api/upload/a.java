package com.twitter.library.api.upload;

import android.content.Context;
import bbu;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class a extends r {
    protected String a;

    public a(Context context, String str) {
        super(context);
        this.a = str;
    }

    public void a(z zVar, aa aaVar) {
    }

    public void a(z zVar, aa aaVar, n nVar) {
        String str;
        if (!aaVar.b()) {
            str = this.a + ":failure";
        } else if (nVar.a() > 1) {
            str = this.a + ":retry";
        } else {
            str = this.a + ":success";
        }
        Iterable b = nVar.b();
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(zVar.N().c).b(new String[]{str})).c(2)).d(b != null ? aj.a(",", b) : TtmlNode.ANONYMOUS_REGION_ID));
    }
}
