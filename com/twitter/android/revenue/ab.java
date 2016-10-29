package com.twitter.android.revenue;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.di;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bp;
import com.twitter.util.collection.CollectionUtils;
import cuj;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
final class ab extends AsyncTask<String, Void, Boolean> {
    private final Context a;
    private final cuj<av> b;
    private final String c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    ab(Context context, cuj<av> cuj_com_twitter_model_timeline_av, String str) {
        this.a = context;
        this.b = cuj_com_twitter_model_timeline_av;
        this.c = str;
    }

    protected Boolean a(String... strArr) {
        if (CollectionUtils.a(strArr)) {
            return Boolean.FALSE;
        }
        try {
            List a = CollectionUtils.a(CollectionUtils.a(RevenueInjectTweetDebugDialogPreference.b(this.a.getAssets().open(strArr[0])).a, this.b), new ac(this));
            long g = bg.a().c().g();
            di.a(this.a, g).a((ch) new cj().a(a).a(g).a(0).a(new bp().a(true).a()).q());
            return Boolean.TRUE;
        } catch (IOException e) {
            return Boolean.FALSE;
        }
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            Toast.makeText(this.a, this.c, 0).show();
        }
    }
}
