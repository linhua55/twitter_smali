package defpackage;

import android.content.Context;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bls */
public class bls extends b {
    private final long a;
    private final long b;
    private final int c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bls(Context context, Session session, long j, long j2, int i) {
        super(context, bls.class.getName(), session);
        this.a = j;
        this.b = j2;
        this.c = i;
    }

    protected d a() {
        e a = K().a("user_id", this.a).a("list_id", this.b);
        switch (this.c) {
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a.a("lists", "members", "show");
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                a.a("lists", "subscribers", "show");
                break;
            default:
                throw new IllegalStateException("Unknown user type: " + this.c);
        }
        return a.a();
    }

    protected as b() {
        return null;
    }
}
