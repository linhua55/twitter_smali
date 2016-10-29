package tv.periscope.android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import dce;
import defpackage.dcn;
import tv.periscope.android.library.h;
import tv.periscope.android.library.j;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.p;
import tv.periscope.android.player.c;
import tv.periscope.android.ui.broadcast.ChannelView;

/* compiled from: Twttr */
public class PlayerView extends FrameLayout implements c {
    private FuzzyBalls a;
    private TextureView b;
    private ImageView c;
    private o d;
    private ChannelView e;
    private PsLoading f;
    private TextView g;
    private View h;
    private TextView i;
    private ImageView j;
    private boolean k;
    private dce l;

    public PlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PlayerView);
        boolean z = obtainStyledAttributes.getBoolean(p.PlayerView_ps__includeComposer, true);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(m.ps__play_view, this, true);
        this.b = (TextureView) findViewById(k.preview);
        this.c = (ImageView) findViewById(k.thumb);
        this.d = new l(this);
        ViewStub viewStub = (ViewStub) findViewById(k.channel_view_stub);
        if (z) {
            viewStub.setLayoutResource(m.ps__channel_view_composer);
        } else {
            viewStub.setLayoutResource(m.ps__channel_view_no_composer);
        }
        viewStub.inflate();
        this.e = (ChannelView) findViewById(k.channel_view);
        this.e.setHeartsMarginFactor(2);
        this.f = (PsLoading) findViewById(k.loading_animation);
        this.g = (TextView) findViewById(k.loading_text);
        this.h = findViewById(k.ended_container);
        this.i = (TextView) this.h.findViewById(k.ended_time);
        this.j = (ImageView) findViewById(k.btn_play_icon);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.a != null) {
            this.a.a();
        }
    }

    public TextureView getPreview() {
        return this.b;
    }

    public ChannelView getChannelView() {
        return this.e;
    }

    public void setThumbImageUrlLoader(dce dce) {
        this.l = dce;
    }

    public void setPlayPauseClickListener(OnClickListener onClickListener) {
        this.j.setOnClickListener(onClickListener);
    }

    public boolean b(int i, long j) {
        Bitmap bitmap;
        Throwable th;
        if (this.k) {
            return false;
        }
        Bitmap bitmap2 = null;
        try {
            if (this.a == null) {
                this.a = (FuzzyBalls) ((ViewStub) findViewById(k.fuzzy_balls_stub)).inflate();
            }
            bitmap = this.b.getBitmap();
            if (bitmap != null) {
                try {
                    this.a.a(bitmap, i, j);
                } catch (OutOfMemoryError e) {
                    try {
                        this.k = true;
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        return false;
                    } catch (Throwable th2) {
                        bitmap2 = bitmap;
                        th = th2;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                        }
                        throw th;
                    }
                }
            }
            K();
            if (bitmap != null) {
                bitmap.recycle();
            }
            return true;
        } catch (OutOfMemoryError e2) {
            bitmap = null;
            this.k = true;
            if (bitmap != null) {
                bitmap.recycle();
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
            throw th;
        }
    }

    public void K() {
        if (this.a != null) {
            int color = getResources().getColor(h.ps__dark_grey);
            this.a.a(color, color, color, color, 0);
        }
    }

    public void a(String str) {
        a();
        this.f.b();
        this.g.setText(str);
        this.g.setVisibility(0);
    }

    public void L() {
        this.f.c();
        this.g.setVisibility(8);
    }

    public void b(String str) {
        L();
        this.h.setVisibility(0);
        this.i.setText(str);
    }

    public void a() {
        this.h.setVisibility(8);
    }

    public void a(float f) {
        Bitmap bitmap = this.b.getBitmap();
        if (bitmap != null) {
            dcn.a(getContext(), bitmap, f, 25, new m(this));
            this.c.setAlpha(0.0f);
            this.c.setVisibility(0);
        }
    }

    public void c(String str) {
        if (this.l != null) {
            this.l.a(getContext(), str, this.c);
        }
        this.c.setAlpha(1.0f);
        this.c.setVisibility(0);
    }

    public void N() {
        this.c.animate().alpha(0.0f).setDuration(180).setListener(this.d).start();
    }

    public void O() {
        this.j.setImageResource(j.ps__ic_play);
        Q();
    }

    public void P() {
        this.j.setImageResource(j.ps__ic_pause);
        Q();
    }

    public void Q() {
        this.j.setVisibility(0);
    }

    public void R() {
        this.j.setVisibility(8);
    }

    public void setPlayPauseAlpha(float f) {
        this.j.setAlpha(f);
    }
}
