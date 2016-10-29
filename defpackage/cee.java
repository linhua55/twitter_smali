package defpackage;

import android.content.res.Resources;
import buz;
import ceq;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.ap;
import com.twitter.model.core.aq;
import com.twitter.model.core.as;
import com.twitter.ui.view.s;
import com.twitter.ui.widget.TextLayoutView;
import com.twitter.util.a;

/* compiled from: Twttr */
/* renamed from: cee */
public class cee {
    private final Resources a;
    private final TextLayoutView b;

    public cee(TextLayoutView textLayoutView, Resources resources) {
        this.b = textLayoutView;
        this.b.a(true);
        this.a = resources;
    }

    public void a(Tweet tweet, s sVar, long j) {
        a(cee.a(tweet, sVar) ? cee.a(j, cee.a(tweet), this.a) : null);
        this.b.a(a.a(tweet.n()));
    }

    public void a(as asVar, long j, int i) {
        a(cee.a(asVar, i) ? cee.a(j, cee.a(asVar), this.a) : null);
    }

    private void a(String str) {
        this.b.setTextWithVisibility(str);
    }

    protected static boolean a(Tweet tweet, s sVar) {
        return tweet.o() && !sVar.d && !ceq.h(tweet) && buz.a().c();
    }

    protected static boolean a(as asVar, int i) {
        return asVar.b() && i == 0 && buz.a().c();
    }

    protected static String a(long j, ap apVar, Resources resources) {
        if (apVar == null) {
            return null;
        }
        if (apVar.c == j) {
            return resources.getString(bdc.conversation_reply_context_to_you);
        }
        return resources.getString(bdc.conversation_reply_context_to_someone, new Object[]{apVar.c()});
    }

    protected static ap a(Tweet tweet) {
        ap apVar = tweet.w.e.b() > 0 ? (ap) tweet.w.e.a(0) : null;
        if (ceq.k(tweet)) {
            return (ap) new aq().b(tweet.B).a(tweet.s).a(tweet.v).q();
        }
        if (apVar == null || apVar.g >= 0) {
            return null;
        }
        return apVar;
    }

    protected static ap a(as asVar) {
        ap apVar = asVar.h.e.b() > 0 ? (ap) asVar.h.e.a(0) : null;
        if (ceq.b(asVar)) {
            return (ap) new aq().b(asVar.c).a(asVar.b).a(asVar.d).q();
        }
        if (apVar == null || apVar.g >= 0) {
            return null;
        }
        return apVar;
    }
}
