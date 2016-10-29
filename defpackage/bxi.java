package defpackage;

import com.google.android.exoplayer.util.NalUnitUtil;
import com.twitter.media.model.AnimatedGifFile;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bxi */
public class bxi extends FilterInputStream {
    private final List<bxk> a;
    private int b;
    private int c;

    public bxi(AnimatedGifFile animatedGifFile, List<bxk> list) throws FileNotFoundException {
        this(new FileInputStream(animatedGifFile.d), (List) list);
    }

    public bxi(InputStream inputStream, List<bxk> list) {
        super(inputStream);
        this.c = 0;
        this.a = list;
        this.b = 0;
    }

    public boolean markSupported() {
        return false;
    }

    public int read() throws IOException {
        int i = this.b;
        this.b++;
        int read = super.read();
        bxk a = a(i);
        if (a == null) {
            return read;
        }
        int a2 = bxi.a(a);
        if (i == a2) {
            return (a.b / 10) & NalUnitUtil.EXTENDED_SAR;
        }
        if (i != a2 + 1) {
            return read;
        }
        read = ((a.b / 10) >> 8) & NalUnitUtil.EXTENDED_SAR;
        this.c++;
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        int i3 = this.b;
        this.b += read;
        bxk a = a(i3);
        while (a != null) {
            int a2 = bxi.a(a);
            if (a2 < this.b) {
                int i4 = (a2 - i3) + i;
                if (i4 >= i) {
                    bArr[i4] = (byte) (a.b / 10);
                }
                if (a2 + 1 >= this.b) {
                    break;
                }
                i4++;
                if (i4 >= i) {
                    bArr[i4] = (byte) ((a.b / 10) >> 8);
                }
                a = a(a2 + 2);
            } else {
                break;
            }
        }
        return read;
    }

    public long skip(long j) throws IOException {
        int skip = (int) super.skip(j);
        this.b += skip;
        return (long) skip;
    }

    private bxk a(int i) {
        int size = this.a.size();
        while (this.c < size) {
            bxk bxk = (bxk) this.a.get(this.c);
            if (bxk.a != bxk.b && (bxk.d + 4) + 1 >= i) {
                return bxk;
            }
            this.c++;
        }
        return null;
    }

    private static int a(bxk bxk) {
        return bxk.d + 4;
    }
}
