package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import com.squareup.okhttp.v_1_5_1.internal.spdy.FrameReader.Handler;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public final class Http20Draft09 implements Variant {
    private static final ByteString CONNECTION_HEADER;
    static final byte FLAG_ACK = (byte) 1;
    static final byte FLAG_END_HEADERS = (byte) 4;
    static final byte FLAG_END_PUSH_PROMISE = (byte) 4;
    static final byte FLAG_END_STREAM = (byte) 1;
    static final byte FLAG_NONE = (byte) 0;
    static final byte FLAG_PRIORITY = (byte) 8;
    static final byte TYPE_CONTINUATION = (byte) 10;
    static final byte TYPE_DATA = (byte) 0;
    static final byte TYPE_GOAWAY = (byte) 7;
    static final byte TYPE_HEADERS = (byte) 1;
    static final byte TYPE_PING = (byte) 6;
    static final byte TYPE_PRIORITY = (byte) 2;
    static final byte TYPE_PUSH_PROMISE = (byte) 5;
    static final byte TYPE_RST_STREAM = (byte) 3;
    static final byte TYPE_SETTINGS = (byte) 4;
    static final byte TYPE_WINDOW_UPDATE = (byte) 9;

    /* compiled from: Twttr */
    final class ContinuationSource implements Source {
        byte flags;
        int left;
        int length;
        private final BufferedSource source;
        int streamId;

        public ContinuationSource(BufferedSource bufferedSource) {
            this.source = bufferedSource;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            while (this.left == 0) {
                if ((this.flags & 4) != 0) {
                    return -1;
                }
                readContinuationHeader();
            }
            long read = this.source.read(okBuffer, Math.min(j, (long) this.left));
            if (read == -1) {
                return -1;
            }
            this.left = (int) (((long) this.left) - read);
            return read;
        }

        public Source deadline(Deadline deadline) {
            this.source.deadline(deadline);
            return this;
        }

        public void close() throws IOException {
        }

        private void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            short s = (short) ((1073676288 & readInt) >> 16);
            this.left = s;
            this.length = s;
            byte b = (byte) ((65280 & readInt) >> 8);
            this.flags = (byte) (readInt & NalUnitUtil.EXTENDED_SAR);
            this.streamId = Integer.MAX_VALUE & readInt2;
            if (b != 10) {
                throw Http20Draft09.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(b));
            } else if (this.streamId != i) {
                throw Http20Draft09.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
    }

    /* compiled from: Twttr */
    final class Reader implements FrameReader {
        private final boolean client;
        private final ContinuationSource continuation;
        final Reader hpackReader;
        private final BufferedSource source;

        Reader(BufferedSource bufferedSource, int i, boolean z) {
            this.source = bufferedSource;
            this.client = z;
            this.continuation = new ContinuationSource(this.source);
            this.hpackReader = new Reader(z, i, this.continuation);
        }

        public void readConnectionHeader() throws IOException {
            if (!this.client) {
                if (!Http20Draft09.CONNECTION_HEADER.equals(this.source.readByteString((long) Http20Draft09.CONNECTION_HEADER.size()))) {
                    throw Http20Draft09.ioException("Expected a connection header but was %s", this.source.readByteString((long) Http20Draft09.CONNECTION_HEADER.size()).utf8());
                }
            }
        }

        public boolean nextFrame(Handler handler) throws IOException {
            try {
                int readInt = this.source.readInt();
                short s = (short) ((1073676288 & readInt) >> 16);
                byte b = (byte) ((65280 & readInt) >> 8);
                byte b2 = (byte) (readInt & NalUnitUtil.EXTENDED_SAR);
                int readInt2 = this.source.readInt() & Integer.MAX_VALUE;
                switch (b) {
                    case Util.TYPE_DASH /*0*/:
                        readData(handler, s, b2, readInt2);
                        break;
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        readHeaders(handler, s, b2, readInt2);
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        readPriority(handler, s, b2, readInt2);
                        break;
                    case Util.TYPE_OTHER /*3*/:
                        readRstStream(handler, s, b2, readInt2);
                        break;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        readSettings(handler, s, b2, readInt2);
                        break;
                    case EbmlReader.TYPE_FLOAT /*5*/:
                        readPushPromise(handler, s, b2, readInt2);
                        break;
                    case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                        readPing(handler, s, b2, readInt2);
                        break;
                    case C.ENCODING_DTS /*7*/:
                        readGoAway(handler, s, b2, readInt2);
                        break;
                    case b.ShimmerFrameLayout_fixed_height /*9*/:
                        readWindowUpdate(handler, s, b2, readInt2);
                        break;
                    default:
                        this.source.skip((long) s);
                        break;
                }
                return true;
            } catch (IOException e) {
                return false;
            }
        }

        private void readHeaders(Handler handler, short s, byte b, int i) throws IOException {
            if (i == 0) {
                throw Http20Draft09.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            int readInt;
            boolean z = (b & 1) != 0;
            if ((b & 8) != 0) {
                readInt = this.source.readInt() & Integer.MAX_VALUE;
                s = (short) (s - 4);
            } else {
                readInt = -1;
            }
            handler.headers(false, z, i, -1, readInt, readHeaderBlock(s, b, i), HeadersMode.HTTP_20_HEADERS);
        }

        private List<Header> readHeaderBlock(short s, byte b, int i) throws IOException {
            ContinuationSource continuationSource = this.continuation;
            this.continuation.left = s;
            continuationSource.length = s;
            this.continuation.flags = b;
            this.continuation.streamId = i;
            this.hpackReader.readHeaders();
            this.hpackReader.emitReferenceSet();
            return this.hpackReader.getAndReset();
        }

        private void readData(Handler handler, short s, byte b, int i) throws IOException {
            handler.data((b & 1) != 0, i, this.source, s);
        }

        private void readPriority(Handler handler, short s, byte b, int i) throws IOException {
            if (s != (short) 4) {
                throw Http20Draft09.ioException("TYPE_PRIORITY length: %d != 4", Short.valueOf(s));
            } else if (i == 0) {
                throw Http20Draft09.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
            } else {
                handler.priority(i, this.source.readInt() & Integer.MAX_VALUE);
            }
        }

        private void readRstStream(Handler handler, short s, byte b, int i) throws IOException {
            if (s != (short) 4) {
                throw Http20Draft09.ioException("TYPE_RST_STREAM length: %d != 4", Short.valueOf(s));
            } else if (i == 0) {
                throw Http20Draft09.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
            } else {
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(this.source.readInt());
                if (fromHttp2 == null) {
                    throw Http20Draft09.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(r0));
                } else {
                    handler.rstStream(i, fromHttp2);
                }
            }
        }

        private void readSettings(Handler handler, short s, byte b, int i) throws IOException {
            if (i != 0) {
                throw Http20Draft09.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
            } else if ((b & 1) != 0) {
                if (s != (short) 0) {
                    throw Http20Draft09.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
            } else if (s % 8 != 0) {
                throw Http20Draft09.ioException("TYPE_SETTINGS length %% 8 != 0: %s", Short.valueOf(s));
            } else {
                Settings settings = new Settings();
                for (short s2 = (short) 0; s2 < s; s2 += 8) {
                    settings.set(this.source.readInt() & 16777215, 0, this.source.readInt());
                }
                handler.settings(false, settings);
                if (settings.getHeaderTableSize() >= 0) {
                    this.hpackReader.maxHeaderTableByteCount(settings.getHeaderTableSize());
                }
            }
        }

        private void readPushPromise(Handler handler, short s, byte b, int i) throws IOException {
            if (i == 0) {
                throw Http20Draft09.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            handler.pushPromise(i, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock((short) (s - 4), b, i));
        }

        private void readPing(Handler handler, short s, byte b, int i) throws IOException {
            boolean z = true;
            if (s != (short) 8) {
                throw Http20Draft09.ioException("TYPE_PING length != 8: %s", Short.valueOf(s));
            } else if (i != 0) {
                throw Http20Draft09.ioException("TYPE_PING streamId != 0", new Object[0]);
            } else {
                int readInt = this.source.readInt();
                int readInt2 = this.source.readInt();
                if ((b & 1) == 0) {
                    z = false;
                }
                handler.ping(z, readInt, readInt2);
            }
        }

        private void readGoAway(Handler handler, short s, byte b, int i) throws IOException {
            if (s < (short) 8) {
                throw Http20Draft09.ioException("TYPE_GOAWAY length < 8: %s", Short.valueOf(s));
            } else if (i != 0) {
                throw Http20Draft09.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
            } else {
                int readInt = this.source.readInt();
                int i2 = s - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(this.source.readInt());
                if (fromHttp2 == null) {
                    throw Http20Draft09.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(r0));
                }
                ByteString byteString = ByteString.EMPTY;
                if (i2 > 0) {
                    byteString = this.source.readByteString((long) i2);
                }
                handler.goAway(readInt, fromHttp2, byteString);
            }
        }

        private void readWindowUpdate(Handler handler, short s, byte b, int i) throws IOException {
            if (s != (short) 4) {
                throw Http20Draft09.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Short.valueOf(s));
            }
            long readInt = (long) (this.source.readInt() & Integer.MAX_VALUE);
            if (readInt == 0) {
                throw Http20Draft09.ioException("windowSizeIncrement was 0", Long.valueOf(readInt));
            } else {
                handler.windowUpdate(i, readInt);
            }
        }

        public void close() throws IOException {
            this.source.close();
        }
    }

    /* compiled from: Twttr */
    final class Writer implements FrameWriter {
        private final boolean client;
        private boolean closed;
        private final OkBuffer hpackBuffer;
        private final Writer hpackWriter;
        private final BufferedSink sink;

        Writer(BufferedSink bufferedSink, boolean z) {
            this.sink = bufferedSink;
            this.client = z;
            this.hpackBuffer = new OkBuffer();
            this.hpackWriter = new Writer(this.hpackBuffer);
        }

        public synchronized void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
        }

        public synchronized void ackSettings() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(0, Http20Draft09.TYPE_SETTINGS, Http20Draft09.TYPE_HEADERS, 0);
            this.sink.flush();
        }

        public synchronized void connectionHeader() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.client) {
                this.sink.write(Http20Draft09.CONNECTION_HEADER.toByteArray());
                this.sink.flush();
            }
        }

        public synchronized void synStream(boolean z, boolean z2, int i, int i2, int i3, int i4, List<Header> list) throws IOException {
            if (z2) {
                throw new UnsupportedOperationException();
            } else if (this.closed) {
                throw new IOException("closed");
            } else {
                headers(z, i, i3, list);
            }
        }

        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(z, i, -1, list);
        }

        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(false, i, -1, list);
        }

        public synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.hpackBuffer.size() != 0) {
                throw new IllegalStateException();
            } else {
                this.hpackWriter.writeHeaders(list);
                frameHeader((int) (4 + this.hpackBuffer.size()), Http20Draft09.TYPE_PUSH_PROMISE, Http20Draft09.TYPE_SETTINGS, i);
                this.sink.writeInt(Integer.MAX_VALUE & i2);
                this.sink.write(this.hpackBuffer, this.hpackBuffer.size());
            }
        }

        private void headers(boolean z, int i, int i2, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.hpackBuffer.size() != 0) {
                throw new IllegalStateException();
            } else {
                this.hpackWriter.writeHeaders(list);
                int size = (int) this.hpackBuffer.size();
                byte b = Http20Draft09.TYPE_SETTINGS;
                if (z) {
                    b = (byte) 5;
                }
                if (i2 != -1) {
                    b = (byte) (b | 8);
                }
                if (i2 != -1) {
                    size += 4;
                }
                frameHeader(size, Http20Draft09.TYPE_HEADERS, b, i);
                if (i2 != -1) {
                    this.sink.writeInt(Integer.MAX_VALUE & i2);
                }
                this.sink.write(this.hpackBuffer, this.hpackBuffer.size());
            }
        }

        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.spdyRstCode == -1) {
                throw new IllegalArgumentException();
            } else {
                frameHeader(4, Http20Draft09.TYPE_RST_STREAM, Http20Draft09.TYPE_DATA, i);
                this.sink.writeInt(errorCode.httpCode);
                this.sink.flush();
            }
        }

        public synchronized void data(boolean z, int i, OkBuffer okBuffer) throws IOException {
            data(z, i, okBuffer, (int) okBuffer.size());
        }

        public synchronized void data(boolean z, int i, OkBuffer okBuffer, int i2) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            byte b = Http20Draft09.TYPE_DATA;
            if (z) {
                b = (byte) 1;
            }
            dataFrame(i, b, okBuffer, i2);
        }

        void dataFrame(int i, byte b, OkBuffer okBuffer, int i2) throws IOException {
            frameHeader(i2, Http20Draft09.TYPE_DATA, b, i);
            if (i2 > 0) {
                this.sink.write(okBuffer, (long) i2);
            }
        }

        public synchronized void settings(Settings settings) throws IOException {
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                frameHeader(settings.size() * 8, Http20Draft09.TYPE_SETTINGS, Http20Draft09.TYPE_DATA, 0);
                for (int i = 0; i < 10; i++) {
                    if (settings.isSet(i)) {
                        this.sink.writeInt(16777215 & i);
                        this.sink.writeInt(settings.get(i));
                    }
                }
                this.sink.flush();
            }
        }

        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            byte b = Http20Draft09.TYPE_DATA;
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (z) {
                    b = Http20Draft09.TYPE_HEADERS;
                }
                frameHeader(8, Http20Draft09.TYPE_PING, b, 0);
                this.sink.writeInt(i);
                this.sink.writeInt(i2);
                this.sink.flush();
            }
        }

        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.httpCode == -1) {
                throw Http20Draft09.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            } else {
                frameHeader(bArr.length + 8, Http20Draft09.TYPE_GOAWAY, Http20Draft09.TYPE_DATA, 0);
                this.sink.writeInt(i);
                this.sink.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.sink.write(bArr);
                }
                this.sink.flush();
            }
        }

        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw Http20Draft09.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            } else {
                frameHeader(4, Http20Draft09.TYPE_WINDOW_UPDATE, Http20Draft09.TYPE_DATA, i);
                this.sink.writeInt((int) j);
                this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            this.closed = true;
            this.sink.close();
        }

        void frameHeader(int i, byte b, byte b2, int i2) throws IOException {
            if (i > 16383) {
                throw Http20Draft09.illegalArgument("FRAME_SIZE_ERROR length > 16383: %s", Integer.valueOf(i));
            } else if ((Cue.TYPE_UNSET & i2) != 0) {
                throw Http20Draft09.illegalArgument("reserved bit set: %s", Integer.valueOf(i2));
            } else {
                this.sink.writeInt((((i & 16383) << 16) | ((b & NalUnitUtil.EXTENDED_SAR) << 8)) | (b2 & NalUnitUtil.EXTENDED_SAR));
                this.sink.writeInt(Integer.MAX_VALUE & i2);
            }
        }
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    static {
        CONNECTION_HEADER = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    public FrameReader newReader(BufferedSource bufferedSource, boolean z) {
        return new Reader(bufferedSource, MpegAudioHeader.MAX_FRAME_SIZE_BYTES, z);
    }

    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z) {
        return new Writer(bufferedSink, z);
    }

    public int maxFrameSize() {
        return 16383;
    }

    private static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    private static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }
}
