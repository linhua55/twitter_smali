package com.twitter.android.highlights;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ac extends z {
    private final WeakReference<StoriesActivity> a;

    public ac(StoriesActivity storiesActivity) {
        this.a = new WeakReference(storiesActivity);
    }

    public void a(x xVar) {
        StoriesActivity storiesActivity = (StoriesActivity) this.a.get();
        if (storiesActivity != null) {
            if (((aa) xVar.l().b()).b()) {
                storiesActivity.a(xVar);
            } else {
                storiesActivity.h();
            }
            storiesActivity.i();
        }
    }
}
