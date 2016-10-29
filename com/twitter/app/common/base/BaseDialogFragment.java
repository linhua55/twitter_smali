package com.twitter.app.common.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.annotation.IdRes;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.TypedValue;
import android.view.View;
import aoe;
import com.twitter.app.common.util.l;
import com.twitter.app.common.util.m;
import com.twitter.app.common.util.u;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbn;
import defpackage.dbg;

/* compiled from: Twttr */
public class BaseDialogFragment extends DialogFragment implements p, u {
    private final dbg a;
    protected Context b;
    private final m c;
    private boolean d;
    private boolean e;
    private boolean f;
    private j g;
    private k h;
    private l i;
    private m j;

    public BaseDialogFragment() {
        this.a = new dbg();
        this.c = new m();
    }

    @CallSuper
    public void onCreate(Bundle bundle) {
        this.c.a(this, bundle);
        super.onCreate(bundle);
        this.b = getActivity().getApplicationContext();
    }

    @CallSuper
    public void onStart() {
        this.c.a(this);
        super.onStart();
        this.d = true;
    }

    @CallSuper
    public void onResume() {
        this.c.b(this);
        super.onResume();
        this.e = true;
    }

    @CallSuper
    public void onPause() {
        this.e = false;
        super.onPause();
        this.c.e(this);
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c.a(this, configuration);
    }

    @CallSuper
    public void onStop() {
        this.d = false;
        super.onStop();
        this.c.f(this);
    }

    @CallSuper
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.c.b(this, bundle);
    }

    @CallSuper
    public void onDestroy() {
        this.a.K_();
        this.f = true;
        super.onDestroy();
        this.c.g(this);
    }

    public boolean l_() {
        return this.d;
    }

    public boolean m_() {
        return this.e;
    }

    public boolean isDestroyed() {
        return this.f;
    }

    public void a(l lVar) {
        this.c.b(lVar);
    }

    public d g() {
        return d.d(getArguments());
    }

    protected void a(d dVar) {
        setArguments(dVar.b);
    }

    public <T extends BaseDialogFragment> T a(m mVar) {
        this.j = mVar;
        return (BaseDialogFragment) ObjectUtils.a((Object) this);
    }

    public <T extends BaseDialogFragment> T a(k kVar) {
        this.h = kVar;
        a(new e(g()).g().d());
        return (BaseDialogFragment) ObjectUtils.a((Object) this);
    }

    public <T extends BaseDialogFragment> T a(j jVar) {
        this.g = jVar;
        a(new e(g()).e().d());
        return (BaseDialogFragment) ObjectUtils.a((Object) this);
    }

    public <T extends BaseDialogFragment> T a(l lVar) {
        this.i = lVar;
        a(new e(g()).f().d());
        return (BaseDialogFragment) ObjectUtils.a((Object) this);
    }

    public <T extends BaseDialogFragment> T a(Fragment fragment) {
        setTargetFragment(fragment, 0);
        return (BaseDialogFragment) ObjectUtils.a((Object) this);
    }

    protected final View b(@IdRes int i) {
        j.a(getDialog() != null, "Dialog has not been created yet.");
        return getDialog().findViewById(i);
    }

    protected final void c(int i) {
        if (this.j != null) {
            this.j.a(getDialog(), g().J(), i);
        }
    }

    public void a(FragmentManager fragmentManager) {
        show(fragmentManager, null);
    }

    public void show(FragmentManager fragmentManager, String str) {
        try {
            super.show(fragmentManager, str);
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    @CallSuper
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Fragment targetFragment = getTargetFragment();
        d g = g();
        if (this.j == null) {
            this.j = (m) a(m.class, targetFragment, activity);
        }
        if (this.g == null && g.K()) {
            this.g = (j) a(j.class, targetFragment, activity);
        }
        if (this.i == null && g.L()) {
            this.i = (l) a(l.class, targetFragment, activity);
        }
        if (this.h == null && g.M()) {
            this.h = (k) a(k.class, targetFragment, activity);
        }
    }

    protected static <L> L a(Class<L> cls, Object... objArr) {
        for (Object obj : objArr) {
            if (cls.isInstance(obj)) {
                return ObjectUtils.a(obj);
            }
        }
        return null;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), getTheme());
        TypedValue typedValue = new TypedValue();
        dialog.getContext().getTheme().resolveAttribute(aoe.dialogLayoutId, typedValue, true);
        if (typedValue.resourceId != 0) {
            dialog.setContentView(typedValue.resourceId);
        }
        return dialog;
    }

    @CallSuper
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.h != null) {
            this.h.a(getDialog(), g().J(), bundle);
        }
    }

    @CallSuper
    public void onCancel(DialogInterface dialogInterface) {
        if (this.g != null) {
            this.g.a(dialogInterface, g().J());
        }
        super.onCancel(dialogInterface);
    }

    @CallSuper
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.i != null) {
            this.i.a(dialogInterface, g().J());
        }
        super.onDismiss(dialogInterface);
    }

    public Object a(String str, Object obj) {
        return c().a(b(str), obj);
    }

    public <T> T a_(String str) {
        return c().a_(b(str));
    }

    private p c() {
        FragmentActivity activity = getActivity();
        if (activity instanceof p) {
            return (p) activity;
        }
        if (activity == null) {
            throw new IllegalStateException("The fragment is not attached.");
        }
        throw new IllegalStateException("The parent activity does not implement Retainer.");
    }

    private String b(String str) {
        return getClass().getSimpleName() + "_" + str;
    }
}
