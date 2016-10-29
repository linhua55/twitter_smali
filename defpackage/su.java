package defpackage;

import android.content.Context;
import cgt;
import cgu;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.g;
import com.twitter.android.provider.o;
import com.twitter.library.api.search.TwitterTypeAheadGroup;

/* compiled from: Twttr */
/* renamed from: su */
public class su extends ti<String, g> {
    public su(Context context, int i, te teVar) {
        super(context, 2, i, true, teVar);
    }

    protected boolean a(String str) {
        return SuggestionsProvider.c(str) == null;
    }

    protected void a(String str, TwitterTypeAheadGroup twitterTypeAheadGroup) {
        SuggestionsProvider.b(str, twitterTypeAheadGroup.c);
    }

    protected cgu<g> a(String str, boolean z) {
        return new cgt(this.a.getContentResolver().query(SuggestionsProvider.d.buildUpon().appendQueryParameter("add_query_to_empty_result", z ? "true" : "false").build(), null, str, null, null), new o());
    }
}
