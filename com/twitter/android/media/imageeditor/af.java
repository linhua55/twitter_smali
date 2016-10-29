package com.twitter.android.media.imageeditor;

import com.twitter.media.filters.Filters;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class af extends ae {
    final WeakReference<EditImageFragment> a;

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Filters) obj);
    }

    af(EditImageFragment editImageFragment) {
        super(null);
        this.a = new WeakReference(editImageFragment);
    }

    protected void a(Filters filters) {
        EditImageFragment editImageFragment = (EditImageFragment) this.a.get();
        if (editImageFragment == null && filters != null) {
            filters.b();
            filters = null;
        }
        if (editImageFragment != null) {
            editImageFragment.a(filters);
        }
    }
}
