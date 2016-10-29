package defpackage;

import android.content.Context;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.aq;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: blt */
public class blt extends b<as> {
    private final int a;
    private final int b;
    private final long c;
    private final long g;
    private int h;
    private long[] i;

    protected /* synthetic */ c f() {
        return b();
    }

    public blt(Context context, Session session, int i, long j, long j2, int i2) {
        super(context, blt.class.getName(), session);
        this.a = i;
        this.b = i2;
        this.c = j;
        this.g = j2;
    }

    protected d a() {
        e a;
        String a2 = S().a(1, this.a, this.c, this.b);
        switch (this.a) {
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                a = K().a("lists", "members");
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                a = K().a("lists", "subscribers");
                break;
            default:
                throw new IllegalStateException("Unknown user type: " + this.a);
        }
        a.a("list_id", this.g);
        a.a("include_user_entities", true);
        a.a("skip_status", false);
        if (a2 != null) {
            a.a("cursor", a2);
        }
        return a.a();
    }

    protected as b() {
        return as.a(21);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        int i = 0;
        if (httpOperation.j()) {
            aq aqVar = (aq) asVar.b();
            if (aqVar == null) {
                httpOperation.l().a = 0;
                return;
            }
            Collection<TwitterUser> b = aqVar.b();
            int size = b.size();
            if (size > 0) {
                this.i = new long[size];
                for (TwitterUser bf_ : b) {
                    int i2 = i + 1;
                    this.i[i] = bf_.bf_();
                    i = i2;
                }
                com.twitter.library.provider.e T = T();
                this.h = S().a(b, this.c, this.a, this.g, this.b == 0 ? "-1" : null, aqVar.a(), true, T);
                T.a();
            }
        }
    }
}
