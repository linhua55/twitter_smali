package com.twitter.android.media.widget;

import android.animation.LayoutTransition;
import android.net.Uri;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class bb implements f {
    final /* synthetic */ MediaAttachmentsView a;

    private bb(MediaAttachmentsView mediaAttachmentsView) {
        this.a = mediaAttachmentsView;
    }

    public void a(Uri uri) {
        LayoutTransition layoutTransition = MediaAttachmentsView.e(this.a).getLayoutTransition();
        if (MediaAttachmentsView.f(this.a) != null && !MediaAttachmentsView.g(this.a)) {
            if (layoutTransition == null || !layoutTransition.isRunning()) {
                MediaAttachmentsView.f(this.a).a(uri);
            }
        }
    }

    public void a(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        e(editableMedia, attachmentMediaView);
    }

    public void b(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        if (MediaAttachmentsView.f(this.a) != null && (editableMedia instanceof EditableImage)) {
            MediaAttachmentsView.a(this.a, (EditableImage) editableMedia);
            MediaAttachmentsView.f(this.a).b(editableMedia, attachmentMediaView);
        }
    }

    public void c(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        e(editableMedia, attachmentMediaView);
    }

    public void d(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        if (MediaAttachmentsView.f(this.a) != null) {
            if (editableMedia instanceof EditableImage) {
                MediaAttachmentsView.a(this.a, (EditableImage) editableMedia);
            }
            MediaAttachmentsView.f(this.a).c(editableMedia, attachmentMediaView);
        }
    }

    private void e(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        if (MediaAttachmentsView.f(this.a) != null) {
            if (editableMedia instanceof EditableImage) {
                MediaAttachmentsView.a(this.a, (EditableImage) editableMedia);
            }
            MediaAttachmentsView.f(this.a).a(editableMedia, attachmentMediaView);
        }
    }
}
