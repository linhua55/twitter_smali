package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.bm;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Map.Entry;

@WorkerThread
class bj implements Runnable {
    final /* synthetic */ bf a;
    private final URL b;
    private final byte[] c;
    private final bh d;
    private final String e;
    private final Map<String, String> f;

    public bj(bf bfVar, String str, URL url, byte[] bArr, Map<String, String> map, bh bhVar) {
        this.a = bfVar;
        bm.a(str);
        bm.a(url);
        bm.a(bhVar);
        this.b = url;
        this.c = bArr;
        this.d = bhVar;
        this.e = str;
        this.f = map;
    }

    public void run() {
        Throwable e;
        int i;
        HttpURLConnection httpURLConnection;
        Throwable th;
        this.a.e();
        int i2 = 0;
        HttpURLConnection a;
        OutputStream outputStream;
        try {
            a = this.a.a(this.b);
            try {
                if (this.f != null) {
                    for (Entry entry : this.f.entrySet()) {
                        a.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                if (this.c != null) {
                    byte[] a2 = this.a.o().a(this.c);
                    this.a.s().z().a("Uploading data. size", Integer.valueOf(a2.length));
                    a.setDoOutput(true);
                    a.addRequestProperty("Content-Encoding", "gzip");
                    a.setFixedLengthStreamingMode(a2.length);
                    a.connect();
                    outputStream = a.getOutputStream();
                    try {
                        outputStream.write(a2);
                        outputStream.close();
                        outputStream = null;
                    } catch (IOException e2) {
                        e = e2;
                        i = 0;
                        httpURLConnection = a;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e3) {
                                this.a.s().b().a("Error closing HTTP compressed POST connection output stream", e3);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        this.a.r().a(new bi(this.d, i, e, null, null));
                    } catch (Throwable th2) {
                        th = th2;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e32) {
                                this.a.s().b().a("Error closing HTTP compressed POST connection output stream", e32);
                            }
                        }
                        if (a != null) {
                            a.disconnect();
                        }
                        this.a.r().a(new bi(this.d, i2, null, null, null));
                        throw th;
                    }
                }
                outputStream = null;
                i2 = a.getResponseCode();
                byte[] a3 = this.a.a(a);
                if (null != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e322) {
                        this.a.s().b().a("Error closing HTTP compressed POST connection output stream", e322);
                    }
                }
                if (a != null) {
                    a.disconnect();
                }
                this.a.r().a(new bi(this.d, i2, null, a3, null));
            } catch (IOException e4) {
                e = e4;
                i = i2;
                outputStream = null;
                httpURLConnection = a;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                this.a.r().a(new bi(this.d, i, e, null, null));
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (a != null) {
                    a.disconnect();
                }
                this.a.r().a(new bi(this.d, i2, null, null, null));
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            i = 0;
            outputStream = null;
            httpURLConnection = null;
            if (outputStream != null) {
                outputStream.close();
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            this.a.r().a(new bi(this.d, i, e, null, null));
        } catch (Throwable th32) {
            th = th32;
            a = null;
            outputStream = null;
            if (outputStream != null) {
                outputStream.close();
            }
            if (a != null) {
                a.disconnect();
            }
            this.a.r().a(new bi(this.d, i2, null, null, null));
            throw th;
        }
    }
}
