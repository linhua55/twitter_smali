package defpackage;

import android.content.Context;
import blj;
import bll;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: blg */
public class blg extends b<blj> {
    private String a;
    private boolean b;

    protected /* synthetic */ c f() {
        return b();
    }

    public blg(Context context, Session session) {
        this(context, new ab(session));
    }

    public blg(Context context, ab abVar) {
        super(context, blg.class.getName(), abVar);
    }

    public blg a(String str) {
        this.a = str;
        return this;
    }

    public blg a(boolean z) {
        this.b = z;
        return this;
    }

    protected d a() {
        e a = K().a(new Object[]{"storystream", "stories"}).a("schemaVersion", "v2");
        Collection j = e().j();
        if (j.isEmpty()) {
            a.a("includeHistory", true);
        } else {
            a.a("seenStoryIds", j);
        }
        if (aj.b(this.a)) {
            a.a("storyId", this.a);
        }
        if (this.b) {
            a.a("sampleStories", true);
        }
        a.e().c().d();
        return a.a();
    }

    protected blj b() {
        return new blj();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, blj blj) {
        if (httpOperation.k()) {
            bll a = a(blj);
            if (a != null) {
                int a2;
                cfb.b("StoriesRequest", "Read " + a.a.size() + " stories from endpoint");
                ab N = N();
                if (N != null) {
                    di e = e();
                    a2 = e.a(N.c, a.a, a.b > 0 ? a.b : 14, null);
                    if (aj.b(this.a)) {
                        e.c(this.a, null);
                    }
                } else {
                    a2 = 0;
                }
                aaVar.c.putInt("key_stories_changed", a2);
                cfb.b("StoriesRequest", "Inserted " + a2 + " stories");
            } else if (cfb.a()) {
                cfb.d("StoriesRequest", "Stories could not be parsed!");
            }
        } else if (cfb.a()) {
            cfb.d("StoriesRequest", "Story request unsuccessful");
        }
    }

    di e() {
        return S();
    }

    bll a(blj blj) {
        return (bll) blj.b();
    }
}
