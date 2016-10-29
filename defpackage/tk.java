package defpackage;

import android.content.Context;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.library.api.search.TwitterTypeAheadGroup;

/* compiled from: Twttr */
/* renamed from: tk */
public abstract class tk<T> extends ti<String, T> {
    public tk(Context context, int i, te teVar) {
        super(context, 1, i, false, teVar);
    }

    protected boolean a(String str) {
        return SuggestionsProvider.b(str) == null;
    }

    protected void a(String str, TwitterTypeAheadGroup twitterTypeAheadGroup) {
        SuggestionsProvider.a(str, twitterTypeAheadGroup.a);
    }
}
