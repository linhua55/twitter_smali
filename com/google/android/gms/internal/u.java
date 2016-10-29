package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.n;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import hv;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

public abstract class u implements t {
    protected static n i;
    protected MotionEvent a;
    protected LinkedList<MotionEvent> b;
    protected long c;
    protected long d;
    protected long e;
    protected long f;
    protected DisplayMetrics g;
    protected z h;
    private boolean j;

    protected u(Context context, z zVar) {
        this.b = new LinkedList();
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.j = false;
        this.h = zVar;
        try {
            this.g = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.g = new DisplayMetrics();
            this.g.density = 1.0f;
        }
    }

    private String a(Context context, String str, boolean z) {
        hv c;
        if (z) {
            try {
                c = c(context);
                this.j = true;
            } catch (NoSuchAlgorithmException e) {
                return Integer.toString(7);
            } catch (UnsupportedEncodingException e2) {
                return Integer.toString(7);
            } catch (IOException e3) {
                return Integer.toString(3);
            }
        }
        c = b(context);
        return (c == null || c.e() == 0) ? Integer.toString(5) : a(c, str);
    }

    public String a(Context context) {
        return a(context, null, false);
    }

    public String a(Context context, String str) {
        return a(context, str, true);
    }

    protected String a(hv hvVar, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException {
        return a(xs.a((xs) hvVar), str);
    }

    protected String a(String str) {
        if (str == null || !str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            return str;
        }
        UUID fromString = UUID.fromString(str);
        byte[] bArr = new byte[16];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(fromString.getMostSignificantBits());
        wrap.putLong(fromString.getLeastSignificantBits());
        return this.h.a(bArr, true);
    }

    String a(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException {
        byte[] bArr2;
        if (bArr.length > 239) {
            xs hvVar = new hv();
            hvVar.t = Long.valueOf(1);
            bArr = xs.a(hvVar);
        }
        if (bArr.length < 239) {
            bArr2 = new byte[(239 - bArr.length)];
            new SecureRandom().nextBytes(bArr2);
            bArr2 = ByteBuffer.allocate(PsExtractor.VIDEO_STREAM_MASK).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            bArr2 = ByteBuffer.allocate(PsExtractor.VIDEO_STREAM_MASK).put((byte) bArr.length).put(bArr).array();
        }
        MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.update(bArr2);
        bArr2 = ByteBuffer.allocate(256).put(instance.digest()).put(bArr2).array();
        byte[] bArr3 = new byte[256];
        new e().a(bArr2, bArr3);
        if (str != null && str.length() > 0) {
            a(str, bArr3);
        }
        return this.h.a(bArr3, true);
    }

    public void a(int i, int i2, int i3) {
        if (this.a != null) {
            this.a.recycle();
        }
        this.a = MotionEvent.obtain(0, (long) i3, 1, ((float) i) * this.g.density, ((float) i2) * this.g.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
    }

    public void a(MotionEvent motionEvent) {
        if (this.j) {
            this.f = 0;
            this.e = 0;
            this.d = 0;
            this.c = 0;
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            this.b.clear();
            this.a = null;
            this.j = false;
        }
        switch (motionEvent.getAction()) {
            case Util.TYPE_DASH /*0*/:
                this.c++;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a = MotionEvent.obtain(motionEvent);
                this.b.add(this.a);
                if (this.b.size() > 6) {
                    ((MotionEvent) this.b.remove()).recycle();
                }
                this.e++;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.d += (long) (motionEvent.getHistorySize() + 1);
            case Util.TYPE_OTHER /*3*/:
                this.f++;
            default:
        }
    }

    void a(String str, byte[] bArr) throws UnsupportedEncodingException {
        if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        new xl(str.getBytes(Util.UTF_8)).a(bArr);
    }

    protected abstract hv b(Context context);

    protected abstract hv c(Context context);
}
