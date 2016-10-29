package com.twitter.android.composer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.twitter.android.AltTextActivity;
import com.twitter.android.media.imageeditor.EditImageFragment;
import com.twitter.android.media.widget.bc;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class m implements bc {
    final /* synthetic */ ComposerActivity a;

    m(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(Uri uri) {
        this.a.N.a(uri, new as(this.a, true));
    }

    public void a(EditableMedia editableMedia, View view) {
        MediaType g = editableMedia.g();
        switch (al.a[g.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(view, (EditableImage) editableMedia, 1);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                this.a.b(editableMedia, view);
                break;
        }
        this.a.h.a(g);
        this.a.h.c();
    }

    public void b(EditableMedia editableMedia, View view) {
        if (editableMedia instanceof EditableImage) {
            EditableImage editableImage = (EditableImage) editableMedia;
            Intent putExtra = new Intent(this.a, AltTextActivity.class).putExtra("editable_image", editableMedia);
            if (!TextUtils.isEmpty(editableImage.i)) {
                putExtra.putExtra("alt_text", editableImage.i);
            }
            this.a.startActivityForResult(putExtra, 521);
        }
    }

    public void c(EditableMedia editableMedia, View view) {
        if (editableMedia instanceof EditableImage) {
            a(view, (EditableImage) editableMedia, 3);
        }
    }

    private void a(View view, EditableImage editableImage, int i) {
        this.a.a(0, false);
        this.a.a(false);
        this.a.aD = EditImageFragment.a(this.a.l, this.a, view, this.a.M, editableImage, i, "composer");
        if (this.a.aD != null) {
            this.a.getSupportFragmentManager().beginTransaction().add(this.a.M.getId(), this.a.aD, "image_edit").commitAllowingStateLoss();
        }
    }
}
