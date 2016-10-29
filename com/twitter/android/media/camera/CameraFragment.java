package com.twitter.android.media.camera;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.media.TransportMediator;
import android.support.v7.recyclerview.BuildConfig;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import com.twitter.android.media.widget.CameraPreviewContainer;
import com.twitter.android.media.widget.CameraShutterBar;
import com.twitter.android.media.widget.CameraToolbar;
import com.twitter.android.mx;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.util.j;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.ui.image.h;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CameraFragment extends BaseFragment implements ac, c, h {
    static final /* synthetic */ boolean i;
    private static final ad[][] j;
    private static final ad[][] k;
    private VideoTooltipManager A;
    private int B;
    private Display C;
    private aa D;
    m a;
    i b;
    ViewGroup c;
    CameraShutterBar d;
    View e;
    CameraPreviewContainer f;
    View g;
    ProgressBar h;
    private final u l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private boolean r;
    private Animation s;
    private Animation t;
    private CameraToolbar u;
    private Session v;
    private int w;
    private ae x;
    private ah y;
    private b z;

    static {
        boolean z;
        if (CameraFragment.class.desiredAssertionStatus()) {
            z = false;
        } else {
            z = true;
        }
        i = z;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(5, 2131952036), new ad(7, 2131952036)};
        r0[1] = new ad[]{new ad(0, 2131952048), new ad(5, 2131952036)};
        r0[2] = new ad[]{new ad(1, 2131952048), new ad(7, 2131952036)};
        j = r0;
        r0 = new ad[3][];
        r0[0] = new ad[]{new ad(9), new ad(11)};
        r0[1] = new ad[]{new ad(11), new ad(10)};
        r0[2] = new ad[]{new ad(9), new ad(10)};
        k = r0;
    }

    public CameraFragment() {
        this.l = new j(this, null);
        this.w = -1;
    }

    public void onCreate(Bundle bundle) {
        boolean z = true;
        super.onCreate(bundle);
        setRetainInstance(true);
        if (bundle != null) {
            this.q = bundle.getBoolean("camera_video_mode_available");
            this.m = bundle.getInt("camera_mode");
        } else {
            if (!(j.a() && o().a("allow_video", false))) {
                z = false;
            }
            this.q = z;
        }
        Context activity = getActivity();
        this.s = AnimationUtils.loadAnimation(activity, 2131034133);
        this.t = AnimationUtils.loadAnimation(activity, 2131034134);
        this.t.setAnimationListener(new d(this));
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        this.c = (ViewGroup) layoutInflater.inflate(2130968661, null);
        return this.c;
    }

    public void onViewCreated(View view, Bundle bundle) {
        boolean a;
        Uri uri = null;
        super.onViewCreated(view, bundle);
        this.e = view.findViewById(2131952045);
        this.u = (CameraToolbar) view.findViewById(2131952044);
        this.u.setOnCameraToolbarClickListener(new k(this, null));
        this.d = (CameraShutterBar) view.findViewById(2131952048);
        this.d.setCameraShutterBarListener(new e(this));
        this.d.a.setListener(new f(this));
        this.h = (ProgressBar) view.findViewById(2131952050);
        this.f = (CameraPreviewContainer) view.findViewById(2131952036);
        this.g = this.f.findViewById(2131952038);
        this.f.setOnTouchListener(new g(this));
        g o = o();
        if (bundle == null) {
            Uri uri2;
            if (this.q) {
                uri2 = (Uri) o.h("seg_video_uri");
                int b = uri2 != null ? 2 : o.a("start_mode") ? o.b("start_mode") : 1;
                this.m = b;
            } else {
                this.m = 1;
                uri2 = null;
            }
            uri = uri2;
            a = o.a("front_facing", false);
        } else {
            a = false;
        }
        this.d.setVideoModeAvailable(this.q);
        a(false);
        this.a = m.a(getActivity());
        this.a.a(this.l);
        this.a.b(bundle);
        this.h.setVisibility(0);
        this.a.b(this.m == 2);
        this.w = -1;
        if (uri != null) {
            new l(this, uri).execute(new Void[0]);
        } else {
            this.a.a(a);
        }
        if (j.d()) {
            view.getViewTreeObserver().addOnPreDrawListener(new h(this));
        } else {
            getActivity().setRequestedOrientation(1);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.v = bg.a().c();
        g o = o();
        FragmentActivity activity = getActivity();
        Context applicationContext = activity.getApplicationContext();
        this.x = new ae(applicationContext, this.a, this);
        this.x.a(o, bundle);
        this.y = new ah(applicationContext, this.a, this);
        this.y.a(o, bundle);
        this.A = new VideoTooltipManager(activity.getApplicationContext(), activity.getSupportFragmentManager(), o.a("initiator", 0));
        this.C = activity.getWindowManager().getDefaultDisplay();
        this.B = l();
        if (!j.d()) {
            this.D = new aa(applicationContext);
            this.D.a((ac) this);
            d(this.B);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("camera_mode", Integer.valueOf(this.z != null ? this.z.a : this.m));
        bundle.putBoolean("camera_video_mode_available", this.q);
        this.x.a(bundle);
        this.y.a(bundle);
        this.a.a(bundle);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.B = l();
        this.a.b(this.B);
        n();
        this.c.requestLayout();
    }

    public void a() {
        if (this.D != null) {
            this.D.a();
        }
        Activity activity = getActivity();
        if (z.a(activity, this.m)) {
            a(this.m, false);
            if (this.a != null && this.w >= 0) {
                this.a.c(this.w);
            }
        } else {
            startActivityForResult(z.a(activity, this.m, "twitter_camera:::" + (this.m == 1 ? "photo" : "video")), 1);
        }
        super.a();
    }

    public void e() {
        if (this.D != null) {
            this.D.b();
        }
        if (this.z != null) {
            this.z.b();
            this.z = null;
        }
        if (this.a != null) {
            this.w = this.a.e();
        }
        super.e();
    }

    public void onDestroy() {
        this.r = true;
        this.b = null;
        this.a.b(this.l);
        super.onDestroy();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!a(i2, intent)) {
                    i();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (a(i2, intent)) {
                    this.m = 2;
                }
            default:
        }
    }

    public void aG_() {
        if (this.z != null) {
            this.z.aG_();
        }
    }

    public void f() {
        if (this.z != null) {
            this.z.f();
        }
    }

    public void a(i iVar) {
        this.b = iVar;
    }

    public void d_(int i) {
        this.n = i;
        if (!this.p) {
            d(i);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case mx.TweetView_mediaTagIcon /*27*/:
                    if (this.z != this.x) {
                        c(1);
                        return true;
                    }
                    break;
                case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                    if (this.z != this.y) {
                        c(2);
                        return true;
                    }
                    break;
            }
        }
        if (this.z == null || !this.z.a(keyEvent)) {
            return false;
        }
        return true;
    }

    private void d(int i) {
        if (this.a != null) {
            this.a.f(i);
        }
        this.o = aa.a(getActivity(), i);
        this.d.a(this.o);
        this.u.a(this.o);
        if (this.z != null) {
            this.z.b(this.o);
        }
        j.a(this.o, p(), this.v.g());
    }

    private static boolean a(int i, Intent intent) {
        return i == -1 && PermissionRequestActivity.a(intent);
    }

    void c(int i) {
        if (i == 2) {
            Context activity = getActivity();
            if (!z.a(activity, 2)) {
                startActivityForResult(new b(getString(2131364143), activity, z.a(2)).f("twitter_camera::video:").a(), 2);
                return;
            }
        }
        a(i, true);
    }

    private void a(int i, boolean z) {
        this.d.a(i, z);
        if (this.z != null) {
            if (this.z.a != i) {
                this.z.b();
            } else {
                return;
            }
        }
        if (i == 1) {
            this.z = this.x;
        } else if (i == 2) {
            this.z = this.y;
        } else {
            com.twitter.util.j.a("Invalid camera mode");
        }
        this.z.a();
        this.m = i;
        n();
        if (z) {
            this.c.startAnimation(new x(this.c));
        } else {
            this.c.requestLayout();
        }
    }

    void a(int i, int i2) {
        if (this.a.n()) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.g.getLayoutParams();
            marginLayoutParams.leftMargin = i - (marginLayoutParams.width / 2);
            marginLayoutParams.topMargin = i2 - (marginLayoutParams.height / 2);
            this.g.requestLayout();
            this.g.clearAnimation();
            this.g.setVisibility(0);
            this.g.startAnimation(this.s);
        }
    }

    int l() {
        return this.C.getRotation() * 90;
    }

    public View b() {
        return this.c;
    }

    public CameraToolbar c() {
        if (i || this.u != null) {
            return this.u;
        }
        throw new AssertionError();
    }

    public void a(boolean z) {
        this.u.setControlsEnabled(z);
        this.d.setEnabled(z);
    }

    public void a(MediaType mediaType, MediaFile mediaFile) {
        if (this.b != null) {
            this.b.a(mediaType, mediaFile);
        }
    }

    public void b(int i) {
        d(i);
        this.p = true;
    }

    public void aH_() {
        if (this.p) {
            d(this.n);
        }
        this.p = false;
    }

    public Session g() {
        return this.v;
    }

    public int h() {
        return this.o;
    }

    public void i() {
        if (this.z != null) {
            this.z.b();
            this.z = null;
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    public FragmentActivity j() {
        return this.r ? null : getActivity();
    }

    public VideoTooltipManager k() {
        return this.r ? null : this.A;
    }

    private String p() {
        if (this.z == null) {
            return BuildConfig.VERSION_NAME;
        }
        return this.z == this.x ? "photo" : "video";
    }

    public boolean m() {
        return this.z != null && this.z.d();
    }

    void n() {
        int i = 1;
        if (getActivity().getResources().getConfiguration().orientation == 1) {
            i = 0;
        } else if (l() >= 180) {
            i = 2;
        }
        ad.a(this.d, k, i);
        ad.a(this.u, j, i);
        if (this.z != null) {
            this.z.a(i);
        }
    }

    private void b(String str) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(this.v.g()).b("twitter_camera::" + p() + ":" + str + ":click"));
    }
}
