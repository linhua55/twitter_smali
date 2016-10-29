package com.twitter.library.util;

import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.View;
import bcx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class s extends AsyncTask<Void, Void, Void> {
    final List<t> a;
    private final WeakReference<View> b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Void) obj);
    }

    s(View view) {
        this.a = new ArrayList();
        this.b = new WeakReference(view);
        view.setTag(bcx.emoji_view_tag, Integer.valueOf(System.identityHashCode(this)));
    }

    void a(t tVar) {
        this.a.add(tVar);
    }

    protected Void a(Void... voidArr) {
        if (a()) {
            for (t tVar : this.a) {
                tVar.c = (Drawable) tVar.b.b();
            }
        }
        return null;
    }

    protected void a(Void voidR) {
        View view = (View) this.b.get();
        if (a()) {
            for (t tVar : this.a) {
                tVar.a.b(tVar.c);
            }
            view.invalidate();
        }
    }

    private boolean a() {
        View view = (View) this.b.get();
        if (view != null) {
            Integer num = (Integer) view.getTag(bcx.emoji_view_tag);
            if (num != null && num.intValue() == System.identityHashCode(this)) {
                return true;
            }
        }
        return false;
    }
}
