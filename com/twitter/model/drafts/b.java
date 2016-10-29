package com.twitter.model.drafts;

import com.twitter.model.media.EditableMedia;
import ctc;

/* compiled from: Twttr */
final class b implements ctc<EditableMedia, DraftAttachment> {
    b() {
    }

    public DraftAttachment a(EditableMedia editableMedia) {
        return editableMedia == null ? null : new DraftAttachment(editableMedia);
    }
}
