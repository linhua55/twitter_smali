package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Process;
import android.support.annotation.BinderThread;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

public class cc extends ay {
    private final bx a;
    private final boolean b;

    public cc(bx bxVar) {
        bm.a((Object) bxVar);
        this.a = bxVar;
        this.b = false;
    }

    public cc(bx bxVar, boolean z) {
        bm.a((Object) bxVar);
        this.a = bxVar;
        this.b = z;
    }

    @BinderThread
    private void b(String str) throws SecurityException {
        if (TextUtils.isEmpty(str)) {
            this.a.f().b().a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        try {
            c(str);
        } catch (SecurityException e) {
            this.a.f().b().a("Measurement Service called with invalid calling package", str);
            throw e;
        }
    }

    private void c(String str) throws SecurityException {
        int myUid = this.b ? Process.myUid() : Binder.getCallingUid();
        if (!n.zzb(this.a.p(), myUid, str)) {
            if (!n.zzf(this.a.p(), myUid) || this.a.y()) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[]{str}));
            }
        }
    }

    @BinderThread
    public List<UserAttributeParcel> a(AppMetadata appMetadata, boolean z) {
        Object e;
        bm.a((Object) appMetadata);
        b(appMetadata.b);
        try {
            List<af> list = (List) this.a.h().a(new ci(this, appMetadata)).get();
            List<UserAttributeParcel> arrayList = new ArrayList(list.size());
            for (af afVar : list) {
                if (z || !ag.g(afVar.b)) {
                    arrayList.add(new UserAttributeParcel(afVar));
                }
            }
            return arrayList;
        } catch (InterruptedException e2) {
            e = e2;
            this.a.f().b().a("Failed to get user attributes", e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            this.a.f().b().a("Failed to get user attributes", e);
            return null;
        }
    }

    @BinderThread
    public void a(AppMetadata appMetadata) {
        bm.a((Object) appMetadata);
        b(appMetadata.b);
        this.a.h().a(new cj(this, appMetadata));
    }

    @BinderThread
    public void a(EventParcel eventParcel, AppMetadata appMetadata) {
        bm.a((Object) eventParcel);
        bm.a((Object) appMetadata);
        b(appMetadata.b);
        this.a.h().a(new ce(this, appMetadata, eventParcel));
    }

    @BinderThread
    public void a(EventParcel eventParcel, String str, String str2) {
        bm.a((Object) eventParcel);
        bm.a(str);
        b(str);
        this.a.h().a(new cf(this, str2, eventParcel, str));
    }

    @BinderThread
    public void a(UserAttributeParcel userAttributeParcel, AppMetadata appMetadata) {
        bm.a((Object) userAttributeParcel);
        bm.a((Object) appMetadata);
        b(appMetadata.b);
        if (userAttributeParcel.a() == null) {
            this.a.h().a(new cg(this, appMetadata, userAttributeParcel));
        } else {
            this.a.h().a(new ch(this, appMetadata, userAttributeParcel));
        }
    }

    @WorkerThread
    void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(":", 2);
            if (split.length == 2) {
                try {
                    long longValue = Long.valueOf(split[0]).longValue();
                    if (longValue > 0) {
                        this.a.e().b.a(split[1], longValue);
                    } else {
                        this.a.f().c().a("Combining sample with a non-positive weight", Long.valueOf(longValue));
                    }
                } catch (NumberFormatException e) {
                    this.a.f().c().a("Combining sample with a non-number weight", split[0]);
                }
            }
        }
    }

    @BinderThread
    public void b(AppMetadata appMetadata) {
        bm.a((Object) appMetadata);
        b(appMetadata.b);
        this.a.h().a(new cd(this, appMetadata));
    }
}
