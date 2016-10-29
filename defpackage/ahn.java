package defpackage;

import com.twitter.android.moments.data.b;
import com.twitter.model.moments.s;
import com.twitter.util.z;
import rx.o;
import rx.subjects.c;

/* compiled from: Twttr */
/* renamed from: ahn */
public class ahn implements z<s> {
    private final c<s> a;
    private final b b;

    public ahn(b bVar) {
        this.a = c.q();
        this.b = bVar;
        bVar.a(this);
    }

    public void a(s sVar) {
        if (sVar != null) {
            this.a.b_(sVar);
        }
    }

    public o<s> a() {
        return this.a;
    }

    public void b() {
        this.b.b(this);
        this.a.bs_();
    }
}
