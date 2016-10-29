package com.twitter.android.av.audio;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.twitter.android.av.AVBaseCardCanvasView;
import com.twitter.android.av.ExternalActionButton;
import com.twitter.android.av.am;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.media.manager.l;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.Audio;
import com.twitter.model.av.Partner;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import com.twitter.util.ui.h;
import com.twitter.util.ui.r;
import defpackage.bcx;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class AudioCardPlayerView extends AVBaseCardCanvasView<ExternalActionButton> {
    boolean f;
    private final View h;
    private final ImageView i;
    private final ImageView j;
    private final TextView k;
    private final TextView l;
    private final View m;
    private final l n;
    private l o;
    private float p;
    private int q;
    private int r;
    private final float s;
    private final c t;

    public AudioCardPlayerView(Context context) {
        this(context, null, 0);
    }

    public AudioCardPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AudioCardPlayerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, l.a(context), new c(null, context));
    }

    AudioCardPlayerView(Context context, AttributeSet attributeSet, int i, l lVar, c cVar) {
        super(context, attributeSet);
        this.h = findViewById(2131951970);
        this.i = (ImageView) findViewById(2131951971);
        this.j = (ImageView) findViewById(2131951980);
        this.k = (TextView) findViewById(2131951982);
        this.l = (TextView) findViewById(2131951981);
        this.m = findViewById(2131951983);
        this.n = lVar;
        this.s = context.getResources().getDimension(2131689849);
        this.t = cVar;
        if (attributeSet != null) {
            TypedArray typedArray = null;
            try {
                typedArray = context.getTheme().obtainStyledAttributes(attributeSet, mx.AudioCardPlayerView, i, 0);
                this.p = typedArray.getDimension(0, Float.NaN);
                if (typedArray != null) {
                    typedArray.recycle();
                }
            } catch (Throwable th) {
                if (typedArray != null) {
                    typedArray.recycle();
                }
            }
        }
    }

    protected int getLayoutId() {
        return 2130968632;
    }

    public void setCallToActionListener(am amVar) {
        ((ExternalActionButton) this.b).setEventLister(amVar);
    }

    public void setPartner(Partner partner) {
        if (partner != null && this.o != null) {
            int color;
            Drawable drawable;
            Drawable drawable2;
            int i;
            Drawable drawable3;
            Tweet b = this.e.h().c().b();
            if (b != null) {
                h.a((ExternalActionButton) this.b, this.o, b);
            }
            String a = partner.a();
            this.f = "dark".equals(d.b(String.format("audio_configurations_audio_player_asset_theme_%s", new Object[]{a})).toLowerCase());
            Resources resources = getResources();
            int color2;
            if (this.f) {
                color = resources.getColor(2131886170);
                color2 = resources.getColor(2131886170);
                drawable = resources.getDrawable(2130839016);
                drawable2 = resources.getDrawable(2130839014);
                this.d.setColorFilter(color);
                Drawable drawable4 = drawable2;
                i = color;
                color = color2;
                drawable3 = drawable;
                drawable = drawable4;
            } else {
                color = resources.getColor(2131886429);
                color2 = resources.getColor(2131886411);
                i = color;
                color = color2;
                drawable3 = resources.getDrawable(2130839019);
                drawable = resources.getDrawable(2130839015);
            }
            this.l.setTextColor(i);
            this.k.setTextColor(color);
            ((TextView) this.a.findViewById(bcx.time_current)).setTextColor(color);
            ((TextView) this.a.findViewById(k.time)).setTextColor(color);
            SeekBar seekBar = (SeekBar) findViewById(bcx.mediacontroller_progress);
            seekBar.setProgressDrawable(drawable3);
            seekBar.setThumb(drawable);
            int a2 = h.a(d.b(String.format("audio_configurations_audio_player_control_background_color_%s", new Object[]{a})), resources.getColor(2131886110));
            this.q = Color.argb(204, Color.red(a2), Color.green(a2), Color.blue(a2));
            this.r = Color.argb(MotionEventCompat.ACTION_MASK, Color.red(a2), Color.green(a2), Color.blue(a2));
            ((ExternalActionButton) this.b).setTextColor(h.a(d.b(String.format("audio_configurations_audio_player_cta_color_%s", new Object[]{a})), a2));
            p();
            drawable3 = this.c.getIndeterminateDrawable();
            if (drawable3 != null) {
                drawable3.setColorFilter(this.f ? Color.argb(204, 0, 0, 0) : Color.argb(204, MotionEventCompat.ACTION_MASK, MotionEventCompat.ACTION_MASK, MotionEventCompat.ACTION_MASK), Mode.SRC_IN);
            }
            a(d.b(String.format("audio_configurations_audio_player_partner_logo_%s", new Object[]{a})), this.j);
            drawable2 = this.i.getBackground();
            if (drawable2 != null) {
                drawable2.setColorFilter(h.d(h.f(a2, 0.88f), 0.8f));
            }
        }
    }

    @TargetApi(21)
    private void p() {
        this.a.setBackgroundColor((getResources().getConfiguration().orientation == 2 ? 1 : null) != null ? this.q : this.r);
        if (VERSION.SDK_INT >= 21 && !this.f && (getContext() instanceof Activity)) {
            ((Activity) getContext()).getWindow().setStatusBarColor(this.r);
        }
    }

    protected void g() {
        Audio audio = (Audio) this.e.a().D();
        if (audio != null) {
            this.o = l.a(audio);
        } else {
            Object b = this.e.h().c().b();
            e.a(b);
            this.o = l.a(b);
        }
        a(this.o.a(), this.i);
        this.k.setText(this.o.b());
        this.l.setText(this.o.c());
    }

    private void a(String str, ImageView imageView) {
        this.n.a((b) a.a(str).a(r.a(getContext())).a((i) new d(this, imageView)));
    }

    public void m() {
        if (this.e != null) {
            AVMediaPlaylist M = this.e.a().M();
            if (!(M == null || M.a())) {
                this.t.a(M.f());
            }
        }
        super.m();
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i2);
        int min = Math.min(MeasureSpec.getSize(i), size);
        if (!Float.isNaN(this.p)) {
            min = (int) Math.min((float) min, this.p);
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(min, RtlSpacingHelper.UNDEFINED);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(size, RtlSpacingHelper.UNDEFINED);
        this.m.measure(makeMeasureSpec, makeMeasureSpec2);
        this.a.measure(makeMeasureSpec, makeMeasureSpec2);
        this.h.measure(makeMeasureSpec, makeMeasureSpec);
        setMeasuredDimension(min, Math.min((getResources().getConfiguration().orientation == 2 ? 1 : null) != null ? this.m.getMeasuredHeight() + min : (this.m.getMeasuredHeight() + min) + this.a.getMeasuredHeight(), size));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        p();
        int measuredWidth = getMeasuredWidth();
        int min = (int) Math.min((float) this.h.getMeasuredHeight(), ((float) (i4 - i2)) - this.s);
        int measuredHeight = (i4 - i2) - ((ExternalActionButton) this.b).getMeasuredHeight();
        int measuredHeight2 = measuredHeight - this.a.getMeasuredHeight();
        this.h.layout(0, 0, measuredWidth, min);
        this.m.layout(0, measuredHeight, measuredWidth, i4 - i2);
        this.a.layout(0, measuredHeight2 - 1, measuredWidth, measuredHeight + 1);
    }
}
