package com.twitter.android.profiles;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import com.twitter.media.request.b;
import com.twitter.media.request.c;
import com.twitter.media.ui.image.BackgroundImageView;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class HeaderImageView extends BackgroundImageView {
    private Set<Bitmap> a;
    private k h;

    public HeaderImageView(Context context) {
        this(context, null);
    }

    public HeaderImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HeaderImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new HashSet(2);
        setAspectRatio(3.0f);
    }

    public void a(k kVar, Set<Bitmap> set, int i) {
        setHeaderLoadedListener(kVar);
        setDefaultDrawable(new ColorDrawable(i));
        if (set != null) {
            this.a = set;
        }
    }

    public Set<Bitmap> getSavedBitmaps() {
        return this.a;
    }

    public void setHeaderLoadedListener(k kVar) {
        this.h = kVar;
    }

    public void setProfileUser(ao aoVar) {
        a((b) i.a(aoVar).a(a(aoVar)));
    }

    private c a(ao aoVar) {
        return new j(this, aoVar);
    }

    private void a(Bitmap bitmap) {
        if (!(bitmap == null || this.a.size() < 2 || this.a.contains(bitmap))) {
            this.a.clear();
        }
        this.a.add(bitmap);
    }
}
