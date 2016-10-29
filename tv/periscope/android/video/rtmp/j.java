package tv.periscope.android.video.rtmp;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.Semaphore;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class j implements Runnable {
    private l a;
    private Thread b;
    private Socket c;
    private String d;
    private int e;
    private InputStream f;
    private m g;
    private boolean h;
    private h i;
    private h j;

    public j() {
        this.h = false;
        this.i = new h();
        this.j = new h();
    }

    public void a(String str, int i, boolean z, l lVar) {
        this.a = lVar;
        this.d = str;
        this.e = i;
        this.h = z;
        this.b = new Thread(this);
        this.b.start();
    }

    public void a() {
        try {
            if (this.g != null) {
                this.g.a();
            }
            this.b.interrupt();
            this.c.close();
            if (Thread.currentThread() != this.b) {
                this.b.join();
            }
        } catch (Exception e) {
        }
        this.i.a();
    }

    public void a(i iVar) {
        this.i.a(iVar);
    }

    public void run() {
        byte[] bArr = new byte[32768];
        try {
            if (this.h) {
                SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket(this.d, this.e);
                Semaphore semaphore = new Semaphore(0);
                sSLSocket.addHandshakeCompletedListener(new k(this, semaphore));
                sSLSocket.startHandshake();
                semaphore.acquire();
                this.c = sSLSocket;
            } else {
                this.c = new Socket(this.d, this.e);
            }
            this.g = new m(this);
            this.a.a(this);
            this.c.setSoTimeout(50);
            this.f = this.c.getInputStream();
            while (true) {
                int read;
                try {
                    read = this.f.read(bArr, 0, 32768);
                } catch (SocketTimeoutException e) {
                    this.c.setSoTimeout(ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS);
                    read = 0;
                }
                if (read > 0) {
                    try {
                        i b;
                        this.c.setSoTimeout(50);
                        while (true) {
                            b = this.i.b(read);
                            if (b != null) {
                                break;
                            }
                            try {
                                Thread.sleep(10);
                            } catch (InterruptedException e2) {
                            }
                        }
                        b.a(bArr, read);
                        this.a.a(this, b);
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        this.a.b(this);
                        return;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            this.a.b(this);
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.g != null) {
            this.g.a(bArr, i, i2);
        }
    }
}
