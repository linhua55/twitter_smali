package com.twitter.android.revenue;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.di;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.g;
import com.twitter.model.timeline.by;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
final class ad extends AsyncTask<String, Void, Boolean> {
    private final Context a;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    private ad(Context context) {
        this.a = context;
    }

    protected Boolean a(String... strArr) {
        if (CollectionUtils.a(strArr)) {
            return Boolean.FALSE;
        }
        try {
            cm cmVar = (cm) g.a(this.a.getAssets().open(strArr[0]), cm.class);
            long g = bg.a().c().g();
            di a = di.a(this.a, g);
            a.a("timeline", "data_id", Long.valueOf(cmVar.bf_()));
            n d = n.d();
            d.c(((by) ((by) ((by) new by().a(cmVar).a(0)).b(cmVar.J)).b(cmVar.bg_())).q());
            a.a((ch) new cj().a((List) d.q()).a(g).a(0).q());
            return Boolean.TRUE;
        } catch (IOException e) {
            return Boolean.FALSE;
        }
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            Toast.makeText(this.a, "Tweet Injected!", 0).show();
        }
    }
}
