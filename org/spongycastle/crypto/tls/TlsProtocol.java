package org.spongycastle.crypto.tls;

import defpackage.cse;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class TlsProtocol {
    protected static final Integer h;
    protected static final Integer i;
    private ByteQueue a;
    private ByteQueue b;
    private ByteQueue c;
    private volatile boolean d;
    private volatile boolean e;
    private volatile boolean f;
    private volatile boolean g;
    protected RecordStream j;
    protected TlsSession k;
    protected SessionParameters l;
    protected SecurityParameters m;
    protected Certificate n;
    protected int[] o;
    protected short[] p;
    protected Hashtable q;
    protected Hashtable r;
    protected short s;
    protected boolean t;
    protected boolean u;
    protected boolean v;
    protected boolean w;
    protected boolean x;
    private byte[] y;

    /* compiled from: Twttr */
    class HandshakeMessage extends ByteArrayOutputStream {
        final /* synthetic */ TlsProtocol a;

        HandshakeMessage(TlsProtocol tlsProtocol, short s) throws IOException {
            this(tlsProtocol, s, 60);
        }

        HandshakeMessage(TlsProtocol tlsProtocol, short s, int i) throws IOException {
            this.a = tlsProtocol;
            super(i + 4);
            TlsUtils.a(s, (OutputStream) this);
            this.count += 3;
        }

        void a() throws IOException {
            int i = this.count - 4;
            TlsUtils.c(i);
            TlsUtils.b(i, this.buf, 1);
            this.a.c(this.buf, 0, this.count);
            this.buf = null;
        }
    }

    protected abstract AbstractTlsContext a();

    protected abstract void a(short s, byte[] bArr) throws IOException;

    protected abstract TlsPeer b();

    static {
        h = Integers.a(65281);
        i = Integers.a(35);
    }

    protected void d() throws IOException {
    }

    protected void a(short s) throws IOException {
    }

    protected void a(short s, byte[] bArr, int i, int i2) throws IOException {
        switch (s) {
            case p.Toolbar_navigationIcon /*20*/:
                d(bArr, i, i2);
            case p.Toolbar_navigationContentDescription /*21*/:
                this.b.a(bArr, i, i2);
                m();
            case p.Toolbar_logoDescription /*22*/:
                this.c.a(bArr, i, i2);
                c();
            case p.Toolbar_titleTextColor /*23*/:
                if (this.f) {
                    this.a.a(bArr, i, i2);
                    l();
                    return;
                }
                throw new TlsFatalAlert((short) 10);
            case p.Toolbar_subtitleTextColor /*24*/:
                if (!this.f) {
                    throw new TlsFatalAlert((short) 10);
                }
            default:
        }
    }

    private void c() throws IOException {
        int i;
        do {
            if (this.c.a() >= 4) {
                byte[] bArr = new byte[4];
                this.c.a(bArr, 0, 4, 0);
                InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                short a = TlsUtils.a(byteArrayInputStream);
                int c = TlsUtils.c(byteArrayInputStream);
                if (this.c.a() >= c + 4) {
                    byte[] a2 = this.c.a(c, 4);
                    switch (a) {
                        case p.View_android_theme /*0*/:
                            break;
                        case p.Toolbar_navigationIcon /*20*/:
                            if (this.y == null) {
                                this.y = a(!a().f());
                                break;
                            }
                            break;
                    }
                    this.j.a(bArr, 0, 4);
                    this.j.a(a2, 0, c);
                    a(a, a2);
                    i = 1;
                    continue;
                }
            }
            i = 0;
            continue;
        } while (i != 0);
    }

    private void l() {
    }

    private void m() throws IOException {
        while (this.b.a() >= 2) {
            byte[] a = this.b.a(2, 0);
            short s = (short) a[0];
            short s2 = (short) a[1];
            b().a(s, s2);
            if (s == (short) 2) {
                g();
                this.e = true;
                this.d = true;
                this.j.i();
                throw new IOException("Internal TLS error, this could be an attack");
            }
            if (s2 == (short) 0) {
                b(false);
            }
            a(s2);
        }
    }

    private void d(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            if (TlsUtils.a(bArr, i + i3) != (short) 1) {
                throw new TlsFatalAlert((short) 50);
            } else if (this.u || this.b.a() > 0 || this.c.a() > 0) {
                throw new TlsFatalAlert((short) 10);
            } else {
                this.j.d();
                this.u = true;
                d();
                i3++;
            }
        }
    }

    protected int e() throws IOException {
        return this.a.a();
    }

    protected int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 1) {
            return 0;
        }
        while (this.a.a() == 0) {
            if (!this.d) {
                f();
            } else if (!this.e) {
                return -1;
            } else {
                throw new IOException("Internal TLS error, this could be an attack");
            }
        }
        int min = Math.min(i2, this.a.a());
        this.a.b(bArr, i, min, 0);
        return min;
    }

    protected void f() throws IOException {
        try {
            if (!this.j.e()) {
                throw new EOFException();
            }
        } catch (Exception e) {
            if (!this.d) {
                a((short) 2, e.a(), "Failed to read record", e);
            }
            throw e;
        } catch (Exception e2) {
            if (!this.d) {
                a((short) 2, (short) 80, "Failed to read record", e2);
            }
            throw e2;
        } catch (Exception e22) {
            if (!this.d) {
                a((short) 2, (short) 80, "Failed to read record", e22);
            }
            throw e22;
        }
    }

    protected void b(short s, byte[] bArr, int i, int i2) throws IOException {
        try {
            this.j.a(s, bArr, i, i2);
        } catch (Exception e) {
            if (!this.d) {
                a((short) 2, e.a(), "Failed to write record", e);
            }
            throw e;
        } catch (Exception e2) {
            if (!this.d) {
                a((short) 2, (short) 80, "Failed to write record", e2);
            }
            throw e2;
        } catch (Exception e22) {
            if (!this.d) {
                a((short) 2, (short) 80, "Failed to write record", e22);
            }
            throw e22;
        }
    }

    protected void b(byte[] bArr, int i, int i2) throws IOException {
        if (!this.d) {
            int i3 = i2;
            int i4 = i;
            while (i3 > 0) {
                if (this.g) {
                    b((short) 23, bArr, i4, 1);
                    i4++;
                    i3--;
                }
                if (i3 > 0) {
                    int min = Math.min(i3, this.j.a());
                    b((short) 23, bArr, i4, min);
                    i4 += min;
                    i3 -= min;
                }
            }
        } else if (this.e) {
            throw new IOException("Internal TLS error, this could be an attack");
        } else {
            throw new IOException("Sorry, connection has been closed, you cannot write more data");
        }
    }

    protected void c(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.j.a());
            b((short) 22, bArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    protected void a(short s, short s2, String str, Exception exception) throws IOException {
        if (!this.d) {
            this.d = true;
            if (s == (short) 2) {
                g();
                this.e = true;
            }
            b(s, s2, str, exception);
            this.j.i();
            if (s != (short) 2) {
                return;
            }
        }
        throw new IOException("Internal TLS error, this could be an attack");
    }

    protected void g() {
        if (this.l != null) {
            this.l.a();
            this.l = null;
        }
        if (this.k != null) {
            this.k.b();
            this.k = null;
        }
    }

    protected void c(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] b = TlsUtils.b(this.y.length, (InputStream) byteArrayInputStream);
        d(byteArrayInputStream);
        if (!Arrays.b(this.y, b)) {
            throw new TlsFatalAlert((short) 51);
        }
    }

    protected void b(short s, short s2, String str, Exception exception) throws IOException {
        b().a(s, s2, str, exception);
        b((short) 21, new byte[]{(byte) s, (byte) s2}, 0, 2);
    }

    protected void a(short s, String str) throws IOException {
        b((short) 1, s, str, null);
    }

    protected void a(Certificate certificate) throws IOException {
        if (certificate == null) {
            certificate = Certificate.a;
        }
        if (certificate.b() == 0 && !a().f()) {
            ProtocolVersion e = a().e();
            if (e.d()) {
                a((short) 41, e.toString() + " client didn't provide credentials");
                return;
            }
        }
        OutputStream handshakeMessage = new HandshakeMessage(this, (short) 11);
        certificate.a(handshakeMessage);
        handshakeMessage.a();
    }

    protected void h() throws IOException {
        byte[] bArr = new byte[]{(byte) 1};
        b((short) 20, bArr, 0, bArr.length);
        this.j.c();
    }

    protected void i() throws IOException {
        byte[] a = a(a().f());
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, (short) 20, a.length);
        handshakeMessage.write(a);
        handshakeMessage.a();
    }

    protected void b(Vector vector) throws IOException {
        OutputStream handshakeMessage = new HandshakeMessage(this, (short) 23);
        a(handshakeMessage, vector);
        handshakeMessage.a();
    }

    protected byte[] a(boolean z) {
        TlsContext a = a();
        if (z) {
            return TlsUtils.a(a, "server finished", a(a(), this.j.g(), TlsUtils.d));
        }
        return TlsUtils.a(a, "client finished", a(a(), this.j.g(), TlsUtils.c));
    }

    public void j() throws IOException {
        b(true);
    }

    protected void b(boolean z) throws IOException {
        if (!this.d) {
            if (z && !this.f) {
                a((short) 90, "User canceled handshake");
            }
            a((short) 1, (short) 0, "Connection closed", null);
        }
    }

    protected void k() throws IOException {
        this.j.j();
    }

    protected short a(Hashtable hashtable, Hashtable hashtable2, short s) throws IOException {
        short b = TlsExtensionsUtils.b(hashtable2);
        if (b < (short) 0 || this.t || b == TlsExtensionsUtils.b(hashtable)) {
            return b;
        }
        throw new TlsFatalAlert(s);
    }

    protected static void d(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() > 0) {
            throw new TlsFatalAlert((short) 50);
        }
    }

    protected static byte[] a(byte[] bArr) throws IOException {
        return TlsUtils.a(bArr);
    }

    protected static void a(TlsContext tlsContext, TlsKeyExchange tlsKeyExchange) throws IOException {
        byte[] f = tlsKeyExchange.f();
        try {
            tlsContext.c().f = TlsUtils.a(tlsContext, f);
            if (f != null) {
                Arrays.a(f, (byte) 0);
            }
        } catch (Throwable th) {
            if (f != null) {
                Arrays.a(f, (byte) 0);
            }
        }
    }

    protected static byte[] a(TlsContext tlsContext, TlsHandshakeHash tlsHandshakeHash, byte[] bArr) {
        Digest g = tlsHandshakeHash.g();
        if (bArr != null && TlsUtils.a(tlsContext)) {
            g.a(bArr, 0, bArr.length);
        }
        byte[] bArr2 = new byte[g.b()];
        g.a(bArr2, 0);
        return bArr2;
    }

    protected static Hashtable e(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() < 1) {
            return null;
        }
        byte[] f = TlsUtils.f((InputStream) byteArrayInputStream);
        d(byteArrayInputStream);
        InputStream byteArrayInputStream2 = new ByteArrayInputStream(f);
        Hashtable hashtable = new Hashtable();
        while (byteArrayInputStream2.available() > 0) {
            if (hashtable.put(Integers.a(TlsUtils.b(byteArrayInputStream2)), TlsUtils.f(byteArrayInputStream2)) != null) {
                throw new TlsFatalAlert((short) 47);
            }
        }
        return hashtable;
    }

    protected static Vector f(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] g = TlsUtils.g((InputStream) byteArrayInputStream);
        d(byteArrayInputStream);
        InputStream byteArrayInputStream2 = new ByteArrayInputStream(g);
        Vector vector = new Vector();
        while (byteArrayInputStream2.available() > 0) {
            vector.addElement(new SupplementalDataEntry(TlsUtils.b(byteArrayInputStream2), TlsUtils.f(byteArrayInputStream2)));
        }
        return vector;
    }

    protected static void a(OutputStream outputStream, Hashtable hashtable) throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            int intValue = num.intValue();
            byte[] bArr = (byte[]) hashtable.get(num);
            TlsUtils.b(intValue);
            TlsUtils.b(intValue, byteArrayOutputStream);
            TlsUtils.b(bArr, byteArrayOutputStream);
        }
        TlsUtils.b(byteArrayOutputStream.toByteArray(), outputStream);
    }

    protected static void a(OutputStream outputStream, Vector vector) throws IOException {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i < vector.size(); i++) {
            SupplementalDataEntry supplementalDataEntry = (SupplementalDataEntry) vector.elementAt(i);
            int a = supplementalDataEntry.a();
            TlsUtils.b(a);
            TlsUtils.b(a, byteArrayOutputStream);
            TlsUtils.b(supplementalDataEntry.b(), byteArrayOutputStream);
        }
        TlsUtils.c(byteArrayOutputStream.toByteArray(), outputStream);
    }

    protected static int a(TlsContext tlsContext, int i) throws IOException {
        boolean c = TlsUtils.c(tlsContext);
        switch (i) {
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
            case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
            case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
            case cse.AppCompatTheme_checkedTextViewStyle /*103*/:
            case cse.AppCompatTheme_editTextStyle /*104*/:
            case cse.AppCompatTheme_radioButtonStyle /*105*/:
            case cse.AppCompatTheme_ratingBarStyle /*106*/:
            case cse.AppCompatTheme_ratingBarStyleIndicator /*107*/:
            case 156:
            case 158:
            case 160:
            case 162:
            case 164:
            case 168:
            case 170:
            case 172:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
            case 197:
            case 49187:
            case 49189:
            case 49191:
            case 49193:
            case 49195:
            case 49197:
            case 49199:
            case 49201:
            case 49266:
            case 49268:
            case 49270:
            case 49272:
            case 49274:
            case 49276:
            case 49278:
            case 49280:
            case 49282:
            case 49284:
            case 49286:
            case 49288:
            case 49290:
            case 49292:
            case 49294:
            case 49296:
            case 49298:
            case 49308:
            case 49309:
            case 49310:
            case 49311:
            case 49312:
            case 49313:
            case 49314:
            case 49315:
            case 49316:
            case 49317:
            case 49318:
            case 49319:
            case 49320:
            case 49321:
            case 49322:
            case 49323:
            case 52243:
            case 52244:
            case 52245:
                if (c) {
                    return 1;
                }
                throw new TlsFatalAlert((short) 47);
            case 157:
            case 159:
            case 161:
            case 163:
            case 165:
            case 169:
            case 171:
            case 173:
            case 49188:
            case 49190:
            case 49192:
            case 49194:
            case 49196:
            case 49198:
            case 49200:
            case 49202:
            case 49267:
            case 49269:
            case 49271:
            case 49273:
            case 49275:
            case 49277:
            case 49279:
            case 49281:
            case 49283:
            case 49285:
            case 49287:
            case 49289:
            case 49291:
            case 49293:
            case 49295:
            case 49297:
            case 49299:
                if (c) {
                    return 2;
                }
                throw new TlsFatalAlert((short) 47);
            case 175:
            case 177:
            case 179:
            case 181:
            case 183:
            case 185:
            case 49208:
            case 49211:
            case 49301:
            case 49303:
            case 49305:
            case 49307:
                if (c) {
                    return 2;
                }
                return 0;
            default:
                if (c) {
                    return 1;
                }
                return 0;
        }
    }
}
