package com.twitter.android.media.imageeditor;

import com.twitter.model.media.EditableImage;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class c implements e<EditableImage> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(EditableImage editableImage) {
        if (editableImage != null) {
            this.a.b.a(false, false);
            EditImageFragment.a(this.a.c, editableImage, this.a.d, this.a.b);
        }
    }
}
