package tv.periscope.android.video.rtmp;

import defpackage.dcv;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

/* compiled from: Twttr */
class g implements Runnable {
    public boolean a;
    final /* synthetic */ f b;
    private final Thread c;
    private DatagramSocket d;

    public g(f fVar) {
        this.b = fVar;
        this.a = true;
        this.d = null;
        this.c = new Thread(this);
        this.c.start();
    }

    private long a(byte[] bArr, int i) {
        return ((a.b(bArr, i) - 2208988800L) * 1000) + ((a.b(bArr, i + 4) * 1000) / 4294967296L);
    }

    private void a(byte[] bArr, int i, long j) {
        long j2 = (j / 1000) + 2208988800L;
        Connection.a(j2, bArr, i);
        Connection.a(((j - (j2 * 1000)) * 4294967296L) / 1000, bArr, i + 4);
    }

    public void run() {
        long currentTimeMillis;
        long nanoTime;
        long a;
        long a2;
        long a3;
        while (true) {
            try {
                boolean z;
                this.d = new DatagramSocket();
                this.d.setSoTimeout(800);
                SocketAddress inetSocketAddress = new InetSocketAddress("pool.ntp.org", 123);
                currentTimeMillis = System.currentTimeMillis();
                nanoTime = System.nanoTime();
                byte[] bArr = new byte[48];
                bArr[0] = (byte) 27;
                a(bArr, 40, currentTimeMillis);
                this.d.send(new DatagramPacket(bArr, bArr.length, inetSocketAddress));
                try {
                    this.d.receive(new DatagramPacket(bArr, bArr.length));
                    z = true;
                } catch (InterruptedIOException e) {
                    z = false;
                }
                if (z) {
                    nanoTime = ((System.nanoTime() - nanoTime) / 1000000) + currentTimeMillis;
                    a = a(bArr, 24);
                    a2 = a(bArr, 32);
                    a3 = a(bArr, 40);
                    currentTimeMillis = (nanoTime - currentTimeMillis) - (a3 - a2);
                    if (currentTimeMillis < 250) {
                        break;
                    }
                    dcv.e("NTPTime", "Round-trip msecs: " + currentTimeMillis);
                }
                Thread thread = this.c;
                Thread.sleep(500);
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                    return;
                } finally {
                    this.a = false;
                }
            }
        }
        nanoTime = ((a3 - nanoTime) + (a2 - a)) / 2;
        synchronized (this.b) {
            this.b.b = nanoTime;
            this.b.d = System.currentTimeMillis();
        }
        dcv.e("NTPTime", "Clock offset: " + nanoTime + " roundtrip: " + currentTimeMillis + " msecs");
        this.d.close();
        this.d = null;
        this.a = false;
    }
}
