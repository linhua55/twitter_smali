package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.vj;
import com.google.android.gms.measurement.e;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;

public class ba extends cl {
    private static final X500Principal a;
    private String b;
    private String c;
    private String d;
    private String e;
    private long f;
    private String g;

    static {
        a = new X500Principal("CN=Android Debug,O=Android,C=US");
    }

    ba(bx bxVar) {
        super(bxVar);
    }

    AppMetadata a(String str) {
        return new AppMetadata(b(), c(), v(), w(), x(), y(), str, t().w(), !t().m);
    }

    protected void a() {
        String str = "Unknown";
        String str2 = "Unknown";
        PackageManager packageManager = m().getPackageManager();
        String packageName = m().getPackageName();
        String installerPackageName = packageManager.getInstallerPackageName(packageName);
        if (installerPackageName == null) {
            installerPackageName = "manual_install";
        } else if ("com.android.vending".equals(installerPackageName)) {
            installerPackageName = TtmlNode.ANONYMOUS_REGION_ID;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(m().getPackageName(), 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                if (!TextUtils.isEmpty(applicationLabel)) {
                    str2 = applicationLabel.toString();
                }
                str = packageInfo.versionName;
            }
        } catch (NameNotFoundException e) {
            s().b().a("Error retrieving package info: appName", str2);
        }
        this.b = packageName;
        this.d = installerPackageName;
        this.c = str;
        this.e = str2;
        MessageDigest e2 = ag.e("MD5");
        if (e2 == null) {
            s().b().a("Could not get MD5 instance");
            this.f = -1;
        } else {
            this.f = 0;
            try {
                if (!z()) {
                    PackageInfo packageInfo2 = packageManager.getPackageInfo(m().getPackageName(), 64);
                    if (packageInfo2.signatures != null && packageInfo2.signatures.length > 0) {
                        this.f = ag.c(e2.digest(packageInfo2.signatures[0].toByteArray()));
                    }
                }
            } catch (NameNotFoundException e3) {
                s().b().a("Package name not found", e3);
            }
        }
        Status a = u().N() ? e.a(m(), "-", true) : e.a(m());
        boolean z = a != null && a.e();
        if (!z) {
            a(a);
        }
        if (z) {
            z = e.c();
            if (z) {
                s().z().a("AppMeasurement enabled");
            } else {
                s().x().a("AppMeasurement disabled with google_app_measurement_enable=0");
            }
        } else {
            z = false;
        }
        this.g = TtmlNode.ANONYMOUS_REGION_ID;
        if (!u().N()) {
            try {
                str = e.a();
                if (TextUtils.isEmpty(str)) {
                    str = TtmlNode.ANONYMOUS_REGION_ID;
                }
                this.g = str;
                if (z) {
                    s().z().a("App package, google app id", this.b, this.g);
                }
            } catch (IllegalStateException e4) {
                s().b().a("getGoogleAppId or isMeasurementEnabled failed with exception", e4);
            }
        }
    }

    protected void a(Status status) {
        if (status == null) {
            s().b().a("GoogleService failed to initialize (no status)");
        } else {
            s().b().a("GoogleService failed to initialize, status", Integer.valueOf(status.f()), status.c());
        }
    }

    String b() {
        G();
        return this.b;
    }

    String c() {
        G();
        return this.g;
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    public /* bridge */ /* synthetic */ void f() {
        super.f();
    }

    public /* bridge */ /* synthetic */ ai g() {
        return super.g();
    }

    public /* bridge */ /* synthetic */ d h() {
        return super.h();
    }

    public /* bridge */ /* synthetic */ ba i() {
        return super.i();
    }

    public /* bridge */ /* synthetic */ aq j() {
        return super.j();
    }

    public /* bridge */ /* synthetic */ i k() {
        return super.k();
    }

    public /* bridge */ /* synthetic */ vj l() {
        return super.l();
    }

    public /* bridge */ /* synthetic */ Context m() {
        return super.m();
    }

    public /* bridge */ /* synthetic */ ak n() {
        return super.n();
    }

    public /* bridge */ /* synthetic */ ag o() {
        return super.o();
    }

    public /* bridge */ /* synthetic */ bs p() {
        return super.p();
    }

    public /* bridge */ /* synthetic */ u q() {
        return super.q();
    }

    public /* bridge */ /* synthetic */ bt r() {
        return super.r();
    }

    public /* bridge */ /* synthetic */ bc s() {
        return super.s();
    }

    public /* bridge */ /* synthetic */ bn t() {
        return super.t();
    }

    public /* bridge */ /* synthetic */ aj u() {
        return super.u();
    }

    String v() {
        G();
        return this.c;
    }

    String w() {
        G();
        return this.d;
    }

    long x() {
        return u().M();
    }

    long y() {
        G();
        return this.f;
    }

    boolean z() {
        try {
            PackageInfo packageInfo = m().getPackageManager().getPackageInfo(m().getPackageName(), 64);
            if (!(packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0)) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(a);
            }
        } catch (CertificateException e) {
            s().b().a("Error obtaining certificate", e);
        } catch (NameNotFoundException e2) {
            s().b().a("Package name not found", e2);
        }
        return true;
    }
}
