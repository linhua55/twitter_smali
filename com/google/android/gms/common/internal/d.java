package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg$zza;

public final class d extends zzg<bf> {
    private static final d a;

    static {
        a = new d();
    }

    private d() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int i2, Scope[] scopeArr) throws zzg$zza {
        return a.b(context, i, i2, scopeArr);
    }

    private View b(Context context, int i, int i2, Scope[] scopeArr) throws zzg$zza {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2, scopeArr);
            return (View) m.a(((bf) a(context)).a(m.a((Object) context), signInButtonConfig));
        } catch (Throwable e) {
            throw new zzg$zza("Could not get button with size " + i + " and color " + i2, e);
        }
    }

    public bf a(IBinder iBinder) {
        return bg.a(iBinder);
    }

    public /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
