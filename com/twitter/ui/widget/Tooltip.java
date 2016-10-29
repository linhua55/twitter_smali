package com.twitter.ui.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import bbn;
import com.twitter.util.object.e;

@SuppressLint({"BlacklistedBaseClass"})
/* compiled from: Twttr */
public class Tooltip extends Fragment implements OnClickListener, OnTouchListener {
    private static ad a;
    private Activity b;
    private ViewGroup c;
    private View d;
    private ag e;
    private final int[] f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private ae k;
    private af l;

    public Tooltip() {
        this.f = new int[2];
    }

    public static ad a(Context context, int i) {
        if (a != null) {
            return a;
        }
        return new ad(i, null);
    }

    public static ad a(Context context, String str) {
        if (a != null) {
            return a;
        }
        return new ad(str, null);
    }

    private static Tooltip b(int i, String str, int i2, CharSequence charSequence, int i3, int i4, af afVar, boolean z, boolean z2, String str2) {
        Tooltip tooltip = new Tooltip();
        Bundle bundle = new Bundle();
        bundle.putInt("targetViewId", i);
        bundle.putString("targetViewTag", str);
        bundle.putInt("containerId", i2);
        bundle.putCharSequence("text", charSequence);
        bundle.putInt("styleId", i4);
        bundle.putInt("arrowDirection", i3);
        bundle.putBoolean("dismissOnPause", z);
        bundle.putBoolean("animate", z2);
        bundle.putString("fragmentTag", str2);
        tooltip.setArguments(bundle);
        tooltip.a(afVar);
        return tooltip;
    }

    public void a(af afVar) {
        this.l = afVar;
    }

    public void a(boolean z) {
        if (!this.g && this.e != null) {
            c();
            this.e.a(z, new ac(this));
            this.g = true;
        }
    }

    public Tooltip a(CharSequence charSequence) {
        if (this.e != null) {
            this.e.a(charSequence);
        }
        return this;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.k = new ae(this);
        this.i = bundle != null;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.b = activity;
    }

    private void a() {
        if (!this.h) {
            if (!(this.e == null || this.e.getParent() == null)) {
                this.c.removeView(this.e);
            }
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager != null) {
                fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
            }
            this.h = true;
        }
    }

    private void b() {
        if (this.d != null && this.d.getParent() == null) {
            LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
            layoutParams.flags = 393256;
            layoutParams.format = -2;
            if ((this.b.getWindow().getAttributes().flags & 1024) != 0) {
                layoutParams.flags |= 1024;
            }
            this.b.getWindowManager().addView(this.d, layoutParams);
        }
    }

    private void c() {
        if (this.d != null && this.d.getParent() != null) {
            this.b.getWindowManager().removeViewImmediate(this.d);
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view == this.d) {
            int i;
            ((ag) e.a(this.e)).getLocationOnScreen(this.f);
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (rawX <= ((float) this.f[0]) || rawX >= ((float) (this.f[0] + this.e.getWidth())) || rawY <= ((float) this.f[1]) || rawY >= ((float) (this.f[1] + this.e.getHeight()))) {
                boolean z = false;
            } else {
                i = 1;
            }
            if (i == 0) {
                this.k.sendEmptyMessage(1);
            }
        }
        return false;
    }

    public void onResume() {
        super.onResume();
        if (this.e == null) {
            View findViewById;
            Bundle arguments = getArguments();
            int i = arguments.getInt("targetViewId");
            String string = arguments.getString("targetViewTag");
            int i2 = arguments.getInt("containerId");
            this.j = arguments.getBoolean("dismissOnPause");
            if (i2 == 0) {
                this.c = (ViewGroup) this.b.getWindow().getDecorView();
            } else {
                this.c = (ViewGroup) this.b.findViewById(i2);
            }
            CharSequence string2 = arguments.getString("text");
            if (i != 0) {
                findViewById = this.b.findViewById(i);
            } else {
                findViewById = this.b.getWindow().getDecorView().findViewWithTag(string);
            }
            if (findViewById != null) {
                this.e = new ag(findViewById, this.c, string2, arguments.getInt("arrowDirection"), arguments.getInt("styleId"), null);
                this.e.setOnClickListener(this);
                this.c.addView(this.e, new LayoutParams(-2, -2));
                if (this.i) {
                    this.e.a(false);
                } else {
                    this.e.a(arguments.getBoolean("animate"));
                }
                this.d = new View(getActivity());
                this.d.setBackgroundColor(0);
                this.d.setOnTouchListener(this);
                b();
                return;
            }
            bbn.a(new IllegalStateException(this.b.getClass().getName() + " cannot find tooltip target view: id=" + i + " targetView tag=" + string + " fragment tag=" + arguments.getString("fragmentTag")));
            return;
        }
        b();
    }

    public void onPause() {
        c();
        if (this.j) {
            a(false);
        }
        super.onPause();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(getTag(), true);
    }

    public void onDetach() {
        this.l = null;
        super.onDetach();
    }

    public void onClick(View view) {
        if (this.l != null) {
            this.l.a(this, 1);
        } else {
            this.k.sendEmptyMessage(1);
        }
    }
}
