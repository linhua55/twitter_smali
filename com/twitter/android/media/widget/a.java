package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ EditableMedia a;
    final /* synthetic */ AttachmentMediaView b;

    a(AttachmentMediaView attachmentMediaView, EditableMedia editableMedia) {
        this.b = attachmentMediaView;
        this.a = editableMedia;
    }

    public void onClick(View view) {
        if (this.b.m != null) {
            this.b.m.a(this.a, this.b);
        }
    }
}
