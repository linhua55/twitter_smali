package defpackage;

import android.net.Uri;
import aqo;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.media.widget.f;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: aqx */
class aqx implements f {
    final /* synthetic */ aqo a;

    aqx(aqo aqo) {
        this.a = aqo;
    }

    public void a(Uri uri) {
        if (aqo.e(this.a) != null) {
            aqo.e(this.a).e();
        }
        aqo.l(this.a);
    }

    public void a(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
        if (aqo.m(this.a) != null && aqo.m(this.a).a == 0 && editableMedia.g() != MediaType.c) {
            aqo.n(this.a).a((EditableMedia) e.a(aqo.m(this.a).a(2)), null, this.a);
        }
    }

    public void b(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }

    public void c(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }

    public void d(EditableMedia editableMedia, AttachmentMediaView attachmentMediaView) {
    }
}
