package com.twitter.android.highlights;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.service.ac;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class i extends ac<Void, AsyncOperation<Void, Void>> {
    private final WeakReference<StoriesActivity> a;

    i(StoriesActivity storiesActivity) {
        this.a = new WeakReference(storiesActivity);
    }

    public void a(AsyncOperation<Void, Void> asyncOperation) {
        StoriesActivity storiesActivity = (StoriesActivity) this.a.get();
        if (storiesActivity != null) {
            storiesActivity.i();
        }
    }
}
