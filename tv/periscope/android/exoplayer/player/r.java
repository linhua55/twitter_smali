package tv.periscope.android.exoplayer.player;

import android.util.Base64;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import tv.periscope.android.library.p;
import tv.periscope.android.video.rtmp.a;
import tv.periscope.android.video.rtmp.n;

/* compiled from: Twttr */
public class r extends q {
    public static final UUID f;
    private static final byte[] g;
    private MediaFormat h;
    private int i;
    private int j;
    private int k;
    private o l;
    private int m;

    static {
        g = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 1};
        f = UUID.fromString("62100F9A-A411-4E11-9141-482A1368BFD3");
    }

    public r(int i, int i2, String str, int i3, int i4, o oVar) {
        super(i, "video/avc", i2, str);
        this.h = null;
        this.k = 0;
        this.m = 0;
        this.i = i3;
        this.j = i4;
        this.l = oVar;
    }

    public long readDiscontinuity(int i) {
        return Long.MIN_VALUE;
    }

    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        if (this.h == null) {
            int indexOf = this.b.indexOf(44);
            String substring = this.b.substring(0, indexOf);
            String substring2 = this.b.substring(indexOf + 1);
            Object decode = Base64.decode(substring, 0);
            Object decode2 = Base64.decode(substring2, 0);
            Object obj = new byte[(decode.length + g.length)];
            System.arraycopy(g, 0, obj, 0, g.length);
            System.arraycopy(decode, 0, obj, g.length, decode.length);
            decode = new byte[(decode2.length + g.length)];
            System.arraycopy(g, 0, decode, 0, g.length);
            System.arraycopy(decode2, 0, decode, g.length, decode2.length);
            this.h = a(obj, decode);
            mediaFormatHolder.format = this.h;
            return -4;
        }
        n a;
        while (true) {
            a = a();
            if (a == null) {
                return -2;
            }
            byte[] bArr = a.e().a;
            if (bArr[1] == 1) {
                break;
            } else if (bArr[1] == null) {
                if (this.k == 0) {
                    this.k = (bArr[9] & 3) + 1;
                }
                this.e.a(a);
            }
        }
        int i2 = a.e().b;
        if (sampleHolder.data.capacity() < i2) {
            sampleHolder.ensureSpaceForWrite(i2);
        }
        int i3 = 5;
        Object obj2 = null;
        while (i3 < i2 - 4) {
            int a2 = (int) a(bArr, i3, this.k);
            i3 += this.k;
            if (i3 + a2 <= i2) {
                switch (bArr[i3] & 31) {
                    case p.Toolbar_contentInsetStart /*5*/:
                        decode2 = 1;
                        break;
                    case p.Toolbar_contentInsetEnd /*6*/:
                        a(bArr, i3, a2, a.d());
                        decode2 = obj2;
                        break;
                    case p.Toolbar_titleTextAppearance /*10*/:
                        this.l.d();
                        break;
                }
                decode2 = obj2;
                sampleHolder.data.put(g, 0, g.length);
                sampleHolder.data.put(bArr, i3, a2);
                i3 += a2;
            } else {
                decode2 = obj2;
            }
            obj2 = decode2;
        }
        if (obj2 != null) {
            synchronized (this) {
                this.m++;
            }
        }
        sampleHolder.flags = obj2 != null ? 1 : 0;
        sampleHolder.size = i2;
        sampleHolder.timeUs = a.d() * 1000;
        this.e.a(a);
        return -3;
    }

    private MediaFormat a(byte[] bArr, byte[] bArr2) {
        List arrayList = new ArrayList();
        arrayList.add(bArr);
        arrayList.add(bArr2);
        return MediaFormat.createVideoFormat(String.valueOf(this.c), "video/avc", this.d, -1, -1, this.i, this.j, arrayList);
    }

    private void a(byte[] bArr, int i, int i2, long j) {
        int i3 = 0;
        int i4 = 1;
        while (i4 < i2 && (bArr[i + i4] & 255) == 255) {
            i3 += 255;
            i4++;
        }
        int i5 = (bArr[i + i4] & 255) + i3;
        i4++;
        i3 = 0;
        while (i4 < i2 && (bArr[i + i4] & 255) == 255) {
            i3 += 255;
            i4++;
        }
        int i6 = (bArr[i + i4] & 255) + i3;
        i3 = i4 + 1;
        if (i5 == 5 && i6 > 16 && i6 <= i2 - i3) {
            ByteBuffer wrap = ByteBuffer.wrap(bArr, i + i3, 16);
            if (new UUID(wrap.getLong(), wrap.getLong()).equals(f)) {
                i3 += 16;
                i5 = i6 - 16;
                ByteBuffer allocate = ByteBuffer.allocate(i5);
                i4 = i3;
                i3 = 0;
                while (allocate.position() < i5 && i4 != i2) {
                    byte b = bArr[i + i4];
                    i4++;
                    if (i3 != 2) {
                        if (b == null) {
                            i3++;
                        } else {
                            i3 = 0;
                        }
                        allocate.put(b);
                    } else if (b == 3) {
                        i3 = 0;
                    } else {
                        return;
                    }
                }
                byte[] bArr2 = new byte[allocate.position()];
                allocate.rewind();
                allocate.get(bArr2);
                Object[] a = a.a(bArr2);
                if (a != null && a.length == 1) {
                    this.l.a((Map) a[0], j);
                }
            }
        }
    }

    public static long a(byte[] bArr, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j = (j << 8) | ((long) (bArr[i + i3] & 255));
        }
        return j;
    }
}
