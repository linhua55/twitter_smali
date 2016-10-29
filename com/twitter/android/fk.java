package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.model.core.b;
import com.twitter.model.core.q;

/* compiled from: Twttr */
public class fk {
    public static Intent a(Context context, q qVar) {
        return new Intent(context, SearchActivity.class).putExtra("query", String.format("#%s", new Object[]{qVar.c})).putExtra("q_source", "hashtag_click").putExtra("scribe_context", "hashtag");
    }

    public static Intent a(Context context, b bVar) {
        return new Intent(context, SearchActivity.class).putExtra("query", String.format("$%s", new Object[]{bVar.c})).putExtra("q_source", "cashtag_click").putExtra("scribe_context", "cashtag");
    }
}
