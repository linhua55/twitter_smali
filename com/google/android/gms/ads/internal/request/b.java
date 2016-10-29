package com.google.android.gms.ads.internal.request;

import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.vq;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class b implements Runnable {
    final /* synthetic */ OutputStream a;
    final /* synthetic */ byte[] b;
    final /* synthetic */ LargeParcelTeleporter c;

    b(LargeParcelTeleporter largeParcelTeleporter, OutputStream outputStream, byte[] bArr) {
        this.c = largeParcelTeleporter;
        this.a = outputStream;
        this.b = bArr;
    }

    public void run() {
        Closeable dataOutputStream;
        Throwable e;
        try {
            dataOutputStream = new DataOutputStream(this.a);
            try {
                dataOutputStream.writeInt(this.b.length);
                dataOutputStream.write(this.b);
                if (dataOutputStream == null) {
                    vq.a(this.a);
                } else {
                    vq.a(dataOutputStream);
                }
            } catch (IOException e2) {
                e = e2;
                try {
                    qd.b("Error transporting the ad response", e);
                    ar.h().a(e, true);
                    if (dataOutputStream != null) {
                        vq.a(this.a);
                    } else {
                        vq.a(dataOutputStream);
                    }
                } catch (Throwable th) {
                    e = th;
                    if (dataOutputStream != null) {
                        vq.a(dataOutputStream);
                    } else {
                        vq.a(this.a);
                    }
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            dataOutputStream = null;
            qd.b("Error transporting the ad response", e);
            ar.h().a(e, true);
            if (dataOutputStream != null) {
                vq.a(dataOutputStream);
            } else {
                vq.a(this.a);
            }
        } catch (Throwable th2) {
            e = th2;
            dataOutputStream = null;
            if (dataOutputStream != null) {
                vq.a(this.a);
            } else {
                vq.a(dataOutputStream);
            }
            throw e;
        }
    }
}
