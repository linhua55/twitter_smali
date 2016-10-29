package com.twitter.android.av;

import android.animation.LayoutTransition;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.twitter.android.mx;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.bd;
import com.twitter.library.widget.TightTextView;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.b;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.m;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AutoPlayBadgeView extends LinearLayout {
    ImageView a;
    TightTextView b;
    boolean c;
    String d;
    private View e;
    private ImageView f;
    private AutoPlayEqualizerDrawable g;
    private final r h;
    private boolean i;
    private String j;
    private AVMedia k;

    public AutoPlayBadgeView(Context context) {
        this(context, null);
    }

    public AutoPlayBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoPlayBadgeView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, new r());
    }

    AutoPlayBadgeView(Context context, AttributeSet attributeSet, int i, r rVar) {
        super(context, attributeSet, i);
        this.c = true;
        this.h = rVar;
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setAnimateParentHierarchy(false);
        setLayoutTransition(layoutTransition);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (TightTextView) findViewById(2131951998);
        this.a = (ImageView) findViewById(2131951999);
        this.f = (ImageView) findViewById(2131952001);
        if (this.f != null) {
            this.g = this.h.a();
            this.f.setImageDrawable(this.g);
            setAutoPlayDrawableState(0);
        }
        this.e = findViewById(2131952000);
        if (this.e != null) {
            this.e.setVisibility(8);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.g != null) {
            this.g.a(0);
        }
    }

    @Deprecated
    public void setTweet(Tweet tweet) {
        setAVDataSource(new TweetAVDataSource(tweet));
    }

    public void setAVDataSource(AVDataSource aVDataSource) {
        switch (aVDataSource.c()) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                this.j = aVDataSource.j();
                if (e()) {
                    this.b.setText(this.j);
                    this.b.setVisibility(0);
                    this.e.setVisibility(8);
                } else {
                    this.b.setVisibility(8);
                    this.e.setVisibility(0);
                }
                this.a.setVisibility(8);
            case WireMessage.WIRE_CONTROL /*2*/:
                this.a.setImageResource(2130840006);
                d();
            case WireMessage.WIRE_AUTH /*3*/:
                int i;
                if (a(aVDataSource)) {
                    i = 2130839895;
                } else {
                    i = 2130839362;
                }
                this.a.setImageResource(i);
                this.f.setVisibility(8);
                this.c = false;
                d();
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                this.b.setVisibility(8);
                this.a.setVisibility(8);
                this.e.setVisibility(0);
                this.c = true;
            default:
        }
    }

    public void setAvMedia(AVMedia aVMedia) {
        this.k = aVMedia;
    }

    public void setDisableSnapreelBadge(boolean z) {
        this.i = z;
    }

    private boolean a(AVDataSource aVDataSource) {
        return !this.i && aVDataSource.d();
    }

    private void d() {
        this.b.setVisibility(8);
        this.a.setVisibility(0);
    }

    public void a() {
        setAutoPlayDrawableState(1);
    }

    public void b() {
        if (b.a(this.k)) {
            this.d = getContext().getString(2131361954);
        } else {
            this.d = "%s";
        }
        setAutoPlayDrawableState(2);
    }

    public void c() {
        if (e()) {
            this.b.setText(this.j);
        }
        setAutoPlayDrawableState(0);
    }

    public void a(bd bdVar) {
        if (this.d != null) {
            String a = m.a(bdVar.a() ? 0 : bdVar.c - bdVar.b);
            this.b.setText(String.format(this.d, new Object[]{a}));
        }
    }

    private void setAutoPlayDrawableState(int i) {
        if (this.c) {
            int i2;
            if (i == 0) {
                i2 = 8;
            } else {
                i2 = 0;
            }
            if (this.f != null) {
                this.f.setVisibility(i2);
            }
            if (this.g != null) {
                this.g.a(i);
            }
        }
    }

    private boolean e() {
        return aj.b(this.j);
    }

    public int getEqDrawableState() {
        return this.g.a();
    }
}
