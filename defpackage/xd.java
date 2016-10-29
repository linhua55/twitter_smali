package defpackage;

import android.content.Context;
import android.database.Cursor;
import bih;
import cca;
import com.twitter.android.bu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.ct;

/* compiled from: Twttr */
/* renamed from: xd */
public class xd extends bu {
    private final long a;

    public /* synthetic */ Cursor loadInBackground() {
        return b();
    }

    public /* synthetic */ Object loadInBackground() {
        return b();
    }

    public xd(Context context, long j) {
        super(context, ck.a(ct.a, j), bih.a, null, null, null);
        this.a = j;
    }

    public cca b() {
        return new cca(super.loadInBackground(), this.a, getContext(), null, true);
    }
}
