package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.r;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class av implements r {
    public final int a;
    public final n b;
    public final r c;
    final /* synthetic */ zzw d;

    public av(zzw com_google_android_gms_common_api_internal_zzw, int i, n nVar, r rVar) {
        this.d = com_google_android_gms_common_api_internal_zzw;
        this.a = i;
        this.b = nVar;
        this.c = rVar;
        nVar.a((r) this);
    }

    public void a() {
        this.b.b((r) this);
        this.b.c();
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        this.d.f.post(new aw(this.d, this.a, connectionResult));
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("GoogleApiClient #").print(this.a);
        printWriter.println(":");
        this.b.a(str + "  ", fileDescriptor, printWriter, strArr);
    }
}
