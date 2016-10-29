package com.squareup.okhttp.v_1_5_1.internal.okio;

import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public final class OkBuffer implements BufferedSink, BufferedSource, Cloneable {
    Segment head;
    long size;

    public long size() {
        return this.size;
    }

    public OkBuffer buffer() {
        return this;
    }

    public OutputStream outputStream() {
        return new OutputStream() {
            public void write(int i) {
                OkBuffer.this.writeByte((byte) i);
            }

            public void write(byte[] bArr, int i, int i2) {
                OkBuffer.this.write(bArr, i, i2);
            }

            public void flush() {
            }

            public void close() {
            }

            public String toString() {
                return this + ".outputStream()";
            }
        };
    }

    public OkBuffer emitCompleteSegments() {
        return this;
    }

    public boolean exhausted() {
        return this.size == 0;
    }

    public void require(long j) throws EOFException {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    public long seek(byte b) throws EOFException {
        long indexOf = indexOf(b);
        if (indexOf != -1) {
            return indexOf;
        }
        throw new EOFException();
    }

    public InputStream inputStream() {
        return new InputStream() {
            public int read() {
                return OkBuffer.this.readByte() & NalUnitUtil.EXTENDED_SAR;
            }

            public int read(byte[] bArr, int i, int i2) {
                return OkBuffer.this.read(bArr, i, i2);
            }

            public int available() {
                return (int) Math.min(OkBuffer.this.size, 2147483647L);
            }

            public void close() {
            }

            public String toString() {
                return OkBuffer.this + ".inputStream()";
            }
        };
    }

    public long completeSegmentByteCount() {
        long j = this.size;
        if (j == 0) {
            return 0;
        }
        Segment segment = this.head.prev;
        if (segment.limit < 2048) {
            return j - ((long) (segment.limit - segment.pos));
        }
        return j;
    }

    public byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        this.size--;
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.INSTANCE.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    public byte getByte(long j) {
        Util.checkOffsetAndCount(this.size, j, 1);
        Segment segment = this.head;
        while (true) {
            int i = segment.limit - segment.pos;
            if (j < ((long) i)) {
                return segment.data[segment.pos + ((int) j)];
            }
            j -= (long) i;
            segment = segment.next;
        }
    }

    public short readShort() {
        if (this.size < 2) {
            throw new IllegalArgumentException("size < 2: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & NalUnitUtil.EXTENDED_SAR) << 8) | (readByte() & NalUnitUtil.EXTENDED_SAR));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & NalUnitUtil.EXTENDED_SAR) << 8) | (bArr[i3] & NalUnitUtil.EXTENDED_SAR);
        this.size -= 2;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.INSTANCE.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) i;
    }

    public int readInt() {
        if (this.size < 4) {
            throw new IllegalArgumentException("size < 4: " + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((((readByte() & NalUnitUtil.EXTENDED_SAR) << 24) | ((readByte() & NalUnitUtil.EXTENDED_SAR) << 16)) | ((readByte() & NalUnitUtil.EXTENDED_SAR) << 8)) | (readByte() & NalUnitUtil.EXTENDED_SAR);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        i = ((bArr[i] & NalUnitUtil.EXTENDED_SAR) << 24) | ((bArr[i3] & NalUnitUtil.EXTENDED_SAR) << 16);
        i3 = i4 + 1;
        i |= (bArr[i4] & NalUnitUtil.EXTENDED_SAR) << 8;
        i4 = i3 + 1;
        i |= bArr[i3] & NalUnitUtil.EXTENDED_SAR;
        this.size -= 4;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.INSTANCE.recycle(segment);
            return i;
        }
        segment.pos = i4;
        return i;
    }

    public int readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    public ByteString readByteString(long j) {
        return new ByteString(readBytes(j));
    }

    public String readUtf8(long j) {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        } else {
            Segment segment = this.head;
            if (((long) segment.pos) + j > ((long) segment.limit)) {
                try {
                    return new String(readBytes(j), Util.UTF_8);
                } catch (UnsupportedEncodingException e) {
                    throw new AssertionError(e);
                }
            }
            try {
                String str = new String(segment.data, segment.pos, (int) j, Util.UTF_8);
                segment.pos = (int) (((long) segment.pos) + j);
                this.size -= j;
                if (segment.pos != segment.limit) {
                    return str;
                }
                this.head = segment.pop();
                SegmentPool.INSTANCE.recycle(segment);
                return str;
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public String readUtf8Line(boolean z) throws EOFException {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            if (z) {
                throw new EOFException();
            } else if (this.size != 0) {
                return readUtf8(this.size);
            } else {
                return null;
            }
        } else if (indexOf <= 0 || getByte(indexOf - 1) != 13) {
            r0 = readUtf8(indexOf);
            skip(1);
            return r0;
        } else {
            r0 = readUtf8(indexOf - 1);
            skip(2);
            return r0;
        }
    }

    private byte[] readBytes(long j) {
        Util.checkOffsetAndCount(this.size, 0, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        int i = 0;
        Object obj = new byte[((int) j)];
        while (((long) i) < j) {
            int min = (int) Math.min(j - ((long) i), (long) (this.head.limit - this.head.pos));
            System.arraycopy(this.head.data, this.head.pos, obj, i, min);
            i += min;
            Segment segment = this.head;
            segment.pos = min + segment.pos;
            if (this.head.pos == this.head.limit) {
                Segment segment2 = this.head;
                this.head = segment2.pop();
                SegmentPool.INSTANCE.recycle(segment2);
            }
        }
        this.size -= j;
        return obj;
    }

    int read(byte[] bArr, int i, int i2) {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.limit - segment.pos);
        System.arraycopy(segment.data, segment.pos, bArr, i, min);
        segment.pos += min;
        this.size -= (long) min;
        if (segment.pos != segment.limit) {
            return min;
        }
        this.head = segment.pop();
        SegmentPool.INSTANCE.recycle(segment);
        return min;
    }

    public void clear() {
        skip(this.size);
    }

    public void skip(long j) {
        Util.checkOffsetAndCount(this.size, 0, j);
        this.size -= j;
        while (j > 0) {
            int min = (int) Math.min(j, (long) (this.head.limit - this.head.pos));
            j -= (long) min;
            Segment segment = this.head;
            segment.pos = min + segment.pos;
            if (this.head.pos == this.head.limit) {
                Segment segment2 = this.head;
                this.head = segment2.pop();
                SegmentPool.INSTANCE.recycle(segment2);
            }
        }
    }

    public OkBuffer write(ByteString byteString) {
        return write(byteString.data, 0, byteString.data.length);
    }

    public OkBuffer writeUtf8(String str) {
        try {
            byte[] bytes = str.getBytes(Util.UTF_8);
            return write(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public OkBuffer write(byte[] bArr) {
        return write(bArr, 0, bArr.length);
    }

    public OkBuffer write(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            Segment writableSegment = writableSegment(1);
            int min = Math.min(i3 - i, 2048 - writableSegment.limit);
            System.arraycopy(bArr, i, writableSegment.data, writableSegment.limit, min);
            i += min;
            writableSegment.limit = min + writableSegment.limit;
        }
        this.size += (long) i2;
        return this;
    }

    public OkBuffer writeByte(int i) {
        Segment writableSegment = writableSegment(1);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        writableSegment.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
        return this;
    }

    public OkBuffer writeShort(int i) {
        Segment writableSegment = writableSegment(2);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 8) & NalUnitUtil.EXTENDED_SAR);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & NalUnitUtil.EXTENDED_SAR);
        writableSegment.limit = i2;
        this.size += 2;
        return this;
    }

    public OkBuffer writeInt(int i) {
        Segment writableSegment = writableSegment(4);
        byte[] bArr = writableSegment.data;
        int i2 = writableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 24) & NalUnitUtil.EXTENDED_SAR);
        i2 = i3 + 1;
        bArr[i3] = (byte) ((i >> 16) & NalUnitUtil.EXTENDED_SAR);
        i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 8) & NalUnitUtil.EXTENDED_SAR);
        i2 = i3 + 1;
        bArr[i3] = (byte) (i & NalUnitUtil.EXTENDED_SAR);
        writableSegment.limit = i2;
        this.size += 4;
        return this;
    }

    Segment writableSegment(int i) {
        if (i < 1 || i > 2048) {
            throw new IllegalArgumentException();
        } else if (this.head == null) {
            this.head = SegmentPool.INSTANCE.take();
            Segment segment = this.head;
            Segment segment2 = this.head;
            r0 = this.head;
            segment2.prev = r0;
            segment.next = r0;
            return r0;
        } else {
            r0 = this.head.prev;
            if (r0.limit + i > 2048) {
                return r0.push(SegmentPool.INSTANCE.take());
            }
            return r0;
        }
    }

    public void write(OkBuffer okBuffer, long j) {
        if (okBuffer == this) {
            throw new IllegalArgumentException("source == this");
        }
        Util.checkOffsetAndCount(okBuffer.size, 0, j);
        while (j > 0) {
            Segment segment;
            if (j < ((long) (okBuffer.head.limit - okBuffer.head.pos))) {
                segment = this.head != null ? this.head.prev : null;
                if (segment == null || ((long) (segment.limit - segment.pos)) + j > 2048) {
                    okBuffer.head = okBuffer.head.split((int) j);
                } else {
                    okBuffer.head.writeTo(segment, (int) j);
                    okBuffer.size -= j;
                    this.size += j;
                    return;
                }
            }
            segment = okBuffer.head;
            long j2 = (long) (segment.limit - segment.pos);
            okBuffer.head = segment.pop();
            if (this.head == null) {
                this.head = segment;
                segment = this.head;
                Segment segment2 = this.head;
                Segment segment3 = this.head;
                segment2.prev = segment3;
                segment.next = segment3;
            } else {
                this.head.prev.push(segment).compact();
            }
            okBuffer.size -= j2;
            this.size += j2;
            j -= j2;
        }
    }

    public long read(OkBuffer okBuffer, long j) {
        if (this.size == 0) {
            return -1;
        }
        if (j > this.size) {
            j = this.size;
        }
        okBuffer.write(this, j);
        return j;
    }

    public OkBuffer deadline(Deadline deadline) {
        return this;
    }

    public long indexOf(byte b) {
        return indexOf(b, 0);
    }

    public long indexOf(byte b, long j) {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        long j2 = 0;
        do {
            int i = segment.limit - segment.pos;
            if (j > ((long) i)) {
                j -= (long) i;
            } else {
                byte[] bArr = segment.data;
                long j3 = (long) segment.limit;
                for (long j4 = ((long) segment.pos) + j; j4 < j3; j4++) {
                    if (bArr[(int) j4] == b) {
                        return (j2 + j4) - ((long) segment.pos);
                    }
                }
                j = 0;
            }
            j2 += (long) i;
            segment = segment.next;
        } while (segment != this.head);
        return -1;
    }

    public void flush() {
    }

    public void close() {
    }

    List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        List<Integer> arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.head.limit - this.head.pos));
        for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
            arrayList.add(Integer.valueOf(segment.limit - segment.pos));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (!(obj instanceof OkBuffer)) {
            return false;
        }
        OkBuffer okBuffer = (OkBuffer) obj;
        if (this.size != okBuffer.size) {
            return false;
        }
        if (this.size == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = okBuffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        while (j < this.size) {
            long min = (long) Math.min(segment.limit - i, segment2.limit - i2);
            int i3 = 0;
            while (((long) i3) < min) {
                int i4 = i + 1;
                byte b = segment.data[i];
                i = i2 + 1;
                if (b != segment2.data[i2]) {
                    return false;
                }
                i3++;
                i2 = i;
                i = i4;
            }
            if (i == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                i2 = segment2.pos;
            }
            j += min;
        }
        return true;
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.pos;
            while (i2 < segment.limit) {
                int i3 = segment.data[i2] + (i * 31);
                i2++;
                i = i3;
            }
            segment = segment.next;
        } while (segment != this.head);
        return i;
    }

    public String toString() {
        if (this.size == 0) {
            return "OkBuffer[size=0]";
        }
        if (this.size <= 16) {
            ByteString readByteString = clone().readByteString(this.size);
            return String.format("OkBuffer[size=%s data=%s]", new Object[]{Long.valueOf(this.size), readByteString.hex()});
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
            for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
                instance.update(segment.data, segment.pos, segment.limit - segment.pos);
            }
            return String.format("OkBuffer[size=%s md5=%s]", new Object[]{Long.valueOf(this.size), ByteString.of(instance.digest()).hex()});
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    public OkBuffer clone() {
        OkBuffer okBuffer = new OkBuffer();
        if (size() == 0) {
            return okBuffer;
        }
        okBuffer.write(this.head.data, this.head.pos, this.head.limit - this.head.pos);
        for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
            okBuffer.write(segment.data, segment.pos, segment.limit - segment.pos);
        }
        return okBuffer;
    }
}
