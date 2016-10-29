package com.twitter.android.media.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap.Config;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.media.filters.Filters;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.util.ui.r;
import defpackage.cff;

/* compiled from: Twttr */
public class FilterFilmstripView extends HorizontalScrollView {
    private final int a;
    private final String[] b;
    private final int[] c;
    private final LinearLayout d;
    private final SparseArray<MediaImageView> e;
    private int f;
    private z g;
    private final int[] h;
    private View i;
    private boolean j;
    private boolean k;
    private Filters l;
    private String m;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public final int a;
        public final float[] b;

        static {
            CREATOR = new ab();
        }

        SavedState(Parcelable parcelable, float[] fArr, int i) {
            super(parcelable);
            this.b = fArr;
            this.a = i;
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.createFloatArray();
            this.a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloatArray(this.b);
            parcel.writeInt(this.a);
        }
    }

    public FilterFilmstripView(Context context) {
        this(context, null);
    }

    public FilterFilmstripView(Context context, AttributeSet attributeSet) {
        int[] intArray;
        super(context, attributeSet);
        this.f = 0;
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.FilterFilmstripView);
        this.a = obtainStyledAttributes.getResourceId(4, 2130968825);
        int resourceId = obtainStyledAttributes.getResourceId(1, 0);
        this.b = resourceId != 0 ? resources.getStringArray(resourceId) : null;
        resourceId = obtainStyledAttributes.getResourceId(2, 0);
        if (resourceId != 0) {
            intArray = resources.getIntArray(resourceId);
        } else {
            intArray = null;
        }
        this.c = intArray;
        resourceId = obtainStyledAttributes.getResourceId(3, 0);
        if (resourceId != 0) {
            intArray = resources.getIntArray(resourceId);
        } else {
            intArray = null;
        }
        this.h = intArray;
        resourceId = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        setHorizontalScrollBarEnabled(false);
        this.d = new LinearLayout(context);
        this.d.setOrientation(0);
        addView(this.d, new LayoutParams(-2, -2, 17));
        this.d.setPadding(resourceId, 0, resourceId, 0);
        if (this.b == null || this.c == null) {
            throw new IllegalStateException("Must declare filter names and ids in xml");
        }
        this.e = new SparseArray();
        int i = 0;
        while (i < this.c.length) {
            int i2 = this.c[i];
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(this.a, null);
            linearLayout.setContentDescription(this.b[i]);
            ((TextView) linearLayout.findViewById(2131952476)).setText(this.b[i]);
            SeekBar seekBar = (SeekBar) linearLayout.findViewById(2131952477);
            seekBar.setEnabled(false);
            seekBar.setProgress(this.h != null ? this.h[i] : 80);
            seekBar.setOnSeekBarChangeListener(new o(this, i2, seekBar));
            seekBar.setOnTouchListener(new r(this));
            MediaImageView mediaImageView = (MediaImageView) linearLayout.findViewById(2131952475);
            ((RichImageView) mediaImageView.getImageView()).setOverlayVisible(false);
            mediaImageView.setTag(new aa(seekBar, i2, linearLayout));
            mediaImageView.setOnClickListener(new s(this, i2));
            this.d.addView(linearLayout, new ViewGroup.LayoutParams(-2, -1));
            mediaImageView.setId(r.a());
            this.e.put(i2, mediaImageView);
            i++;
        }
    }

    public void a(Filters filters, String str, int i) {
        a(filters, str, i, true);
    }

    public void a(Filters filters, String str, int i, boolean z) {
        this.l = filters;
        this.m = str;
        SparseArray sparseArray = this.e;
        for (int i2 = 0; i2 < this.c.length; i2++) {
            int i3 = this.c[i2];
            MediaImageView mediaImageView = (MediaImageView) sparseArray.get(i3);
            aa aaVar = (aa) mediaImageView.getTag();
            b a = a.a(str).a(new cff(getContext(), aaVar.b, false, 1.0f, filters)).a(Config.RGB_565).a(i);
            if (i3 == 0) {
                a.a(new t(this, sparseArray));
            } else {
                mediaImageView.setAlpha(0.3f);
                a.a(new u(this, mediaImageView));
            }
            if (!mediaImageView.a(a) && mediaImageView.g()) {
                mediaImageView.setAlpha(1.0f);
            }
            aaVar.a.setEnabled(true);
            if (z) {
                int i4;
                SeekBar seekBar = aaVar.a;
                if (this.h != null) {
                    i4 = this.h[i2];
                } else {
                    i4 = 80;
                }
                seekBar.setProgress(i4);
            }
        }
        ((RichImageView) ((MediaImageView) sparseArray.get(this.f)).getImageView()).setOverlayVisible(true);
    }

    public void setFilterListener(z zVar) {
        this.g = zVar;
    }

    public int getSelectedFilter() {
        return this.f;
    }

    public float getIntensity() {
        aa aaVar = (aa) ((MediaImageView) this.e.get(this.f)).getTag();
        return ((float) aaVar.a.getProgress()) / ((float) aaVar.a.getMax());
    }

    public void setSelectedFilter(int i) {
        if (i != this.f) {
            MediaImageView mediaImageView = (MediaImageView) this.e.get(i);
            MediaImageView mediaImageView2 = (MediaImageView) this.e.get(this.f);
            ((aa) mediaImageView2.getTag()).a.setVisibility(8);
            ((RichImageView) mediaImageView2.getImageView()).setOverlayVisible(false);
            ((RichImageView) mediaImageView.getImageView()).setOverlayVisible(true);
            this.f = i;
            if (this.g != null) {
                this.g.a(this);
            }
        }
    }

    public void setIntensity(float f) {
        a(getSelectedFilter(), f);
    }

    public void setRotation(int i) {
        a(this.l, this.m, i, false);
    }

    public MediaImageView getActivePreview() {
        return (MediaImageView) this.e.get(this.f);
    }

    public void a() {
        View imageView = new ImageView(getContext());
        imageView.setImageResource(2130840215);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2131034200);
        MediaImageView mediaImageView = (MediaImageView) this.e.get(this.f);
        loadAnimation.setAnimationListener(new v(this, mediaImageView, imageView));
        loadAnimation.setInterpolator(new OvershootInterpolator());
        mediaImageView.addView(imageView);
        imageView.startAnimation(loadAnimation);
    }

    public boolean a(boolean z, boolean z2) {
        int i = 0;
        this.k = z;
        if (!z2) {
            if (!z) {
                i = 8;
            }
            setVisibility(i);
            return true;
        } else if (this.j) {
            return false;
        } else {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator ofFloat;
            ObjectAnimator ofFloat2;
            if (z) {
                setVisibility(0);
                ofFloat = ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, new float[]{(float) getMeasuredHeight(), 0.0f});
                ofFloat2 = ObjectAnimator.ofFloat(this, View.ALPHA, new float[]{0.0f, 1.0f});
                animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            } else {
                ofFloat = ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, new float[]{0.0f, (float) getMeasuredHeight()});
                ofFloat2 = ObjectAnimator.ofFloat(this, View.ALPHA, new float[]{1.0f, 0.0f});
                animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
                animatorSet.addListener(new w(this));
            }
            animatorSet.addListener(new x(this));
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet.setDuration(300);
            animatorSet.start();
            this.j = true;
            return true;
        }
    }

    public boolean b() {
        return this.k;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.i == null) {
            return super.onTouchEvent(motionEvent);
        }
        View view = (View) this.e.get(getSelectedFilter());
        View view2 = ((aa) view.getTag()).c;
        int x = ((int) motionEvent.getX()) - (r.a(view2, this) - getScrollX());
        if (x < view.getMeasuredWidth() || x > view2.getMeasuredWidth()) {
            a(this.i, false);
        }
        return false;
    }

    public void a(boolean z) {
        int left = ((aa) ((MediaImageView) this.e.get(getSelectedFilter())).getTag()).c.getLeft() - getResources().getDimensionPixelOffset(2131689949);
        if (z) {
            smoothScrollTo(left, 0);
        } else {
            scrollTo(left, 0);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.k = getVisibility() == 0;
    }

    private void a(int i, float f) {
        aa aaVar = (aa) ((MediaImageView) this.e.get(i)).getTag();
        aaVar.a.setProgress(Math.round(((float) aaVar.a.getMax()) * f));
        if (this.g != null && i == this.f) {
            this.g.a(this);
        }
    }

    private void a(View view, boolean z) {
        int left;
        OnPreDrawListener yVar;
        Resources resources = getResources();
        int scrollX = getScrollX();
        View view2 = (View) view.getParent();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131689951);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131689950);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131689950) - view2.getPaddingRight();
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        if (z) {
            marginLayoutParams.width = 0;
            marginLayoutParams.leftMargin = 0;
            marginLayoutParams.rightMargin = 0;
            view.setVisibility(4);
            left = view2.getLeft() - resources.getDimensionPixelOffset(2131689948);
        } else {
            left = view2.getLeft() - resources.getDimensionPixelOffset(2131689949);
        }
        int i = left - scrollX;
        View view3 = this.d;
        boolean z2 = getScrollX() == view3.getMeasuredWidth() - getMeasuredWidth();
        if (z2) {
            yVar = new y(this, view3);
        } else {
            yVar = null;
        }
        if (yVar != null) {
            getViewTreeObserver().addOnPreDrawListener(yVar);
        }
        Animation pVar = new p(this, z, marginLayoutParams, dimensionPixelSize, dimensionPixelSize2, dimensionPixelOffset, left, z2, scrollX, i, view);
        pVar.setAnimationListener(new q(this, view, z, yVar));
        pVar.setDuration(160);
        view.startAnimation(pVar);
        if (!z) {
            view = null;
        }
        this.i = view;
    }

    public Parcelable onSaveInstanceState() {
        float[] fArr = new float[this.c.length];
        for (int i = 0; i < this.c.length; i++) {
            aa aaVar = (aa) ((View) this.e.get(this.c[i])).getTag();
            fArr[i] = ((float) aaVar.a.getProgress()) / ((float) aaVar.a.getMax());
        }
        return new SavedState(super.onSaveInstanceState(), fArr, this.f);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        for (int i = 0; i < this.c.length; i++) {
            a(this.c[i], savedState.b[i]);
        }
        this.f = savedState.a;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.d.getMeasuredWidth() >= getMeasuredWidth()) {
            LayoutParams layoutParams = (LayoutParams) this.d.getLayoutParams();
            layoutParams.gravity &= -2;
            return;
        }
        ((LayoutParams) this.d.getLayoutParams()).gravity = 1;
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        if (getId() != -1) {
            Parcelable parcelable = (Parcelable) sparseArray.get(getId());
            if (parcelable != null) {
                onRestoreInstanceState(parcelable);
            }
        }
    }

    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        int id = getId();
        if (id != -1) {
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (onSaveInstanceState != null) {
                sparseArray.put(id, onSaveInstanceState);
            }
        }
    }
}
