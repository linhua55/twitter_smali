package com.twitter.android;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
class wh extends AsyncTask<s, Void, Void> {
    final /* synthetic */ Context a;
    final /* synthetic */ UmfInlinePromptView b;

    wh(UmfInlinePromptView umfInlinePromptView, Context context) {
        this.b = umfInlinePromptView;
        this.a = context;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((s[]) objArr);
    }

    protected Void a(s... sVarArr) {
        long g = bg.a().c().g();
        e eVar = new e(this.a.getContentResolver());
        di.a(this.a, g).a(sVarArr[0].c, eVar);
        eVar.a();
        return null;
    }
}
