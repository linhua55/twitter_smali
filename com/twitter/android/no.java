package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class no implements bb {
    private final Context a;
    private np b;

    public no(Context context) {
        this.a = context;
    }

    public boolean a(x xVar, int i, np npVar) {
        this.b = npVar;
        return az.a(this.a).a(xVar, i, (bb) this);
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        this.b.a(i, xVar);
    }
}
