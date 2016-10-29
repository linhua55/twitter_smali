package com.twitter.android.av.watchmode.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.android.TweetActivity;
import com.twitter.android.av.af;
import com.twitter.android.av.aj;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.ui.widget.ax;
import com.twitter.util.al;

/* compiled from: Twttr */
public class TweetSummaryView extends LinearLayout implements OnClickListener {
    @VisibleForTesting
    final TextView a;
    @VisibleForTesting
    final TypefacesTextView b;
    @VisibleForTesting
    final TypefacesTextView c;
    @VisibleForTesting
    final TypefacesTextView d;
    @VisibleForTesting
    final EngagementActionBar e;
    @VisibleForTesting
    Drawable f;
    @VisibleForTesting
    int g;
    private final aj h;
    private af i;
    private final Resources j;
    private final c k;
    private Tweet l;
    private float m;

    public TweetSummaryView(Context context) {
        this(context, null);
    }

    public TweetSummaryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TweetSummaryView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, new aj(), new c());
    }

    @VisibleForTesting
    TweetSummaryView(Context context, AttributeSet attributeSet, int i, aj ajVar, c cVar) {
        super(context, attributeSet, i);
        this.f = null;
        this.m = 1.0f;
        setOrientation(1);
        inflate(context, 2130969537, this);
        this.a = (TextView) findViewById(2131953397);
        this.b = (TypefacesTextView) findViewById(2131953398);
        this.c = (TypefacesTextView) findViewById(2131953399);
        this.d = (TypefacesTextView) findViewById(2131953400);
        this.e = (EngagementActionBar) findViewById(2131951908);
        this.j = context.getResources();
        ax a = ax.a(context);
        this.b.setTypeface(a.a);
        this.c.setTypeface(a.a);
        this.d.setTypeface(a.a);
        this.h = ajVar;
        this.k = cVar;
        setOnClickListener(this);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        try {
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                this.f = drawable;
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        a(tweet, twitterScribeAssociation, getContext());
    }

    @VisibleForTesting
    void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, Context context) {
        this.g = 0;
        this.l = tweet;
        this.a.setText(tweet.B);
        this.b.setText("@" + tweet.v);
        this.c.setText(al.a(this.j, tweet.q));
        this.d.setText(this.k.a(tweet).e(true).a(true).a().a);
        this.e.setTweet(tweet);
        if (context instanceof FragmentActivity) {
            this.i = this.h.a(this.l, this.e, new h(twitterScribeAssociation, context, tweet));
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            this.i.a((Context) fragmentActivity);
            this.i.a(fragmentActivity);
            this.i.a(tweet);
        }
    }

    public void setExpandedFraction(float f) {
        this.m = f;
        a(f, this);
        requestLayout();
    }

    @VisibleForTesting
    static void a(float f, TweetSummaryView tweetSummaryView) {
        tweetSummaryView.setAlpha(Math.max((f - AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION) / 0.25f, 0.0f));
    }

    protected void onMeasure(int i, int i2) {
        if (this.g == 0) {
            super.onMeasure(i, i2);
            this.g = getMeasuredHeight();
        }
        if (1.0f == this.m || this.g == 0) {
            super.onMeasure(i, i2);
        } else {
            super.onMeasure(i, MeasureSpec.makeMeasureSpec(Math.round(((float) this.g) * this.m), C.ENCODING_PCM_32BIT));
        }
    }

    public void onClick(View view) {
        a(view, getContext());
    }

    @VisibleForTesting
    void a(View view, Context context) {
        if (view != this.e && this.l != null && (context instanceof Activity)) {
            context.startActivity(new Intent(context, TweetActivity.class).putExtra("tw", this.l));
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f.setState(getDrawableState());
        invalidate();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f.setBounds(0, 0, i, i2);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f.draw(canvas);
    }

    protected int getPreferredHeight() {
        return this.g;
    }
}
