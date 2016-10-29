package com.twitter.android.av.audio;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;

/* compiled from: Twttr */
public class c {
    private final FragmentManager a;
    private final Context b;
    private final Resources c;
    private final n d;
    private Toast e;

    public c(FragmentManager fragmentManager, Context context) {
        this(fragmentManager, context, context.getResources(), new n());
    }

    @VisibleForTesting
    c(FragmentManager fragmentManager, Context context, Resources resources, n nVar) {
        this.a = fragmentManager;
        this.b = context;
        this.c = resources;
        this.d = nVar;
    }

    public void a(com.twitter.model.av.c cVar) {
        AudioCardError a = AudioCardError.a(cVar);
        if (a() && a.statusCode == 403) {
            AudioCardErrorDialog.a(this.c, cVar).a(this.a);
            return;
        }
        String a2 = a.a(this.c, i.a);
        if (this.e != null) {
            this.e.cancel();
        }
        this.e = this.d.a(this.b, a2, 0);
        this.e.show();
    }

    public boolean a() {
        return this.a != null;
    }
}
