package com.twitter.android.media.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.ScrollView;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
public class InlineComposerMediaScrollView extends ScrollView {
    au a;
    private final ViewConfiguration b;
    private float c;
    private int d;
    private boolean e;
    private AttachmentMediaView f;

    public InlineComposerMediaScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InlineComposerMediaScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = ViewConfiguration.get(context);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.c = motionEvent.getY();
            this.e = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 2) {
            return super.onTouchEvent(motionEvent);
        }
        float y = motionEvent.getY();
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (this.e || y - this.c <= ((float) this.b.getScaledTouchSlop()) || this.a == null) {
            return onTouchEvent;
        }
        this.a.a(this);
        return onTouchEvent;
    }

    public void setActionListener(au auVar) {
        this.a = auVar;
    }

    public AttachmentMediaView a(MediaAttachment mediaAttachment) {
        if (mediaAttachment == null) {
            this.f.a(null);
            this.f.setOnClickListener(null);
            return null;
        }
        EditableMedia a = mediaAttachment.a(3);
        if (a != null) {
            this.f.setAspectRatio(a.bm_());
            this.f.setMediaAttachment(mediaAttachment);
        }
        return this.f;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f = (AttachmentMediaView) getChildAt(0);
        a(null);
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.d = i2;
        this.e = true;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        scrollTo(0, (this.d + i4) - i2);
        super.onSizeChanged(i, i2, i3, i4);
    }
}
