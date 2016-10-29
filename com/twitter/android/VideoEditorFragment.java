package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.twitter.android.media.camera.VideoTooltipManager;
import com.twitter.android.media.camera.VideoTooltipManager.CameraTooltip;
import com.twitter.android.media.widget.VideoClipRangeSeekBar;
import com.twitter.android.media.widget.bl;
import com.twitter.android.widget.ProgressReportingVideoView;
import com.twitter.android.widget.dy;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.library.view.y;
import com.twitter.media.model.VideoFile;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.media.util.d;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import com.twitter.util.math.a;

/* compiled from: Twttr */
public class VideoEditorFragment extends BaseFragment implements bl, dy {
    private static final y[] a;
    private VideoFile b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private ProgressReportingVideoView l;
    private View m;
    private VideoClipRangeSeekBar n;
    private boolean o;
    private VideoTooltipManager p;

    public VideoEditorFragment() {
        this.e = -1;
        this.f = -1;
        this.g = -1;
        this.j = true;
    }

    static {
        a = new y[]{new ya(60000, 0.75f, 2.0f, MotionEventCompat.ACTION_MASK), new y(30000, 0.375f, 2.0f, MotionEventCompat.ACTION_MASK), new y(5000, 0.1875f, 1.0f, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS)};
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        yb ybVar = new yb(this);
        View inflate = layoutInflater.inflate(2130968835, null);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) inflate.findViewById(2131952493);
        aspectRatioFrameLayout.setAspectRatio(this.b.e.e());
        aspectRatioFrameLayout.setOnClickListener(ybVar);
        ProgressReportingVideoView progressReportingVideoView = (ProgressReportingVideoView) aspectRatioFrameLayout.findViewById(2131952494);
        this.l = progressReportingVideoView;
        progressReportingVideoView.setProgressListener(this);
        this.m = aspectRatioFrameLayout.findViewById(2131952042);
        this.m.setOnClickListener(ybVar);
        this.n = (VideoClipRangeSeekBar) inflate.findViewById(2131952495);
        this.n.setVideoTrimBarListener(this);
        if (bundle != null) {
            this.c = bundle.getInt("state_max_clip_length", d.b());
            this.d = bundle.getInt("state_min_clip_length", d.c());
            this.e = bundle.getInt("state_clip_start", -1);
            this.f = bundle.getInt("state_clip_end", -1);
            this.g = bundle.getInt("state_current_position", -1);
            this.i = bundle.getBoolean("state_paused", false);
            this.o = bundle.getBoolean("state_editing", false);
            this.k = bundle.getBoolean("state_zoomed", false);
        }
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        EditableVideo editableVideo = (EditableVideo) getActivity().getIntent().getParcelableExtra("editable_video");
        this.b = (VideoFile) editableVideo.k;
        this.c = d.b();
        this.d = d.c();
        this.e = editableVideo.b;
        this.f = Math.min(editableVideo.c, this.e + this.c);
    }

    public void a() {
        super.a();
        this.n.setEnabled(false);
        this.l.setVideoFile(this.b);
        this.e = a.a(this.e, 0, this.b.g);
        this.f = a.a(this.f, this.e, Math.min(this.e + this.c, this.b.g));
        float f = (float) this.b.g;
        this.n.setMaxClipLengthMs(this.c);
        this.n.b(((float) this.e) / f, ((float) this.f) / f);
        this.n.a(((float) this.d) / f, ((float) this.c) / f);
        this.n.a(this.b.g, a, this.k);
        if (this.n.a()) {
            this.p.a(CameraTooltip.g);
        }
        int a = a.a(this.g, this.e, this.f);
        this.g = -1;
        if (this.j) {
            b(a);
        } else {
            this.m.setVisibility(0);
            this.n.a(this.e, this.f, a);
            this.l.a(a, new yc(this));
        }
        if (this.k) {
            this.n.h();
        }
    }

    public void e() {
        this.g = this.l.getCurrentPosition();
        this.j = this.l.g();
        this.l.b();
        super.e();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("state_max_clip_length", this.c);
        bundle.putInt("state_min_clip_length", this.d);
        bundle.putInt("state_clip_start", this.e);
        bundle.putInt("state_clip_end", this.f);
        bundle.putInt("state_current_position", !ah() ? this.g : this.l.getCurrentPosition());
        bundle.putBoolean("state_paused", this.i);
        bundle.putBoolean("state_editing", this.o);
        bundle.putBoolean("state_zoomed", this.k);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        this.p = new VideoTooltipManager(activity.getApplicationContext(), activity.getSupportFragmentManager(), 0);
    }

    public void a(boolean z) {
        this.k = z;
    }

    public void b() {
        this.h = true;
        this.l.a();
        this.i = false;
        this.m.setVisibility(8);
    }

    public void a(float f, float f2, boolean z) {
        if (!this.l.f()) {
            int i = this.b.g;
            int i2 = (int) (((float) i) * f);
            i = (int) (((float) i) * f2);
            if (!z) {
                this.p.a(((i - i2) + 500) / 1000);
            }
            if (i2 == this.e) {
                if (Math.abs(i - this.l.getCurrentPosition()) > 100) {
                    this.l.a(i, null);
                }
            } else if (Math.abs(i2 - this.l.getCurrentPosition()) > 100) {
                this.l.a(i2, null);
            }
        }
    }

    public void b(float f, float f2, boolean z) {
        this.h = false;
        if (!z) {
            this.p.a();
        }
        int i = this.b.g;
        int i2 = (int) (((float) i) * f);
        i = (int) (((float) i) * f2);
        if (i2 == this.e && i == this.f) {
            this.m.setVisibility(0);
            return;
        }
        this.o = true;
        this.e = i2;
        this.f = i;
        if (ah()) {
            b(i2);
        }
    }

    public void c() {
        this.n.setEnabled(true);
    }

    public void a(int i) {
        if (i >= this.f) {
            this.l.a();
            f();
            return;
        }
        this.n.a(i);
    }

    public void f() {
        this.m.setVisibility(0);
        this.n.b();
    }

    public boolean g() {
        return this.o;
    }

    public EditableVideo h() {
        EditableVideo editableVideo = (EditableVideo) EditableMedia.a(this.b, MediaSource.c);
        editableVideo.b = this.e;
        editableVideo.c = this.f;
        return editableVideo;
    }

    void i() {
        if (!this.h) {
            ProgressReportingVideoView progressReportingVideoView = this.l;
            if (!progressReportingVideoView.e()) {
                return;
            }
            if (progressReportingVideoView.g()) {
                j();
            } else {
                k();
            }
        }
    }

    private void b(int i) {
        Animation loadAnimation = AnimationUtils.loadAnimation(getActivity(), 2131034143);
        loadAnimation.setAnimationListener(new yd(this));
        this.m.startAnimation(loadAnimation);
        this.n.a(this.e, this.f, i);
        this.l.a(i, new ye(this));
    }

    private void j() {
        this.l.a();
        this.n.a(this.l.getCurrentPosition());
        this.i = true;
        this.m.setVisibility(0);
        this.m.startAnimation(AnimationUtils.loadAnimation(getActivity(), 2131034142));
    }

    private void k() {
        int currentPosition = this.i ? this.l.getCurrentPosition() : this.e;
        this.i = false;
        b(currentPosition);
    }
}
