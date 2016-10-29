package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import bcx;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.media.util.x;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableVideo;
import com.twitter.ui.widget.f;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class EditableMediaView extends MediaImageView {
    final Drawable a;
    private final View i;
    private final VideoDurationView j;
    private final View k;
    private final AnimatedGifView l;
    private EditableMedia m;
    private j n;

    public EditableMediaView(Context context) {
        this(context, null);
        p();
    }

    public EditableMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.editableMediaViewStyle);
    }

    public EditableMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, new RichImageView(context), false, ScaleType.b);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.EditableMediaView, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(bdd.EditableMediaView_layout, 0);
        this.a = obtainStyledAttributes.getDrawable(bdd.EditableMediaView_playerOverlay);
        int resourceId2 = s() ? obtainStyledAttributes.getResourceId(bdd.EditableMediaView_animatedGifViewLayout, 0) : 0;
        obtainStyledAttributes.recycle();
        if (resourceId != 0) {
            View inflate = inflate(context, resourceId, this);
            this.i = inflate.findViewById(bcx.gif_badge);
            this.j = (VideoDurationView) inflate.findViewById(bcx.video_duration);
            this.k = inflate.findViewById(bcx.dismiss);
        } else {
            this.i = null;
            this.j = null;
            this.k = null;
        }
        if (getDefaultDrawable() == null) {
            f fVar = new f(getContext(), getImageView());
            fVar.b(0);
            fVar.setAlpha(NalUnitUtil.EXTENDED_SAR);
            fVar.a(new int[]{getResources().getColor(bcu.twitter_blue)});
            setDefaultDrawable(fVar);
        }
        setErrorDrawableId(17170445);
        k();
        if (resourceId2 != 0) {
            this.l = (AnimatedGifView) inflate(context, resourceId2, null);
            this.l.setId(bcx.animated_gif_view);
            addView(this.l, 0);
            this.l.setListener(new p(this));
            return;
        }
        this.l = null;
    }

    public View getDismissView() {
        return this.k;
    }

    public boolean a(EditableMedia editableMedia) {
        boolean z = this.m == null || editableMedia == null || !this.m.d().equals(editableMedia.d());
        return a(editableMedia, z);
    }

    public void setAnimatedGifViewListener(j jVar) {
        this.n = jVar;
    }

    protected boolean a(EditableMedia editableMedia, boolean z) {
        this.m = editableMedia;
        if (this.k != null) {
            this.k.setVisibility(0);
        }
        if (this.j != null) {
            this.j.setVisibility(8);
        }
        RichImageView richImageView = (RichImageView) getImageView();
        if (this.l != null) {
            if (editableMedia instanceof EditableAnimatedGif) {
                setContentDescription(getResources().getString(bdc.attached_gif));
                if (this.i != null) {
                    this.i.setVisibility(0);
                }
                this.l.setSaveEnabled(true);
                this.l.setOnClickListener(null);
                this.l.setEditableAnimatedGif((EditableAnimatedGif) editableMedia);
                if (this.l.a()) {
                    this.l.setVisibility(8);
                } else {
                    this.l.setVisibility(0);
                }
                return true;
            }
            this.l.setVisibility(8);
            this.l.setEditableAnimatedGif(null);
        }
        if (this.i != null) {
            this.i.setVisibility(8);
        }
        richImageView.setVisibility(0);
        richImageView.setOverlayDrawable(null);
        if (editableMedia == null) {
            return b(null, true);
        }
        switch (r.a[editableMedia.k.f.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                setContentDescription(getResources().getString(bdc.attached_gif));
                if (this.i != null) {
                    this.i.setVisibility(0);
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                setContentDescription(getResources().getString(bdc.attached_video));
                if (this.j != null) {
                    int d;
                    if (editableMedia.k.f == MediaType.f) {
                        d = ((SegmentedVideoFile) editableMedia.k).d();
                    } else {
                        d = ((EditableVideo) editableMedia).l();
                    }
                    this.j.setDuration(d);
                    this.j.setVisibility(0);
                }
                richImageView.setOverlayDrawable(this.a);
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                aJ_();
                break;
        }
        return b(x.a(getContext(), editableMedia), z);
    }

    protected void aJ_() {
        setContentDescription(getResources().getString(bdc.attached_photo));
    }

    public void b() {
        a(this.m);
    }

    public boolean c() {
        if (this.k != null) {
            this.k.setVisibility(0);
        }
        return super.a(a.a(TtmlNode.ANONYMOUS_REGION_ID), true);
    }

    public EditableMedia getEditableMedia() {
        return this.m;
    }

    public boolean a(b bVar, boolean z) {
        throw new UnsupportedOperationException("Use setEditableMedia");
    }

    public boolean d() {
        return this.l != null && this.l.getVisibility() == 0;
    }

    protected boolean b(b bVar, boolean z) {
        return super.a(bVar, z);
    }

    private static boolean s() {
        return VERSION.SDK_INT >= 17 && d.a("animated_content_composer_enabled") && d.a("animated_content_composer_animation_enabled");
    }
}
