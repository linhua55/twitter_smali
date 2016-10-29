package com.twitter.android.media.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.twitter.android.media.imageeditor.y;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.mx;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.MutableList;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaAttachmentsView extends LinearLayout implements y {
    static final /* synthetic */ boolean a;
    private final be b;
    private final ViewGroup c;
    private final LayoutTransition d;
    private final Animation e;
    private final Animation f;
    private final Map<Uri, MediaAttachment> g;
    private final int h;
    private EditableMedia i;
    private boolean j;
    private final int k;
    private final int l;
    private AttachmentMediaView m;
    private int n;
    private boolean o;
    private boolean p;
    private bc q;
    private EditableImage r;

    static {
        a = !MediaAttachmentsView.class.desiredAssertionStatus();
    }

    public MediaAttachmentsView(Context context) {
        this(context, null);
    }

    public MediaAttachmentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772043);
    }

    public MediaAttachmentsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new LinkedHashMap();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.MediaAttachmentsView, i, 0);
        this.k = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        this.l = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        obtainStyledAttributes.recycle();
        be beVar = new be(context);
        beVar.setHorizontalScrollBarEnabled(false);
        addView(beVar);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(2130968978, beVar, false);
        beVar.addView(viewGroup);
        this.b = beVar;
        this.c = viewGroup;
        this.h = (int) context.getResources().getDimension(2131689817);
        this.e = AnimationUtils.loadAnimation(context, 2131034147);
        this.f = AnimationUtils.loadAnimation(context, 2131034148);
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(2);
        layoutTransition.disableTransitionType(0);
        layoutTransition.disableTransitionType(3);
        this.d = layoutTransition;
        c();
    }

    public boolean a(List<MediaAttachment> list, boolean z) {
        List<MediaAttachment> a = MutableList.a(list.size());
        Set<Uri> hashSet = new HashSet(this.g.keySet());
        for (MediaAttachment mediaAttachment : list) {
            if (mediaAttachment.equals(this.g.get(mediaAttachment.a()))) {
                if (mediaAttachment.b(3)) {
                    AttachmentMediaView a2 = a(mediaAttachment.a());
                    if (a2 != null) {
                        a2.b();
                    }
                }
            } else if (mediaAttachment.d().d == 0) {
                a.add(mediaAttachment);
            }
            hashSet.remove(mediaAttachment.a());
        }
        if (hashSet.isEmpty() && a.isEmpty()) {
            return false;
        }
        if (a.size() + hashSet.size() > 1) {
            a();
            this.g.clear();
            hashSet.clear();
            z = false;
        } else {
            list = a;
        }
        for (MediaAttachment mediaAttachment2 : r9) {
            switch (mediaAttachment2.a) {
                case mx.View_android_theme /*0*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    a(mediaAttachment2, z);
                    break;
                default:
                    hashSet.add(mediaAttachment2.a());
                    break;
            }
            this.g.put(mediaAttachment2.a(), mediaAttachment2);
        }
        for (Uri uri : hashSet) {
            this.g.remove(uri);
            a(uri, z);
        }
        f();
        return true;
    }

    private void a(MediaAttachment mediaAttachment, boolean z) {
        EditableMedia a = mediaAttachment.a(3);
        if (a != null) {
            AttachmentMediaView a2 = a(mediaAttachment.a());
            if (a2 == null) {
                a2 = new AttachmentMediaView(getContext(), true);
                a2.setTag(2131951678, a.d());
                a2.setOnAttachmentActionListener(new bb(this, null));
                a(a2);
            } else {
                a2.j();
            }
            a(a2, true);
            a2.setAspectRatio(a.bm_());
            a2.setMediaAttachment(mediaAttachment);
            if (mediaAttachment.a == 0) {
                this.i = a;
                if (a2 != this.m) {
                    return;
                }
                if (!z || a2.d()) {
                    a2.clearAnimation();
                } else {
                    a2.setOnImageLoadedListener(new av(this));
                }
            }
        }
    }

    private void f() {
        int i = 1;
        Set<Uri> keySet = this.g.keySet();
        if (keySet.size() <= 1) {
            i = 0;
        }
        int i2 = i;
        for (Uri a : keySet) {
            AttachmentMediaView a2 = a(a);
            if (a2 != null) {
                a2.setPhotoNumber(i2);
                i = i2 + 1;
            } else {
                i = i2;
            }
            i2 = i;
        }
    }

    public AttachmentMediaView a(Uri uri) {
        if (uri != null) {
            if (this.m != null && uri.equals((Uri) this.m.getTag(2131951678))) {
                return this.m;
            }
            for (int i = 0; i < this.c.getChildCount(); i++) {
                View childAt = this.c.getChildAt(i);
                if ((childAt instanceof AttachmentMediaView) && uri.equals((Uri) childAt.getTag(2131951678))) {
                    return (AttachmentMediaView) childAt;
                }
            }
        }
        return null;
    }

    private void a(Uri uri, boolean z) {
        View a = a(uri);
        if (a != null) {
            this.n--;
            if (z) {
                this.f.setAnimationListener(new aw(this, a));
                a.startAnimation(this.f);
                this.o = true;
            } else if (a == this.m) {
                a.setVisibility(4);
            } else {
                a(a);
            }
        }
    }

    public void a() {
        this.c.removeAllViews();
        if (this.m != null) {
            removeView(this.m);
            this.m = null;
        }
        this.n = 0;
    }

    public void setError(Uri uri) {
        AttachmentMediaView a = a(uri);
        if (a != null) {
            a.c();
        }
    }

    public int getMediaCount() {
        return this.n;
    }

    public void b() {
        if (this.o) {
            this.p = true;
            return;
        }
        if (this.m != null) {
            a(this.m);
        }
        setVisibility(4);
        this.p = false;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.i != null) {
            a(this.i);
            this.i = null;
        } else if (this.j) {
            this.b.a();
            this.j = false;
        }
    }

    public void c() {
        this.c.setLayoutTransition(this.d);
    }

    public void d() {
        this.c.setLayoutTransition(null);
    }

    public void setActionListener(bc bcVar) {
        this.q = bcVar;
    }

    public void e() {
        if (this.m != null) {
            this.m.aG_();
            return;
        }
        for (int i = 0; i < this.c.getChildCount(); i++) {
            ((AttachmentMediaView) this.c.getChildAt(i)).b();
        }
    }

    private void a(AttachmentMediaView attachmentMediaView) {
        if (this.n == 0) {
            attachmentMediaView.setId(2131951703);
            addView(attachmentMediaView, 0);
            this.m = attachmentMediaView;
        } else {
            if (this.n == 1) {
                if (a || this.m != null) {
                    AttachmentMediaView attachmentMediaView2 = this.m;
                    this.m = null;
                    a(attachmentMediaView2, true);
                    removeView(attachmentMediaView2);
                    attachmentMediaView2.setId(0);
                    this.c.addView(attachmentMediaView2, 0);
                } else {
                    throw new AssertionError();
                }
            }
            attachmentMediaView.setId(0);
            this.c.addView(attachmentMediaView, this.c.getChildCount());
        }
        this.n++;
    }

    void a(AttachmentMediaView attachmentMediaView, boolean z) {
        LayoutParams layoutParams;
        int i = -2;
        if (z) {
            int i2;
            if (attachmentMediaView != this.m) {
                i2 = this.h;
                attachmentMediaView.setTag(2131951629, Float.valueOf(attachmentMediaView.getMaxAspectRatio()));
                if (getMeasuredWidth() > 0) {
                    attachmentMediaView.setMaxAspectRatio(((float) (getMeasuredWidth() - (this.l * 2))) / ((float) i2));
                } else {
                    attachmentMediaView.getViewTreeObserver().addOnGlobalLayoutListener(new ay(this, this.l, attachmentMediaView, i2));
                }
            } else if (attachmentMediaView.getTag(2131951629) != null) {
                attachmentMediaView.setMaxAspectRatio(((Float) attachmentMediaView.getTag(2131951629)).floatValue());
                i2 = -2;
                i = -1;
            } else {
                i2 = -2;
                i = -1;
            }
            layoutParams = new LinearLayout.LayoutParams(i, i2);
        } else {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) attachmentMediaView.getLayoutParams();
        }
        if (attachmentMediaView == this.m) {
            layoutParams.leftMargin = this.l;
            layoutParams.rightMargin = this.l;
        } else {
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = this.k;
        }
        attachmentMediaView.setLayoutParams(layoutParams);
    }

    private void a(View view) {
        if (view == this.m) {
            removeView(view);
            this.m = null;
            return;
        }
        this.c.removeView(view);
        LayoutTransition layoutTransition = this.c.getLayoutTransition();
        if (layoutTransition != null) {
            if (getMediaCount() == 1) {
                layoutTransition.addTransitionListener(new az(this, this.c, layoutTransition));
            } else {
                layoutTransition.addTransitionListener(new ba(this, this.b, layoutTransition));
            }
        } else if (getMediaCount() == 1) {
            View childAt = this.c.getChildAt(0);
            this.c.removeView(childAt);
            addView(childAt, 0);
            this.m = (AttachmentMediaView) childAt;
            a((AttachmentMediaView) childAt, false);
        } else {
            this.j = true;
        }
    }

    public void a(EditableMedia editableMedia) {
        for (int i = 0; i < this.c.getChildCount(); i++) {
            AttachmentMediaView attachmentMediaView = (AttachmentMediaView) this.c.getChildAt(i);
            EditableMedia editableMedia2 = attachmentMediaView.getEditableMedia();
            if (editableMedia2 != null && editableMedia2.d().equals(editableMedia.d())) {
                this.b.scrollTo(attachmentMediaView.getLeft(), 0);
                if (i != this.c.getChildCount() - 1) {
                    this.b.a();
                }
            }
        }
    }

    public j<EditableMedia> a(int i) {
        return ObservablePromise.a(this.r.c());
    }

    public int getCount() {
        return 1;
    }

    public int getInitialPosition() {
        return 0;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.r;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.r = savedState.a;
    }

    public void setSelectedImage(EditableImage editableImage) {
        this.r = editableImage;
    }

    public EditableImage getSelectedImage() {
        return this.r;
    }
}
