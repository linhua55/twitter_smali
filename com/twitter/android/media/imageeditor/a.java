package com.twitter.android.media.imageeditor;

import com.twitter.model.media.EditableMedia;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
class a implements y {
    final /* synthetic */ EditImageActivity a;

    a(EditImageActivity editImageActivity) {
        this.a = editImageActivity;
    }

    public j<EditableMedia> a(int i) {
        return ObservablePromise.a(this.a.b.get(i));
    }

    public int getCount() {
        return this.a.b.size();
    }

    public int getInitialPosition() {
        return 0;
    }
}
