package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import bct;
import bcy;
import bdc;
import bdd;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.fresco.FrescoMediaImageView;
import com.twitter.library.media.util.ac;
import com.twitter.library.media.util.o;
import com.twitter.library.widget.TightTextView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.FixedSizeImageView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.b;
import com.twitter.media.ui.image.config.c;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.f;
import com.twitter.media.ui.image.g;
import com.twitter.media.ui.image.h;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.Tweet;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.bcx;
import defpackage.buv;
import defpackage.cgl;
import defpackage.cpb;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TweetMediaView extends ViewGroup implements OnClickListener, f, g, h {
    private ImageView A;
    private boolean B;
    private boolean C;
    private boolean D;
    private Tweet E;
    private String F;
    @DrawableRes
    private final int a;
    @DrawableRes
    private final int b;
    protected List<ab> c;
    protected BaseMediaImageView[] d;
    protected aa e;
    @DrawableRes
    private final int f;
    @DrawableRes
    private final int g;
    @DrawableRes
    private final int h;
    @DrawableRes
    private final int i;
    private final Drawable j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final boolean r;
    private final boolean s;
    private int t;
    private TightTextView u;
    private boolean v;
    private int w;
    private int x;
    private z y;
    private boolean z;

    public TweetMediaView(Context context) {
        this(context, null);
    }

    public TweetMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.tweetMediaViewStyle);
    }

    public TweetMediaView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, false, false);
    }

    public TweetMediaView(Context context, AttributeSet attributeSet, int i, boolean z, boolean z2) {
        super(context, attributeSet, i);
        this.c = n.g();
        this.B = true;
        this.C = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TweetMediaView, i, 0);
        this.t = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetMediaView_dividerSize, 0);
        this.o = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetMediaView_cornerRadiusSize, 0);
        this.k = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetMediaView_cardBadgeSpacing, 0);
        this.p = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_defaultDrawable, 0);
        this.q = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_overlayDrawable, 0);
        this.j = obtainStyledAttributes.getDrawable(bdd.TweetMediaView_playerOverlay);
        this.a = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_audioBadgeDrawable, 0);
        this.b = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_gifBadgeDrawable, 0);
        this.f = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_snapreelBadgeDrawable, 0);
        this.g = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_vineBadgeDrawable, 0);
        this.i = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_stickersBadgeDrawable, 0);
        this.h = obtainStyledAttributes.getResourceId(bdd.TweetMediaView_momentsBadgeDrawable, 0);
        this.l = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetMediaView_mediaBorderSize, 0);
        this.m = obtainStyledAttributes.getColor(bdd.TweetMediaView_mediaBorderColor, 0);
        this.n = obtainStyledAttributes.getColor(bdd.TweetMediaView_multipleMediaBorderColor, 0);
        obtainStyledAttributes.recycle();
        this.r = z;
        this.s = z2;
    }

    protected void onMeasure(int i, int i2) {
        Size a;
        if (this.w > 0) {
            a = a(i, i2);
        } else {
            a = Size.b;
        }
        setMeasuredDimension(a.a(), a.b());
        if (this.A != null) {
            a(this.A, a.a(), a.b());
        }
        if (this.u != null) {
            measureChild(this.u, i, i2);
        }
    }

    protected Size a(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int i3 = (size - this.t) / 2;
        int i4 = (size2 - this.t) / 2;
        switch (this.w) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(0, size, size2);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a(0, i3, size2);
                a(1, i3, size2);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a(0, i3, size2);
                a(1, i3, i4);
                a(2, i3, i4);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a(0, i3, i4);
                a(1, i3, i4);
                a(2, i3, i4);
                a(3, i3, i4);
                break;
        }
        return Size.a(size, size2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (this.w > 0) {
            a();
        }
        if (this.A != null) {
            a(this.A, 0, 0, i5, i6);
        }
        if (this.u != null) {
            a(this.u, this.k, (i6 - this.u.getMeasuredHeight()) - this.k, this.u.getMeasuredWidth() + this.k, i6 - this.k);
        }
    }

    protected void a() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i = (measuredWidth - this.t) / 2;
        int i2 = (measuredHeight - this.t) / 2;
        int i3 = i + this.t;
        switch (this.w) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(this.d[0], 0, 0, 0, measuredWidth, measuredHeight);
            case WireMessage.WIRE_CONTROL /*2*/:
                a(this.d[0], 0, 0, 0, i, measuredHeight);
                a(this.d[1], 1, i + this.t, 0, measuredWidth, measuredHeight);
            case WireMessage.WIRE_AUTH /*3*/:
                a(this.d[0], 0, 0, 0, i, measuredHeight);
                a(this.d[1], 1, i3, 0, measuredWidth, i2);
                a(this.d[2], 2, i3, this.t + i2, measuredWidth, measuredHeight);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a(this.d[0], 0, 0, 0, i, i2);
                a(this.d[2], 2, 0, i2 + this.t, i, measuredHeight);
                a(this.d[1], 1, i3, 0, measuredWidth, i2);
                a(this.d[3], 3, i3, this.t + i2, measuredWidth, measuredHeight);
            default:
        }
    }

    protected void a(BaseMediaImageView baseMediaImageView, int i, int i2, int i3, int i4, int i5) {
        Object obj = 1;
        if (baseMediaImageView.getLeft() != i2 || baseMediaImageView.getTop() != i3 || baseMediaImageView.getRight() != i4 || baseMediaImageView.getBottom() != i5) {
            if (baseMediaImageView instanceof b) {
                c imageConfigurator = ((b) baseMediaImageView).getImageConfigurator();
                imageConfigurator.a(this.w > 1 ? this.n : this.m, (float) this.l);
                if (this.o > 0) {
                    Object obj2;
                    Object obj3;
                    Object obj4;
                    float f;
                    float f2;
                    if (i3 == 0) {
                        obj2 = 1;
                    } else {
                        obj2 = null;
                    }
                    if (i2 == 0) {
                        obj3 = 1;
                    } else {
                        obj3 = null;
                    }
                    if (i4 == getMeasuredWidth()) {
                        obj4 = 1;
                    } else {
                        obj4 = null;
                    }
                    if (i5 != getMeasuredHeight()) {
                        obj = null;
                    }
                    if (this.z) {
                        f = (float) this.o;
                    } else {
                        f = 0.0f;
                    }
                    if (obj2 == null || obj3 == null) {
                        f2 = 0.0f;
                    } else {
                        f2 = f;
                    }
                    float f3 = (obj2 == null || obj4 == null) ? 0.0f : f;
                    float f4 = (obj == null || obj4 == null) ? 0.0f : f;
                    float f5 = (obj == null || obj3 == null) ? 0.0f : f;
                    imageConfigurator.a(d.a(f2, f3, f4, f5));
                }
            }
            baseMediaImageView.layout(i2, i3, i4, i5);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.x = 0;
    }

    public void aG_() {
        if (this.x != this.w || this.D) {
            BaseMediaImageView[] baseMediaImageViewArr = this.d;
            if (baseMediaImageViewArr != null) {
                for (int i = 0; i < this.w; i++) {
                    baseMediaImageViewArr[i].aG_();
                }
            }
        }
    }

    public void f() {
        BaseMediaImageView[] baseMediaImageViewArr = this.d;
        if (baseMediaImageViewArr != null) {
            int i = this.w;
            for (int i2 = 0; i2 < i; i2++) {
                baseMediaImageViewArr[i2].f();
            }
        }
        this.x = 0;
    }

    public void setShowMediaBadge(boolean z) {
        this.B = z;
    }

    public void setShowPlayerOverlay(boolean z) {
        this.C = z;
    }

    public void setFromMemoryOnly(boolean z) {
        if (this.v != z) {
            this.v = z;
            BaseMediaImageView[] baseMediaImageViewArr = this.d;
            if (baseMediaImageViewArr != null) {
                int i = this.w;
                for (int i2 = 0; i2 < i; i2++) {
                    baseMediaImageViewArr[i2].setFromMemoryOnly(z);
                }
            }
        }
    }

    public void setAllowLowResPreview(boolean z) {
        this.D = z;
    }

    public void d() {
        this.c = n.g();
        BaseMediaImageView[] baseMediaImageViewArr = this.d;
        if (baseMediaImageViewArr != null) {
            int i = this.w;
            for (int i2 = 0; i2 < i; i2++) {
                BaseMediaImageView baseMediaImageView = baseMediaImageViewArr[i2];
                baseMediaImageView.setVisibility(8);
                baseMediaImageView.a(null);
                baseMediaImageView.setTag(bcx.tweet_media_item, null);
            }
            this.w = 0;
            this.x = 0;
        }
        setBadgeText(null);
        setPlayerOverlay(null);
    }

    public void setMediaDividerSize(int i) {
        this.t = i;
    }

    public List<ab> getMediaItems() {
        return this.c;
    }

    public boolean g() {
        return !this.c.isEmpty();
    }

    public int getImageCount() {
        return this.w;
    }

    public int getMediaCount() {
        return this.w;
    }

    public void onClick(View view) {
        if (this.e != null) {
            ab abVar = (ab) view.getTag(bcx.tweet_media_item);
            if (abVar == null) {
                return;
            }
            if (abVar.a instanceof MediaEntity) {
                this.e.a(this, (MediaEntity) abVar.a);
            } else if (abVar.a instanceof cgl) {
                this.e.a(this, (cgl) abVar.a);
            } else if (abVar.a instanceof EditableMedia) {
                this.e.a(this, (EditableMedia) abVar.a);
            }
        }
    }

    public void setOnMediaClickListener(aa aaVar) {
        setClickable(aaVar != null);
        this.e = aaVar;
    }

    public void setOnImageLoadedListener(z zVar) {
        this.y = zVar;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return isClickable() && super.dispatchTouchEvent(motionEvent);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void setMediaPlaceholder(int i) {
        Resources resources = getResources();
        BaseMediaImageView[] baseMediaImageViewArr = this.d;
        if (baseMediaImageViewArr != null) {
            int i2 = this.w;
            for (int i3 = 0; i3 < i2; i3++) {
                baseMediaImageViewArr[i3].setDefaultDrawable(resources.getDrawable(i));
            }
        }
    }

    public void c(boolean z) {
        if (this.z != z) {
            this.z = z;
        }
    }

    public void setTweet(Tweet tweet) {
        this.E = tweet;
    }

    public void setCard(cgl cgl) {
        setMediaItems(ab.a(cgl));
    }

    public void setEditableMedia(List<EditableMedia> list) {
        setMediaItems(ab.a(list));
    }

    public void a(Iterable<MediaEntity> iterable, String str) {
        this.F = str;
        setMediaItems(ab.a(iterable != null ? cpb.a((Iterable) iterable, Size.b) : n.g(), this.D));
    }

    private void setMediaItems(List<ab> list) {
        if (list == null || list.isEmpty()) {
            d();
        } else if (this.c.equals(list)) {
            aG_();
        } else {
            ab abVar;
            a((List) list);
            this.c = n.a((List) list);
            Context context = getContext();
            int i = 0;
            for (ab abVar2 : list) {
                BaseMediaImageView baseMediaImageView = this.d[i];
                baseMediaImageView.setTag(bcx.tweet_media_item, abVar2);
                com.twitter.media.request.b a = abVar2.a(context);
                if (a != null) {
                    a.a((i) new y(this, abVar2, a));
                }
                baseMediaImageView.a(a);
                if (i >= this.d.length) {
                    break;
                }
                if (this.B) {
                    if (abVar2.a instanceof MediaEntity) {
                        MediaEntity mediaEntity = (MediaEntity) abVar2.a;
                        if (!cpb.d(mediaEntity)) {
                            String b = be.b(mediaEntity);
                            if (mediaEntity.m.equals(Type.ANIMATED_GIF)) {
                                if (ac.a(this.E) || ac.a(mediaEntity, this.F)) {
                                    a(this.f, baseMediaImageView);
                                } else {
                                    a(this.b, baseMediaImageView);
                                }
                            } else if (b != null) {
                                setBadgeText(b);
                            } else if (!buv.b() || CollectionUtils.b(mediaEntity.r)) {
                                a(0, baseMediaImageView);
                            } else {
                                a(this.i, baseMediaImageView);
                            }
                        }
                    } else if (abVar2.a instanceof cgl) {
                        cgl cgl = (cgl) abVar2.a;
                        if (cgl.v()) {
                            a(this.g, baseMediaImageView);
                        } else if (cgl.u()) {
                            a(this.a, baseMediaImageView);
                        } else if (cgl.w()) {
                            a(this.h, baseMediaImageView);
                        } else {
                            a(0, baseMediaImageView);
                        }
                    }
                }
                i++;
            }
            if (list.size() == 1) {
                abVar2 = (ab) list.get(0);
                if (this.C && abVar2.b()) {
                    setPlayerOverlay(this.j);
                }
            }
        }
    }

    private void setPlayerOverlay(Drawable drawable) {
        if (drawable != null) {
            if (this.A == null) {
                this.A = new FixedSizeImageView(getContext());
                this.A.setClickable(false);
                this.A.setScaleType(ScaleType.CENTER);
                addView(this.A);
            }
            this.A.setVisibility(0);
            this.A.setImageDrawable(drawable);
            this.A.bringToFront();
        } else if (this.A != null) {
            this.A.setVisibility(4);
            this.A.setImageDrawable(null);
        }
    }

    public void a(BaseMediaImageView baseMediaImageView, ImageResponse imageResponse) {
        boolean d = imageResponse.d();
        if (d) {
            this.x++;
        }
        if (this.y != null) {
            ab abVar = (ab) baseMediaImageView.getTag(bcx.tweet_media_item);
            if (abVar != null) {
                if (abVar.a instanceof MediaEntity) {
                    this.y.a(this, (MediaEntity) abVar.a, d);
                } else if (abVar.a instanceof EditableMedia) {
                    this.y.a(this, (EditableMedia) abVar.a, d);
                } else if (abVar.a instanceof cgl) {
                    this.y.a(this, (cgl) abVar.a, d);
                }
            }
        }
    }

    public com.twitter.util.math.c a(BaseMediaImageView baseMediaImageView) {
        ab abVar = (ab) baseMediaImageView.getTag(bcx.tweet_media_item);
        if (abVar.a instanceof MediaEntity) {
            MediaEntity mediaEntity = (MediaEntity) abVar.a;
            List list = mediaEntity.q;
            if (!list.isEmpty()) {
                return o.a(baseMediaImageView.getImageSize().e(), mediaEntity.n.e(), list);
            }
        } else if (abVar.a instanceof EditableImage) {
            return ((EditableImage) abVar.a).f;
        }
        return null;
    }

    protected void a(int i, int i2, int i3) {
        this.d[i].measure(MeasureSpec.makeMeasureSpec(i2, 1073741824), MeasureSpec.makeMeasureSpec(i3, 1073741824));
    }

    protected static void a(View view, int i, int i2) {
        if (view != null && view.getVisibility() != 8) {
            view.measure(MeasureSpec.makeMeasureSpec(i, 1073741824), MeasureSpec.makeMeasureSpec(i2, 1073741824));
        }
    }

    private void a(List<ab> list) {
        int min = Math.min(4, list.size());
        requestLayout();
        d();
        a(min, (List) list);
    }

    private void a(int i, List<ab> list) {
        this.w = i;
        BaseMediaImageView[] baseMediaImageViewArr = this.d;
        if (i != 0) {
            if (baseMediaImageViewArr == null) {
                baseMediaImageViewArr = new BaseMediaImageView[4];
                this.d = baseMediaImageViewArr;
            }
            BaseMediaImageView[] baseMediaImageViewArr2 = baseMediaImageViewArr;
            com.twitter.library.media.util.i a = com.twitter.library.media.util.i.a();
            Context context = getContext();
            Resources resources = getResources();
            for (int i2 = 0; i2 < i; i2++) {
                BaseMediaImageView baseMediaImageView = baseMediaImageViewArr2[i2];
                if (baseMediaImageViewArr2[i2] == null) {
                    View a2 = a.a(context, this.r, this.q, this.p);
                    LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
                    generateDefaultLayoutParams.width = -1;
                    generateDefaultLayoutParams.height = -1;
                    a2.setLayoutParams(generateDefaultLayoutParams);
                    a2.setOnClickListener(this);
                    a2.setCroppingRectangleProvider(this);
                    a2.setOnImageLoadedListener(this);
                    a2.setDefaultDrawable(resources.getDrawable(this.p));
                    a2.setScaleType(BaseMediaImageView.ScaleType.FILL);
                    a2.setImageType(this.s ? "tweet_media_full" : "tweet_media");
                    if (TextUtils.isEmpty(((ab) list.get(i2)).c())) {
                        a2.setContentDescription(resources.getString(bdc.tweet_media_image_description));
                    } else {
                        a2.setContentDescription(resources.getString(bdc.timeline_tweet_media_format, new Object[]{((ab) list.get(i2)).c()}));
                    }
                    baseMediaImageViewArr2[i2] = a2;
                    addView(a2, i2);
                    baseMediaImageView = a2;
                } else {
                    a(i2, 0, 0);
                    baseMediaImageView.layout(0, 0, 0, 0);
                }
                baseMediaImageView.setFromMemoryOnly(this.v);
                baseMediaImageView.setVisibility(0);
            }
        }
    }

    private static void a(View view, int i, int i2, int i3, int i4) {
        if (view != null && view.getVisibility() != 8) {
            view.layout(i, i2, i3, i4);
        }
    }

    private void a(int i, BaseMediaImageView baseMediaImageView) {
        if (baseMediaImageView instanceof MediaImageView) {
            ImageView imageView = ((MediaImageView) baseMediaImageView).getImageView();
            if (imageView instanceof RichImageView) {
                ((RichImageView) imageView).a(i, this.k);
            }
        } else if (baseMediaImageView instanceof FrescoMediaImageView) {
            ((FrescoMediaImageView) baseMediaImageView).a(i, this.k);
        }
    }

    public void setBadgeText(String str) {
        if (aj.b((CharSequence) str)) {
            TightTextView tightTextView = this.u;
            if (tightTextView == null) {
                tightTextView = (TightTextView) LayoutInflater.from(getContext()).inflate(bcy.media_text_badge, this, false);
                addView(tightTextView);
                this.u = tightTextView;
            }
            tightTextView.setText(str);
            tightTextView.setVisibility(0);
        } else if (this.u != null) {
            this.u.setVisibility(4);
        }
    }

    public void setBadgeText(@StringRes int i) {
        setBadgeText(getResources().getString(i));
    }

    public void h() {
        f();
    }

    public void i() {
        aG_();
    }

    public BaseMediaImageView a(MediaEntity mediaEntity) {
        for (BaseMediaImageView baseMediaImageView : this.d) {
            if (baseMediaImageView != null && (baseMediaImageView.getTag(bcx.tweet_media_item) instanceof ab)) {
                Object obj = ((ab) baseMediaImageView.getTag(bcx.tweet_media_item)).a;
                if ((obj instanceof MediaEntity) && ((MediaEntity) obj).c == mediaEntity.c) {
                    return baseMediaImageView;
                }
            }
        }
        return null;
    }
}
