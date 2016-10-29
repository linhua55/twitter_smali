package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.media.camera.z;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.widget.bc;
import com.twitter.android.widget.bk;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.media.util.a;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
public class GalleryGridActivity extends TwitterFragmentActivity implements AttachMediaListener, bc, a {
    private MediaAttachmentController a;
    private String b;
    private boolean c;
    private int d;

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        boolean z = bundle != null;
        this.b = intent.getStringExtra("permissions_event_prefix");
        this.c = intent.getBooleanExtra("is_video_allowed", false);
        this.d = intent.getIntExtra("camera_initiator", 0);
        this.a = MediaAttachmentController.a(this, this, intent.getStringExtra("scribe_section"), this.c ? MediaType.h : MediaType.g, 1, ab());
        new bk((FragmentActivity) this, z, this.a, 2131952502, (bc) this, this.c).a((ViewGroup) findViewById(2131952501));
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968837);
        return tVar;
    }

    public void b(int i) {
        a(i);
    }

    public void a(int i) {
        if (z.a(this, i)) {
            this.a.a(this.c, i, this.d);
        } else {
            startActivityForResult(z.a(this, i, this.b), 0);
        }
    }

    public void a(EditableMedia editableMedia) {
        if (editableMedia.g() == MediaType.VIDEO) {
            this.a.a(editableMedia, null, (AttachMediaListener) this, true);
        } else {
            this.a.a(editableMedia, (AttachMediaListener) this);
        }
    }

    public void a(EditableMedia editableMedia, View view) {
        this.a.a(editableMedia, null, (AttachMediaListener) this);
    }

    public void z() {
        finish();
    }

    public void b(boolean z) {
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.a.a(i, i2, intent, (AttachMediaListener) this);
        if (i2 == -1 && i == 0 && PermissionRequestActivity.a(intent)) {
            a(z.a(intent));
        }
    }

    public boolean a(MediaAttachment mediaAttachment) {
        return true;
    }

    public void a(List<MediaAttachment> list) {
        if (!list.isEmpty()) {
            setResult(-1, new Intent().putExtra("media_attachment", (MediaAttachment) CollectionUtils.b((List) list)));
            finish();
        }
    }
}
