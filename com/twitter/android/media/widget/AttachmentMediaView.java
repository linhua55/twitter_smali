package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView.BufferType;
import buv;
import com.google.android.exoplayer.util.Util;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.mx;
import com.twitter.library.media.util.x;
import com.twitter.library.media.widget.EditableMediaView;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.object.e;
import defpackage.bct;
import java.io.File;

/* compiled from: Twttr */
public class AttachmentMediaView extends EditableMediaView {
    private Uri i;
    private boolean j;
    private File k;
    private boolean l;
    private f m;
    private final ViewGroup n;
    private final boolean o;
    private int p;

    public AttachmentMediaView(Context context, boolean z) {
        super(context);
        this.n = s();
        this.o = z;
    }

    public AttachmentMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.editableMediaViewStyle);
    }

    public AttachmentMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = s();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.AttachmentMediaView, i, 0);
        this.o = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    private ViewGroup s() {
        LayoutInflater.from(getContext()).inflate(2130968710, this);
        return (ViewGroup) findViewById(2131952242);
    }

    private void b(MediaAttachment mediaAttachment, ComposerType composerType) {
        boolean z = true;
        EditableMedia a = mediaAttachment.a(3);
        if (a != null) {
            setOnClickListener(new a(this, a));
            View dismissView = getDismissView();
            if (dismissView != null) {
                dismissView.setOnClickListener(new b(this));
            }
            dismissView = this.n.findViewById(2131952244);
            dismissView.setVisibility(8);
            View findViewById = this.n.findViewById(2131952243);
            findViewById.setVisibility(8);
            if (this.o && mediaAttachment.a == 0) {
                MediaType g = a.g();
                if (g != MediaType.c) {
                    dismissView.setVisibility(0);
                    dismissView.setOnClickListener(new c(this, a));
                }
                if (g == MediaType.b) {
                    if (buv.a(composerType == ComposerType.c)) {
                        findViewById.setVisibility(0);
                        findViewById.setOnClickListener(new d(this, a));
                    }
                }
            }
            if (!(this.o && PreferenceManager.getDefaultSharedPreferences(getContext()).getBoolean("compose_alt_text", false))) {
                z = false;
            }
            Button button = (Button) this.n.findViewById(2131952245);
            if (z && mediaAttachment.a == 0 && a.g() == MediaType.b) {
                button.setVisibility(0);
                button.setOnClickListener(new e(this, a));
                return;
            }
            button.setVisibility(8);
        }
    }

    public void setOnAttachmentActionListener(f fVar) {
        this.m = fVar;
    }

    public void setMediaAttachment(MediaAttachment mediaAttachment) {
        a(mediaAttachment, null);
    }

    public void a(MediaAttachment mediaAttachment, ComposerType composerType) {
        if (mediaAttachment == null) {
            a(null, true);
            this.k = null;
            this.l = false;
            return;
        }
        b(mediaAttachment, composerType);
        Uri uri = this.i;
        this.i = mediaAttachment.a();
        boolean z = uri == null || !uri.equals(this.i);
        if (z) {
            this.j = false;
            this.k = null;
        }
        switch (mediaAttachment.a) {
            case Util.TYPE_DASH /*0*/:
                a((EditableMedia) e.a(mediaAttachment.a(2)), z);
            case Util.TYPE_OTHER /*3*/:
                EditableMedia a = mediaAttachment.a(1);
                if (a != null) {
                    b(a, z);
                }
            default:
        }
    }

    public void a(ImageResponse imageResponse, Drawable drawable) {
        MediaFile e = ((a) imageResponse.e()).e();
        if (e == null || !e.d.equals(this.k)) {
            super.a(imageResponse, drawable);
            return;
        }
        ImageView imageView = getImageView();
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
            this.l = true;
        }
    }

    public void aG_() {
        if (this.j) {
            super.aG_();
        } else {
            requestLayout();
        }
        t();
    }

    public Uri getAttachmentMediaKey() {
        return this.i;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.j = true;
        super.onLayout(z, i, i2, i3, i4);
    }

    protected boolean a(a aVar) {
        MediaFile e = aVar.e();
        if (e == null || !e.d.equals(this.k)) {
            return super.a(aVar);
        }
        return this.l;
    }

    public void setPhotoNumber(int i) {
        CharSequence string;
        this.p = i;
        aJ_();
        Context context = getContext();
        View dismissView = getDismissView();
        if (dismissView != null) {
            if (i >= 1) {
                string = context.getString(2131362285, new Object[]{Integer.valueOf(i)});
            } else {
                string = context.getString(2131361988);
            }
            dismissView.setContentDescription(string);
        }
        dismissView = this.n.findViewById(2131952243);
        if (i >= 1) {
            string = context.getString(2131362297, new Object[]{Integer.valueOf(i)});
        } else {
            string = context.getString(2131362296);
        }
        dismissView.setContentDescription(string);
        dismissView = this.n.findViewById(2131952244);
        if (i >= 1) {
            string = context.getString(2131362288, new Object[]{Integer.valueOf(i)});
        } else {
            string = context.getString(2131362287);
        }
        dismissView.setContentDescription(string);
        t();
    }

    protected void aJ_() {
        if (this.p >= 1) {
            setContentDescription(getContext().getString(2131362291, new Object[]{Integer.valueOf(this.p)}));
            return;
        }
        super.aJ_();
    }

    private void t() {
        Button button = (Button) findViewById(2131952245);
        EditableMedia editableMedia = getEditableMedia();
        if (button != null && (editableMedia instanceof com.twitter.model.core.a)) {
            CharSequence a = ((com.twitter.model.core.a) editableMedia).a();
            if (a.length() == 0) {
                a = getContext().getString(2131362284);
            }
            button.setText(a, BufferType.SPANNABLE);
        }
    }

    private void b(EditableMedia editableMedia, boolean z) {
        this.k = editableMedia.k.d;
        getImageView().setVisibility(0);
        View dismissView = getDismissView();
        if (dismissView != null) {
            dismissView.setVisibility(0);
        }
        b(x.a(getContext(), editableMedia), z);
    }
}
