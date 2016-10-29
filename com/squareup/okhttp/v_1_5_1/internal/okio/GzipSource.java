package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: Twttr */
public final class GzipSource implements Source {
    private static final byte FCOMMENT = (byte) 4;
    private static final byte FEXTRA = (byte) 2;
    private static final byte FHCRC = (byte) 1;
    private static final byte FNAME = (byte) 3;
    private static final byte SECTION_BODY = (byte) 1;
    private static final byte SECTION_DONE = (byte) 3;
    private static final byte SECTION_HEADER = (byte) 0;
    private static final byte SECTION_TRAILER = (byte) 2;
    private final CRC32 crc;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private int section;
    private final BufferedSource source;

    public GzipSource(Source source) throws IOException {
        this.section = 0;
        this.crc = new CRC32();
        this.inflater = new Inflater(true);
        this.source = Okio.buffer(source);
        this.inflaterSource = new InflaterSource(this.source, this.inflater);
    }

    public long read(OkBuffer okBuffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j == 0) {
            return 0;
        } else {
            if (this.section == 0) {
                consumeHeader();
                this.section = 1;
            }
            if (this.section == 1) {
                long j2 = okBuffer.size;
                long read = this.inflaterSource.read(okBuffer, j);
                if (read != -1) {
                    updateCrc(okBuffer, j2, read);
                    return read;
                }
                this.section = 2;
            }
            if (this.section == 2) {
                consumeTrailer();
                this.section = 3;
                if (!this.source.exhausted()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    private void consumeHeader() throws IOException {
        this.source.require(10);
        byte b = this.source.buffer().getByte(3);
        Object obj = ((b >> 1) & 1) == 1 ? 1 : SECTION_HEADER;
        if (obj != null) {
            updateCrc(this.source.buffer(), 0, 10);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8);
        if (((b >> 2) & 1) == 1) {
            this.source.require(2);
            if (obj != null) {
                updateCrc(this.source.buffer(), 0, 2);
            }
            int readShortLe = this.source.buffer().readShortLe() & 65535;
            this.source.require((long) readShortLe);
            if (obj != null) {
                updateCrc(this.source.buffer(), 0, (long) readShortLe);
            }
            this.source.skip((long) readShortLe);
        }
        if (((b >> 3) & 1) == 1) {
            long seek = this.source.seek(SECTION_HEADER);
            if (obj != null) {
                updateCrc(this.source.buffer(), 0, seek + 1);
            }
            this.source.skip(seek + 1);
        }
        if (((b >> 4) & 1) == 1) {
            long seek2 = this.source.seek(SECTION_HEADER);
            if (obj != null) {
                updateCrc(this.source.buffer(), 0, seek2 + 1);
            }
            this.source.skip(seek2 + 1);
        }
        if (obj != null) {
            checkEqual("FHCRC", this.source.readShortLe(), (short) ((int) this.crc.getValue()));
            this.crc.reset();
        }
    }

    private void consumeTrailer() throws IOException {
        checkEqual("CRC", this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual("ISIZE", this.source.readIntLe(), this.inflater.getTotalOut());
    }

    public Source deadline(Deadline deadline) {
        this.source.deadline(deadline);
        return this;
    }

    public void close() throws IOException {
        this.inflaterSource.close();
    }

    private void updateCrc(OkBuffer okBuffer, long j, long j2) {
        Segment segment = okBuffer.head;
        long j3 = j2;
        while (j3 > 0) {
            int i = segment.limit - segment.pos;
            if (j < ((long) i)) {
                int min = (int) Math.min(j3, ((long) i) - j);
                this.crc.update(segment.data, (int) (((long) segment.pos) + j), min);
                j3 -= (long) min;
            }
            j -= (long) i;
            segment = segment.next;
        }
    }

    private void checkEqual(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}));
        }
    }
}
