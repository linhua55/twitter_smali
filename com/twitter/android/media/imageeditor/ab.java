package com.twitter.android.media.imageeditor;

import com.twitter.model.media.EditableImage;
import com.twitter.util.math.c;

/* compiled from: Twttr */
class ab {
    public final int a;
    public final c b;
    public final boolean c;
    public final int d;
    final /* synthetic */ EditImageFragment e;

    ab(EditImageFragment editImageFragment, EditableImage editableImage) {
        this.e = editImageFragment;
        this.a = editableImage.c;
        this.b = editableImage.f != null ? editableImage.f : c.c;
        this.c = editableImage.b;
        this.d = editableImage.e;
    }
}
