package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;
import java.util.HashMap;
import java.util.Map;

@oi
public class zzk extends FrameLayout implements r {
    private final sz a;
    private final FrameLayout b;
    private final ab c;
    @Nullable
    private zzi d;
    private boolean e;
    private boolean f;
    private TextView g;
    private long h;
    private long i;
    private String j;
    private String k;

    public zzk(Context context, sz szVar, int i, cy cyVar, cu cuVar) {
        super(context);
        this.a = szVar;
        this.b = new FrameLayout(context);
        addView(this.b, new LayoutParams(-1, -1));
        g.a(szVar.h());
        this.d = szVar.h().b.a(context, szVar, i, cyVar, cuVar);
        if (this.d != null) {
            this.b.addView(this.d, new LayoutParams(-1, -1, 17));
        }
        this.g = new TextView(context);
        this.g.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        o();
        this.c = new ab(this);
        this.c.b();
        if (this.d != null) {
            this.d.a(this);
        }
        if (this.d == null) {
            a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void a(sz szVar) {
        Map hashMap = new HashMap();
        hashMap.put(NotificationCompatApi21.CATEGORY_EVENT, "no_video_view");
        szVar.a("onVideoEvent", hashMap);
    }

    private void a(String str, String... strArr) {
        Map hashMap = new HashMap();
        hashMap.put(NotificationCompatApi21.CATEGORY_EVENT, str);
        int length = strArr.length;
        int i = 0;
        Object obj = null;
        while (i < length) {
            Object obj2 = strArr[i];
            if (obj != null) {
                hashMap.put(obj, obj2);
                obj2 = null;
            }
            i++;
            obj = obj2;
        }
        this.a.a("onVideoEvent", hashMap);
    }

    private void o() {
        if (!q()) {
            this.b.addView(this.g, new LayoutParams(-1, -1));
            this.b.bringChildToFront(this.g);
        }
    }

    private void p() {
        if (q()) {
            this.b.removeView(this.g);
        }
    }

    private boolean q() {
        return this.g.getParent() != null;
    }

    private void r() {
        if (this.a.f() != null && !this.e) {
            this.f = (this.a.f().getWindow().getAttributes().flags & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0;
            if (!this.f) {
                this.a.f().getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                this.e = true;
            }
        }
    }

    private void s() {
        if (this.a.f() != null && this.e && !this.f) {
            this.a.f().getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            this.e = false;
        }
    }

    public void a() {
    }

    public void a(float f) {
        if (this.d != null) {
            this.d.a(f);
        }
    }

    public void a(int i) {
        if (this.d != null) {
            this.d.a(i);
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            ViewGroup.LayoutParams layoutParams = new LayoutParams(i3 + 2, i4 + 2);
            layoutParams.setMargins(i - 1, i2 - 1, 0, 0);
            this.b.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public void a(MotionEvent motionEvent) {
        if (this.d != null) {
            this.d.dispatchTouchEvent(motionEvent);
        }
    }

    public void a(String str) {
        this.k = str;
    }

    public void a(String str, String str2) {
        a("error", "what", str, "extra", str2);
    }

    public void b() {
        if (this.d != null && this.i == 0) {
            float duration = ((float) this.d.getDuration()) / 1000.0f;
            int videoWidth = this.d.getVideoWidth();
            int videoHeight = this.d.getVideoHeight();
            a("canplaythrough", "duration", String.valueOf(duration), "videoWidth", String.valueOf(videoWidth), "videoHeight", String.valueOf(videoHeight));
        }
    }

    public void c() {
        r();
    }

    public void d() {
        a("pause", new String[0]);
        s();
    }

    public void e() {
        a("ended", new String[0]);
        s();
    }

    public void f() {
        o();
        this.i = this.h;
    }

    public void g() {
        if (this.d != null) {
            if (TextUtils.isEmpty(this.k)) {
                a("no_src", new String[0]);
                return;
            }
            this.d.setMimeType(this.j);
            this.d.setVideoPath(this.k);
        }
    }

    public void h() {
        if (this.d != null) {
            this.d.d();
        }
    }

    public void i() {
        if (this.d != null) {
            this.d.c();
        }
    }

    public void j() {
        if (this.d != null) {
            this.d.e();
        }
    }

    public void k() {
        if (this.d != null) {
            this.d.f();
        }
    }

    public void l() {
        if (this.d != null) {
            View textView = new TextView(this.d.getContext());
            textView.setText("AdMob - " + this.d.a());
            textView.setTextColor(SupportMenu.CATEGORY_MASK);
            textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
            this.b.addView(textView, new LayoutParams(-2, -2, 17));
            this.b.bringChildToFront(textView);
        }
    }

    public void m() {
        this.c.a();
        if (this.d != null) {
            this.d.b();
        }
        s();
    }

    void n() {
        if (this.d != null) {
            long currentPosition = (long) this.d.getCurrentPosition();
            if (this.h != currentPosition && currentPosition > 0) {
                p();
                float f = ((float) currentPosition) / 1000.0f;
                a("timeupdate", "time", String.valueOf(f));
                this.h = currentPosition;
            }
        }
    }

    public void setMimeType(String str) {
        this.j = str;
    }
}
