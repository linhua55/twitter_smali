package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.library.api.dm.requests.z;
import com.twitter.library.media.util.a;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class dd implements AttachMediaListener, a {
    final /* synthetic */ DMConversationFragment a;

    public dd(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public boolean a(MediaAttachment mediaAttachment) {
        return true;
    }

    public void a(List<MediaAttachment> list) {
        if (!list.isEmpty()) {
            MediaAttachment mediaAttachment = (MediaAttachment) e.a(CollectionUtils.c(list));
            if (mediaAttachment.a == 0) {
                EditableMedia a = mediaAttachment.a(3);
                if (a != null) {
                    DMConversationFragment.b(this.a, new z(DMConversationFragment.D(this.a), DMConversationFragment.B(this.a), DMConversationFragment.k(this.a), a), 15, 0);
                }
            } else if (mediaAttachment.a == 1 && mediaAttachment.b != MediaAttachFailure.e) {
                Toast.makeText(DMConversationFragment.C(this.a), 2131362439, 0).show();
            }
        }
    }

    public void a(Intent intent, int i, Bundle bundle) {
        this.a.startActivityForResult(intent, a(i));
    }

    public int a(int i) {
        return i + DefaultLoadControl.DEFAULT_HIGH_WATERMARK_MS;
    }

    public int b(int i) {
        return i - 30000;
    }
}
