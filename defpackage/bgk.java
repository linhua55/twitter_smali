package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
/* renamed from: bgk */
public class bgk extends bga<bgj> {
    private boolean a;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bgk(Context context, Session session) {
        super(context, session);
    }

    public bgk a(boolean z) {
        this.a = z;
        return this;
    }

    protected bgj d() {
        return new bgj(this);
    }
}
