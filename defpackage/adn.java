package defpackage;

import android.content.Context;
import byn;
import com.twitter.android.moments.ui.fullscreen.c;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.k;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.j;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.model.moments.aj;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map;
import rx.o;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: adn */
public class adn {
    private final long a;
    private final String b;
    private final ads c;
    private final adr d;
    private final adp e;
    private final c f;
    private final byn g;
    private o<Map<Long, Long>> h;
    private List<MomentModule> i;

    public adn(Context context, long j, String str, c cVar) {
        this(j, str, cVar, byn.a(di.a(context, j)));
    }

    adn(long j, String str, c cVar, byn byn) {
        this.h = o.c();
        this.i = n.g();
        this.a = j;
        this.b = str;
        this.c = new ads(this, "list");
        this.d = new adr(this, "hero");
        this.e = new adp(this, "carousel");
        this.f = cVar;
        this.g = byn;
    }

    public void a(k kVar) {
        this.h = this.g.a(this.b).e();
        this.i = n.a(cto.a(kVar.c));
    }

    public static void a(long j) {
        bbu.a(new TwitterScribeLog(j, "moments:modern_guide:::open"));
    }

    public void a() {
        if (this.f.b()) {
            bbu.a(new TwitterScribeLog(this.a, "moments:modern_guide:::impression"));
        }
    }

    public void a(String str) {
        a(str, "header");
    }

    public void b(String str) {
        a(str, "footer");
    }

    private void a(String str, String str2) {
        j a = new j().a(str);
        long j = this.a;
        String[] strArr = new String[1];
        strArr[0] = String.format("moments:modern_guide:category:%s:navigate", new Object[]{str2});
        bbu.a(new TwitterScribeLog(j, strArr).a(TwitterScribeItem.a((MomentScribeDetails) a.q())));
    }

    public adp a(MomentGuideSectionType momentGuideSectionType) {
        switch (ado.a[momentGuideSectionType.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return b();
            case WireMessage.WIRE_CONTROL /*2*/:
                return c();
            case WireMessage.WIRE_AUTH /*3*/:
                return d();
            default:
                throw new IllegalArgumentException("Unrecognized type: " + momentGuideSectionType);
        }
    }

    public ads b() {
        return this.c;
    }

    public adp c() {
        return this.e;
    }

    public adr d() {
        return this.d;
    }

    void a(long j, String str, String str2) {
        a(j, str, str2, null);
    }

    void a(long j, String str, String str2, Long l) {
        if (this.f.b()) {
            aj h;
            j a = new j().a(j).a(this.b);
            if (l != null) {
                a.c(l.longValue());
            }
            int i = 0;
            while (i < this.i.size()) {
                MomentModule momentModule = (MomentModule) this.i.get(i);
                if (momentModule.b().b == j) {
                    h = momentModule.h();
                    break;
                }
                i++;
            }
            h = null;
            i = -1;
            a.a(h);
            long j2 = this.a;
            String[] strArr = new String[1];
            strArr[0] = String.format(str, new Object[]{str2});
            bbw bbw = (TwitterScribeLog) new TwitterScribeLog(j2, strArr).a(TwitterScribeItem.a((MomentScribeDetails) a.q()));
            if (i >= 0) {
                bbw.d(i);
            }
            bbu.a(bbw);
        }
    }
}
