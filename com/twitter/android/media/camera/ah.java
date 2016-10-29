package com.twitter.android.media.camera;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.TransitionDrawable;
import android.hardware.Camera.CameraInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.Toast;
import bbu;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.camera.VideoTooltipManager.CameraTooltip;
import com.twitter.android.media.widget.CameraPreviewContainer;
import com.twitter.android.media.widget.CameraShutterBar;
import com.twitter.android.media.widget.CameraToolbar;
import com.twitter.android.media.widget.HoverGarbageCanView;
import com.twitter.android.media.widget.VideoSegmentEditView;
import com.twitter.android.media.widget.VideoSegmentListItemView;
import com.twitter.android.media.widget.VideoSegmentListView;
import com.twitter.android.media.widget.bw;
import com.twitter.android.media.widget.by;
import com.twitter.android.util.j;
import com.twitter.app.common.base.g;
import com.twitter.library.media.util.l;
import com.twitter.library.media.widget.VideoDurationView;
import com.twitter.library.scribe.ScribeSectionSegmentedVideo;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.model.VideoFile;
import com.twitter.media.model.n;
import com.twitter.media.util.d;
import com.twitter.util.h;
import defpackage.bcw;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class ah extends b implements ba, bc, bw, by {
    static final /* synthetic */ boolean e;
    private static final int[] f;
    private static final ad[][] g;
    private static final ad[][] h;
    private static final ad[][] i;
    private static final ad[][] j;
    private static final ad[][] k;
    private static int l;
    private static int m;
    private VideoTextureView A;
    private int B;
    private final Runnable C;
    private final Runnable D;
    private final OnClickListener E;
    private final Handler F;
    private int G;
    private int H;
    private int I;
    private int J;
    private boolean K;
    private boolean L;
    private int M;
    private ArrayList<VideoFile> N;
    private boolean O;
    private n P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;
    private int aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private int ae;
    private boolean af;
    private int ag;
    private final VideoSegmentEditView n;
    private final CameraPreviewContainer o;
    private final View p;
    private final HoverGarbageCanView q;
    private final CameraShutterBar r;
    private final VideoDurationView s;
    private final VideoSegmentListView t;
    private final View u;
    private final au v;
    private final ProgressBar w;
    private final Animation x;
    private final Animation y;
    private VideoTextureView z;

    static {
        boolean z;
        if (ah.class.desiredAssertionStatus()) {
            z = false;
        } else {
            z = true;
        }
        e = z;
        f = new int[]{2131690647, 2131690646, 2131690645};
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(9)};
        r0[2] = new ad[]{new ad(11)};
        g = r0;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(9), new ad(0, 2131952048)};
        r0[2] = new ad[]{new ad(11), new ad(1, 2131952048)};
        h = r0;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(3, 2131952047), new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(2, 2131952047), new ad(9), new ad(0, 2131952048)};
        r0[2] = new ad[]{new ad(2, 2131952047), new ad(11), new ad(1, 2131952048)};
        i = r0;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(5, 2131952036)};
        r0[1] = new ad[]{new ad(5, 2131952036)};
        r0[2] = new ad[]{new ad(1, 2131952048)};
        j = r0;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(3, 2131952036), new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(9), new ad(0, 2131952048), new ad(12)};
        r0[2] = new ad[]{new ad(11), new ad(1, 2131952048), new ad(12)};
        k = r0;
    }

    static /* synthetic */ int b(ah ahVar, int i) {
        int i2 = ahVar.J - i;
        ahVar.J = i2;
        return i2;
    }

    ah(Context context, m mVar, c cVar) {
        super(context, mVar, cVar, 2);
        this.C = new ai(this);
        this.D = new al(this);
        this.E = new am(this);
        this.F = new Handler();
        this.M = 0;
        this.Q = -1;
        this.R = -1;
        this.S = -1;
        this.aa = 2;
        CameraToolbar c = this.d.c();
        this.v = new au();
        View b = cVar.b();
        this.n = (VideoSegmentEditView) b.findViewById(2131952035);
        this.o = (CameraPreviewContainer) b.findViewById(2131952036);
        this.p = this.n.findViewById(2131952042);
        this.q = (HoverGarbageCanView) this.o.findViewById(2131952039);
        this.t = (VideoSegmentListView) b.findViewById(16908298);
        this.u = b.findViewById(2131952046);
        this.r = (CameraShutterBar) b.findViewById(2131952048);
        this.s = (VideoDurationView) b.findViewById(2131952043);
        this.s.setDuration(0);
        this.x = AnimationUtils.loadAnimation(this.b, 2131034131);
        this.y = AnimationUtils.loadAnimation(this.b, 2131034132);
        this.x.setAnimationListener(new an(this));
        this.y.setAnimationListener(new ao(this));
        this.w = (ProgressBar) b.findViewById(2131952047);
        c.a.setOnClickListener(new ap(this));
    }

    public void a(Bundle bundle) {
        bundle.putParcelableArrayList("video_segments", this.N);
        bundle.putBoolean("editing_prior_session", this.O);
        bundle.putBoolean("editing_session_dirty", this.X);
        bundle.putInt("active_segment", this.S);
        bundle.putBoolean("paused", this.W);
        if (this.P != null) {
            File b = this.P.b();
            if (b != null) {
                bundle.putString("session_directory", b.getAbsolutePath());
            }
        }
        bundle.putBoolean("can_add_segment", this.K);
        bundle.putInt("orientation", this.ae);
        bundle.putInt("max_clip_length", this.G);
        bundle.putInt("min_clip_length", this.H);
    }

    public void a(g gVar, Bundle bundle) {
        int i = 0;
        if (bundle != null) {
            String string = bundle.getString("session_directory");
            this.P = string != null ? n.a(new File(string)) : F();
            this.N = bundle.getParcelableArrayList("video_segments");
            this.O = bundle.getBoolean("editing_prior_session");
            this.X = bundle.getBoolean("editing_session_dirty");
            if (this.N == null) {
                this.N = new ArrayList();
            } else {
                Iterator it = this.N.iterator();
                while (it.hasNext()) {
                    i = ((VideoFile) it.next()).g + i;
                }
            }
            this.K = bundle.getBoolean("can_add_segment");
            this.ae = bundle.getInt("orientation");
            this.P.a(this.ae);
            this.S = bundle.getInt("active_segment");
            this.W = bundle.getBoolean("paused");
            this.G = bundle.getInt("max_clip_length", d.b());
            this.H = bundle.getInt("min_clip_length", d.b());
        } else {
            this.P = F();
            this.N = new ArrayList();
            this.K = true;
            if (gVar.h("seg_video_uri") instanceof Uri) {
                this.S = 0;
            }
            this.G = d.b();
            this.H = d.c();
        }
        this.J = i;
    }

    public void a() {
        int i = 1;
        this.c.b(true);
        z();
        this.ad = false;
        this.A = A();
        this.z = A();
        if (this.d.k() != null) {
            this.d.k().a(CameraTooltip.SHOW_PUSH_TO_RECORD);
        }
        this.q.setVisibility(0);
        this.q.b();
        this.t.setVisibility(0);
        this.w.setVisibility(4);
        this.n.setAdapter(this.v);
        this.n.setListItemClickListener(this);
        CameraShutterBar cameraShutterBar = this.r;
        if (this.S < 0) {
            i = 0;
        }
        cameraShutterBar.setShutterButtonMode(i);
        w();
    }

    public void b() {
        this.n.setPostLayoutListener(null);
        this.n.setAdapter(null);
        this.M = 0;
        this.L = false;
        this.ad = true;
        this.S = this.R;
        this.W = this.V;
        this.c.s();
        C();
        this.o.removeView(this.z);
        this.z = null;
        this.o.removeView(this.A);
        this.A = null;
        this.n.b();
        this.q.setVisibility(8);
        this.s.clearAnimation();
        this.s.setVisibility(8);
        this.s.removeCallbacks(this.C);
        this.Y = false;
        this.t.setVisibility(8);
        this.u.setVisibility(8);
        this.w.setVisibility(8);
        this.d.aH_();
    }

    public boolean d() {
        if (this.Z) {
            return true;
        }
        if (this.N.isEmpty() && !this.O) {
            return false;
        }
        if (this.O && !this.X) {
            return false;
        }
        DialogInterface.OnClickListener aqVar = new aq(this);
        FragmentActivity j = this.d.j();
        if (j == null) {
            return false;
        }
        AlertDialog create = new Builder(j).setTitle(this.O ? 2131361844 : 2131362422).setMessage(this.O ? 2131362420 : 2131362421).setPositiveButton(2131362419, aqVar).setNegativeButton(2131362041, null).create();
        create.setOnDismissListener(new as(this));
        this.Z = true;
        create.show();
        return true;
    }

    public void c() {
        if (this.S < 0 || this.S >= this.N.size()) {
            C();
            return;
        }
        this.d.c().setFlashEnabled(false);
        B();
        VideoTextureView a = a(this.S, 0);
        if (this.W) {
            a.b();
            this.p.setVisibility(0);
            return;
        }
        a.a();
        this.p.setVisibility(8);
    }

    public boolean a(View view, MotionEvent motionEvent) {
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case Util.TYPE_DASH /*0*/:
                return u();
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                return v();
            default:
                return false;
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 130) {
            if (keyEvent.getAction() == 0) {
                return u();
            }
            if (this.L) {
                return v();
            }
        }
        return false;
    }

    public void c(int i) {
        if (i < this.N.size() && !this.c.p()) {
            if (this.R == i) {
                t();
                a("twitter_camera::video:segment:" + (this.V ? "pause" : "play"), a(this.R, (long) ((VideoFile) this.N.get(this.R)).g));
                return;
            }
            a("twitter_camera::video:segment:replay");
            B();
            a(i, 0).a();
            if (this.d.k() != null) {
                this.d.k().a(CameraTooltip.SHOW_PLAYBACK);
            }
            s();
        }
    }

    public void g() {
        if (this.t.getBottom() > this.r.getTop()) {
            int bottom = this.t.getBottom() - this.r.getTop();
            int i = bottom / 2;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.o.getHeight() - bottom, C.ENCODING_PCM_32BIT);
            this.o.measure(makeMeasureSpec, makeMeasureSpec);
            this.o.layout(this.o.getLeft() + i, this.o.getTop(), this.o.getRight() - i, this.o.getBottom() - bottom);
            this.w.layout(this.w.getLeft(), this.w.getTop() - bottom, this.w.getRight(), this.w.getBottom() - bottom);
            this.t.layout(this.t.getLeft(), this.t.getTop() - bottom, this.t.getRight(), this.t.getBottom() - bottom);
            this.u.layout(this.u.getLeft(), this.u.getTop() - bottom, this.u.getRight(), this.u.getBottom() - bottom);
        }
    }

    public void h() {
        if (this.R >= 0 && this.R < this.N.size()) {
            int i = this.R + 1;
            if (i < this.N.size()) {
                a(i, 0).a();
                return;
            }
            this.R = -1;
            this.w.setProgress(this.J);
            r();
        }
    }

    public void d(int i) {
        if (i >= this.U) {
            this.U = i;
            this.w.setProgress(this.T + i);
        }
    }

    public void a(SegmentedVideoFile segmentedVideoFile) {
        h.a();
        this.O = true;
        this.X = false;
        this.ae = segmentedVideoFile.j;
        this.N.clear();
        this.J = 0;
        this.P = n.a(segmentedVideoFile);
        for (VideoFile videoFile : segmentedVideoFile.h) {
            this.N.add(videoFile);
            this.J = videoFile.g + this.J;
        }
        w();
        z();
    }

    public void i() {
        this.M = 2;
        z();
        VideoSegmentListItemView h = this.v.h(this.N.size());
        if (h != null) {
            h.setStatus(4);
        } else {
            this.v.notifyDataSetChanged();
        }
        this.d.a(true);
        this.d.c().setControlsEnabled(false);
        this.d.c().b(true);
        ViewCompat.postOnAnimation(this.s, this.C);
    }

    public void a(VideoFile videoFile) {
        int i = 0;
        m();
        if (videoFile.g >= this.H || this.B < this.H) {
            this.M = 0;
            this.J += videoFile.g;
            this.B = this.G - this.J;
            if (this.B < 400) {
                this.K = false;
            } else if (this.d.k() != null) {
                this.d.k().a(CameraTooltip.SHOW_ANOTHER_SEGMENT);
            }
            this.N.add(videoFile);
            this.X = true;
            VideoSegmentListItemView h = this.v.h(this.N.size() - 1);
            if (h != null) {
                h.setVideoFile(videoFile);
                h.setStatus(0);
                this.t.a();
            } else {
                this.v.notifyDataSetChanged();
            }
            w();
            a("twitter_camera::video:segment:create");
            String str = "twitter_camera::video:segment:create";
            ScribeSectionSegmentedVideo a = a(this.N.size() - 1, (long) videoFile.g);
            if (this.ag != 0) {
                i = 1;
            }
            a(str, a.c(i).a("torch".equals(this.c.m())));
            if (!this.K) {
                a("twitter_camera::video:segment:limit_exceed", a(this.N.size() - 1, (long) videoFile.g));
            }
            if (j.b()) {
                this.c.s();
            }
            if (this.L && this.K && this.d.j() != null) {
                k();
                return;
            }
            return;
        }
        if (this.d.k() != null) {
            this.d.k().a(CameraTooltip.TOO_SHORT);
        }
        videoFile.c();
        w();
        y();
        a("twitter_camera::video:segment:deny", a(this.N.size() - 1, (long) videoFile.g));
    }

    public void a(boolean z) {
        z();
        m();
        long q = (long) this.c.q();
        if (z || q <= 100 || q >= ((long) this.H)) {
            FragmentActivity j = this.d.j();
            if (j != null) {
                Toast.makeText(j, 2131364155, 0).show();
            }
            a("twitter_camera::video:segment:failure", a(this.N.size() - 1, 0));
        } else {
            if (this.d.k() != null) {
                this.d.k().a(CameraTooltip.TOO_SHORT);
            }
            a("twitter_camera::video:segment:deny", a(this.N.size() - 1, 0));
        }
        w();
        y();
    }

    public void j() {
        z();
        m();
        if (this.d.k() != null) {
            this.d.k().a(CameraTooltip.TOO_SHORT);
        }
        this.s.removeCallbacks(this.C);
        w();
        y();
    }

    private boolean u() {
        this.L = true;
        if (this.K && this.c.o() && !this.c.p() && !this.n.a()) {
            if (this.P == null) {
                this.P = F();
                if (this.P == null) {
                    return false;
                }
            }
            this.B = this.G - this.J;
            if (this.B <= 0) {
                this.K = false;
                e(this.G);
                return false;
            }
            a("twitter_camera::video:shutter:click");
            boolean q = q();
            if (q) {
                C();
            }
            this.r.setShutterButtonMode(0);
            if (q) {
                this.r.postDelayed(this.D, 200);
            } else if (this.M == 0) {
                k();
            }
        }
        return true;
    }

    private boolean v() {
        this.L = false;
        this.r.removeCallbacks(this.D);
        if (this.M > 0) {
            this.M = 3;
            this.c.r();
            this.r.setShutterButtonMode(0);
            this.d.a(false);
            this.d.c().a(true);
            this.v.notifyDataSetChanged();
        }
        return true;
    }

    private void w() {
        boolean z;
        boolean z2 = true;
        CameraToolbar c = this.d.c();
        this.d.c().a(false);
        this.d.a(true);
        this.t.setEnabled(true);
        boolean z3 = !this.N.isEmpty();
        if (z3) {
            z = false;
        } else {
            z = true;
        }
        c.setFlipCameraButtonEnabled(z);
        if (q() || this.c.m() == null) {
            z = false;
        } else {
            z = true;
        }
        c.setFlashEnabled(z);
        c.setDoneButtonEnabled(z3);
        CameraShutterBar cameraShutterBar = this.r;
        if (z3) {
            z = false;
        } else {
            z = true;
        }
        cameraShutterBar.a(z);
        e(this.J);
        if (!z3 || q()) {
            z2 = false;
        }
        b(z2);
        if (!this.K) {
            B();
            a(0, 0);
            if (this.d.k() != null) {
                this.d.k().a(CameraTooltip.SHOW_FINISHED);
            }
            s();
            this.z.a();
        }
    }

    void k() {
        int i = 1;
        if (this.M == 0) {
            this.M = 1;
            z();
            this.v.notifyDataSetChanged();
            l();
            if (e || this.P != null) {
                this.c.a(this.P.c(), this.B, this);
                ViewTreeObserver viewTreeObserver = this.t.getViewTreeObserver();
                viewTreeObserver.addOnGlobalLayoutListener(new at(this, viewTreeObserver));
                this.r.a(false);
                this.t.setEnabled(false);
                b(true);
                this.d.c().b(true);
                String str = "twitter_camera::video:segment:attempt";
                ScribeSectionSegmentedVideo a = a(this.N.size(), 0).c(this.ag == 0 ? 0 : 1).a("torch".equals(this.c.m()));
                if (!this.c.j()) {
                    i = 0;
                }
                a(str, a.d(i));
                return;
            }
            throw new AssertionError();
        }
    }

    @TargetApi(23)
    void l() {
        this.F.removeCallbacksAndMessages(null);
        if (!this.ac) {
            this.ac = true;
            AudioManager audioManager = (AudioManager) this.b.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            audioManager.requestAudioFocus(null, 1, 1);
            this.aa = audioManager.getRingerMode();
            if (this.aa == 2) {
                audioManager.setRingerMode(0);
            }
            if (VERSION.SDK_INT >= 23) {
                this.ab = audioManager.isStreamMute(1);
                if (!this.ab) {
                    audioManager.adjustStreamVolume(1, -100, 0);
                }
            } else {
                audioManager.setStreamMute(1, true);
            }
            CameraInfo d = this.c.d();
            if (VERSION.SDK_INT >= 17 && d.canDisableShutterSound) {
                this.c.c(false);
            }
        }
    }

    @TargetApi(23)
    void m() {
        if (this.ac) {
            this.F.removeCallbacksAndMessages(null);
            this.F.postDelayed(new aj(this, (AudioManager) this.b.getSystemService(MimeTypes.BASE_TYPE_AUDIO)), 1000);
        }
    }

    void n() {
        int q = this.J + this.c.q();
        if (this.c.p()) {
            int i = q / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            if (i != this.I) {
                this.I = i;
                e(q);
            }
            ViewCompat.postOnAnimation(this.s, this.C);
        }
    }

    void o() {
        if (!this.N.isEmpty()) {
            if (e || this.P != null) {
                Iterator it = this.N.iterator();
                while (it.hasNext()) {
                    this.P.a((VideoFile) it.next());
                }
                this.d.a(MediaType.f, this.P.b(this.c.c()).a());
                return;
            }
            throw new AssertionError();
        }
    }

    VideoTextureView a(int i, int i2) {
        VideoTextureView videoTextureView;
        VideoTextureView videoTextureView2;
        if (this.R >= 0 && this.R < this.N.size() && this.R != i) {
            this.v.b(this.R, 0);
        }
        this.R = i;
        this.U = i2;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            i3 += ((VideoFile) this.N.get(i4)).g;
        }
        this.T = i3;
        this.w.setProgress(i3 + i2);
        this.v.b(i, 2);
        this.v.i(i);
        VideoFile videoFile = (VideoFile) this.N.get(i);
        if (videoFile.a(this.A.getVideoFile())) {
            videoTextureView = this.A;
            VideoTextureView videoTextureView3 = this.z;
            this.z = videoTextureView;
            this.A = videoTextureView3;
            videoTextureView2 = videoTextureView;
            videoTextureView = videoTextureView3;
        } else {
            videoTextureView2 = this.z;
            videoTextureView = this.A;
            videoTextureView2.a(videoFile, i2);
        }
        videoTextureView.d();
        int i5 = i + 1;
        if (i5 < this.N.size()) {
            videoTextureView2.a((VideoFile) this.N.get(i5), videoTextureView);
        } else {
            videoTextureView2.a(null, null);
        }
        videoTextureView2.a(videoTextureView);
        return videoTextureView2;
    }

    int p() {
        int i = 0;
        if (!this.af) {
            return 0;
        }
        Resources resources = this.n.getResources();
        if (this.ag == 0) {
            if (resources.getConfiguration().orientation != 1) {
                return 0;
            }
            if (m > 0) {
                return m;
            }
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.t.getLayoutParams();
            int min = Math.min((((this.r.getTop() - this.w.getBottom()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin) - resources.getDimensionPixelSize(2131689504), (this.n.getWidth() - (this.t.getDividerWidth() * 2)) / 3);
            int[] iArr = f;
            int length = iArr.length;
            int i2 = 0;
            while (i < length) {
                i2 = resources.getDimensionPixelSize(iArr[i]);
                if (i2 <= min) {
                    break;
                }
                i++;
            }
            m = i2;
            return i2;
        } else if (resources.getConfiguration().orientation != 2) {
            return 0;
        } else {
            if (l <= 0) {
                l = resources.getDimensionPixelSize(2131690645);
            }
            return l;
        }
    }

    boolean q() {
        return this.o.a.getVisibility() != 0;
    }

    private int x() {
        return this.G - 10000;
    }

    private void e(int i) {
        this.s.setBackgroundResource(i > x() ? 2130837662 : bcw.bg_media_text_badge);
        if (!this.K || i > this.G) {
            i = this.G;
        }
        this.s.setDuration(i);
    }

    private void y() {
        this.M = 3;
        this.v.notifyDataSetChanged();
        this.n.a(this.N.size());
    }

    public void a(int i) {
        this.af = true;
        this.ag = i;
        ad.a(this.o, g, i);
        ad.a(this.p, h, i);
        ad.a(this.w, k, i);
        ad.a(this.t, i, i);
        Resources resources = this.b.getResources();
        ad.a(this.s, j, i).setMargins(resources.getDimensionPixelSize(2131689506), 0, 0, resources.getDimensionPixelSize(2131689505));
        this.t.setDividerWidth(resources.getDimensionPixelOffset(2131689503));
        if (i == 0) {
            this.o.a(1.0f, false);
            this.o.setScaleMode(4);
            this.u.setVisibility(0);
            this.n.setPostLayoutListener(this);
            return;
        }
        this.u.setVisibility(8);
        this.o.setScaleMode(1);
        this.n.setPostLayoutListener(null);
    }

    private void z() {
        FragmentActivity j = this.d.j();
        if (j != null) {
            if (!j.d()) {
                this.ae = 1;
                this.d.b(0);
            } else if (this.N.isEmpty()) {
                this.ae = this.M == 0 ? 4 : aa.c(this.b);
            }
            j.setRequestedOrientation(this.ae);
            if (this.P != null) {
                this.P.a(this.ae);
            }
        }
    }

    private VideoTextureView A() {
        View videoTextureView = new VideoTextureView(this.b);
        videoTextureView.setPlaybackListener(this);
        videoTextureView.setOnClickListener(this.E);
        videoTextureView.setVisibility(4);
        this.o.addView(videoTextureView, 0);
        LayoutParams layoutParams = videoTextureView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        return videoTextureView;
    }

    private void B() {
        this.c.h();
        this.o.a.setVisibility(4);
        this.r.setShutterButtonMode(1);
        this.w.setMax(this.J);
        b(false);
        this.t.a(true);
        D();
        this.w.setVisibility(0);
        this.v.a(true);
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        this.b.sendBroadcast(intent);
        this.c.a((CharSequence) "off");
        CameraToolbar c = this.d.c();
        c.setFlashEnabled(false);
        c.setFlipCameraButtonEnabled(false);
        this.V = false;
        this.z.setVisibility(0);
        this.z.e();
        this.A.setVisibility(0);
        this.A.f();
    }

    private void C() {
        boolean z = true;
        this.z.d();
        this.z.setVisibility(4);
        this.A.d();
        this.A.setVisibility(4);
        this.w.setVisibility(4);
        this.R = -1;
        this.o.a.setVisibility(0);
        this.p.setVisibility(8);
        this.c.g();
        b(this.I > 0);
        this.t.a(false);
        if (!(this.N.isEmpty() || this.ad)) {
            E();
        }
        CameraToolbar c = this.d.c();
        if (this.c.m() == null) {
            z = false;
        }
        c.setFlashEnabled(z);
        c.setFlipCameraButtonEnabled(this.N.isEmpty());
        this.v.a(false);
    }

    private void D() {
        if (this.u.getVisibility() == 0) {
            this.u.setVisibility(0);
            ((TransitionDrawable) this.u.getBackground()).startTransition(Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        }
    }

    private void E() {
        if (this.u.getVisibility() == 0) {
            ((TransitionDrawable) this.u.getBackground()).reverseTransition(Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        }
    }

    void r() {
        this.p.setVisibility(0);
        this.p.startAnimation(AnimationUtils.loadAnimation(this.b, 2131034142));
    }

    void s() {
        if (this.p.getVisibility() == 0) {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.b, 2131034143);
            loadAnimation.setAnimationListener(new ak(this));
            this.p.startAnimation(loadAnimation);
        }
    }

    void t() {
        if (this.V) {
            this.V = false;
            this.z.a();
            s();
            return;
        }
        this.V = true;
        this.z.c();
        r();
    }

    void b(boolean z) {
        if (this.Y != z) {
            this.Y = z;
            this.s.startAnimation(z ? this.x : this.y);
        }
    }

    void a(String str) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(this.d.g().g()).b(new String[]{str}));
    }

    private void a(String str, ScribeSectionSegmentedVideo scribeSectionSegmentedVideo) {
        a(str);
        bbu.a((TwitterScribeLog) new TwitterScribeLog(this.d.g().g()).a(scribeSectionSegmentedVideo.a(str)));
    }

    private ScribeSectionSegmentedVideo a(int i, long j) {
        return new ScribeSectionSegmentedVideo().a(this.N.size(), i, j);
    }

    private static n F() {
        File b = l.b();
        return b != null ? n.a(b) : null;
    }
}
