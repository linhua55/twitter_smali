package defpackage;

import android.content.Context;
import android.database.Cursor;
import bih;
import cca;
import com.twitter.android.bu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.ct;

/* compiled from: Twttr */
/* renamed from: xb */
public class xb extends bu {
    private final long a;
    private final String b;

    public /* synthetic */ Cursor loadInBackground() {
        return b();
    }

    public /* synthetic */ Object loadInBackground() {
        return b();
    }

    public xb(Context context, long j, String str) {
        Context context2 = context;
        super(context2, ck.a(ct.a, j), bih.a, "conversations_conversation_id=?", new String[]{str}, null);
        this.a = j;
        this.b = str;
    }

    public cca b() {
        return new cca(super.loadInBackground(), this.a, getContext(), this.b, true);
    }
}
