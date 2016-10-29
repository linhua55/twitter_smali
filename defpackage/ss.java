package defpackage;

import android.content.Context;
import cgt;
import cgu;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.x;
import com.twitter.android.provider.z;

/* compiled from: Twttr */
/* renamed from: ss */
public class ss extends tk<z> {
    public ss(Context context, int i, te teVar) {
        super(context, i, teVar);
    }

    protected cgu<z> a(String str, boolean z) {
        return new cgt(this.a.getContentResolver().query(SuggestionsProvider.c, null, str, null, null), new x());
    }
}
