package com.twitter.android.nativecards.pollcompose;

import com.twitter.android.media.imageeditor.y;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
class b implements y {
    final /* synthetic */ EditableImage a;
    final /* synthetic */ AddImagePollActivity b;

    b(AddImagePollActivity addImagePollActivity, EditableImage editableImage) {
        this.b = addImagePollActivity;
        this.a = editableImage;
    }

    public j<EditableMedia> a(int i) {
        return ObservablePromise.a(this.a);
    }

    public int getCount() {
        return 1;
    }

    public int getInitialPosition() {
        return 0;
    }
}
