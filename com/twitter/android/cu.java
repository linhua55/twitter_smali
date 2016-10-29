package com.twitter.android;

import android.net.Uri;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.media.widget.f;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class cu implements f {
    final /* synthetic */ DMConversationFragment a;

    cu(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(Uri uri) {
        DMConversationFragment.E(this.a);
    }

    public void a(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        MediaAttachment l = DMConversationFragment.F(this.a).l();
        if (l != null && l.a == 0) {
            DMConversationFragment.G(this.a).a((EditableMedia) e.a(l.a(2)), null, this.a, true);
        }
    }

    public void b(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }

    public void c(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }

    public void d(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }
}
