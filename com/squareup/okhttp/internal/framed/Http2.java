package com.squareup.okhttp.internal.framed;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.FrameReader.Handler;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;
import okio.ab;
import okio.ac;
import okio.f;
import okio.i;
import okio.j;

/* compiled from: Twttr */
public final class Http2 implements Variant {
    private static final ByteString CONNECTION_PREFACE;
    static final byte FLAG_ACK = (byte) 1;
    static final byte FLAG_COMPRESSED = (byte) 32;
    static final byte FLAG_END_HEADERS = (byte) 4;
    static final byte FLAG_END_PUSH_PROMISE = (byte) 4;
    static final byte FLAG_END_STREAM = (byte) 1;
    static final byte FLAG_NONE = (byte) 0;
    static final byte FLAG_PADDED = (byte) 8;
    static final byte FLAG_PRIORITY = (byte) 32;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = (byte) 9;
    static final byte TYPE_DATA = (byte) 0;
    static final byte TYPE_GOAWAY = (byte) 7;
    static final byte TYPE_HEADERS = (byte) 1;
    static final byte TYPE_PING = (byte) 6;
    static final byte TYPE_PRIORITY = (byte) 2;
    static final byte TYPE_PUSH_PROMISE = (byte) 5;
    static final byte TYPE_RST_STREAM = (byte) 3;
    static final byte TYPE_SETTINGS = (byte) 4;
    static final byte TYPE_WINDOW_UPDATE = (byte) 8;
    private static final Logger logger;

    /* compiled from: Twttr */
    final class ContinuationSource implements ab {
        byte flags;
        int left;
        int length;
        short padding;
        private final j source;
        int streamId;

        public ContinuationSource(j jVar) {
            this.source = jVar;
        }

        public long read(f fVar, long j) throws IOException {
            while (this.left == 0) {
                this.source.g((long) this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1;
                }
                readContinuationHeader();
            }
            long read = this.source.read(fVar, Math.min(j, (long) this.left));
            if (read == -1) {
                return -1;
            }
            this.left = (int) (((long) this.left) - read);
            return read;
        }

        public ac timeout() {
            return this.source.timeout();
        }

        public void close() throws IOException {
        }

        private void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int access$300 = Http2.readMedium(this.source);
            this.left = access$300;
            this.length = access$300;
            byte i2 = (byte) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
            this.flags = (byte) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
            if (Http2.logger.isLoggable(Level.FINE)) {
                Http2.logger.fine(FrameLogger.formatHeader(true, this.streamId, this.length, i2, this.flags));
            }
            this.streamId = this.source.k() & Integer.MAX_VALUE;
            if (i2 != 9) {
                throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(i2));
            } else if (this.streamId != i) {
                throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
    }

    /* compiled from: Twttr */
    final class FrameLogger {
        private static final String[] BINARY;
        private static final String[] FLAGS;
        private static final String[] TYPES;

        FrameLogger() {
        }

        static String formatHeader(boolean z, int i, int i2, byte b, byte b2) {
            String format = b < TYPES.length ? TYPES[b] : String.format("0x%02x", new Object[]{Byte.valueOf(b)});
            String formatFlags = formatFlags(b, b2);
            String str = "%s 0x%08x %5d %-13s %s";
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = format;
            objArr[4] = formatFlags;
            return String.format(str, objArr);
        }

        static String formatFlags(byte b, byte b2) {
            if (b2 == null) {
                return TtmlNode.ANONYMOUS_REGION_ID;
            }
            switch (b) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                case Util.TYPE_OTHER /*3*/:
                case C.ENCODING_DTS /*7*/:
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    return BINARY[b2];
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    return b2 == 1 ? "ACK" : BINARY[b2];
                default:
                    String str = b2 < FLAGS.length ? FLAGS[b2] : BINARY[b2];
                    if (b == 5 && (b2 & 4) != 0) {
                        return str.replace("HEADERS", "PUSH_PROMISE");
                    }
                    if (b != null || (b2 & 32) == 0) {
                        return str;
                    }
                    return str.replace("PRIORITY", "COMPRESSED");
            }
        }

        static {
            int i = 0;
            TYPES = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
            FLAGS = new String[64];
            BINARY = new String[256];
            for (int i2 = 0; i2 < BINARY.length; i2++) {
                BINARY[i2] = String.format("%8s", new Object[]{Integer.toBinaryString(i2)}).replace(' ', '0');
            }
            FLAGS[0] = TtmlNode.ANONYMOUS_REGION_ID;
            FLAGS[1] = "END_STREAM";
            int[] iArr = new int[]{1};
            FLAGS[8] = "PADDED";
            for (int i3 : iArr) {
                FLAGS[i3 | 8] = FLAGS[i3] + "|PADDED";
            }
            FLAGS[4] = "END_HEADERS";
            FLAGS[32] = "PRIORITY";
            FLAGS[36] = "END_HEADERS|PRIORITY";
            for (int i4 : new int[]{4, 32, 36}) {
                for (int i5 : iArr) {
                    FLAGS[i5 | i4] = FLAGS[i5] + '|' + FLAGS[i4];
                    FLAGS[(i5 | i4) | 8] = FLAGS[i5] + '|' + FLAGS[i4] + "|PADDED";
                }
            }
            while (i < FLAGS.length) {
                if (FLAGS[i] == null) {
                    FLAGS[i] = BINARY[i];
                }
                i++;
            }
        }
    }

    /* compiled from: Twttr */
    final class Reader implements FrameReader {
        private final boolean client;
        private final ContinuationSource continuation;
        final Reader hpackReader;
        private final j source;

        Reader(j jVar, int i, boolean z) {
            this.source = jVar;
            this.client = z;
            this.continuation = new ContinuationSource(this.source);
            this.hpackReader = new Reader(i, this.continuation);
        }

        public void readConnectionPreface() throws IOException {
            if (!this.client) {
                ByteString c = this.source.c((long) Http2.CONNECTION_PREFACE.f());
                if (Http2.logger.isLoggable(Level.FINE)) {
                    Http2.logger.fine(String.format("<< CONNECTION %s", new Object[]{c.d()}));
                }
                if (!Http2.CONNECTION_PREFACE.equals(c)) {
                    throw Http2.ioException("Expected a connection header but was %s", c.a());
                }
            }
        }

        public boolean nextFrame(Handler handler) throws IOException {
            try {
                this.source.a(9);
                int access$300 = Http2.readMedium(this.source);
                if (access$300 < 0 || access$300 > Http2.INITIAL_MAX_FRAME_SIZE) {
                    throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(access$300));
                }
                byte i = (byte) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
                byte i2 = (byte) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
                int k = this.source.k() & Integer.MAX_VALUE;
                if (Http2.logger.isLoggable(Level.FINE)) {
                    Http2.logger.fine(FrameLogger.formatHeader(true, k, access$300, i, i2));
                }
                switch (i) {
                    case Util.TYPE_DASH /*0*/:
                        readData(handler, access$300, i2, k);
                        return true;
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        readHeaders(handler, access$300, i2, k);
                        return true;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        readPriority(handler, access$300, i2, k);
                        return true;
                    case Util.TYPE_OTHER /*3*/:
                        readRstStream(handler, access$300, i2, k);
                        return true;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        readSettings(handler, access$300, i2, k);
                        return true;
                    case EbmlReader.TYPE_FLOAT /*5*/:
                        readPushPromise(handler, access$300, i2, k);
                        return true;
                    case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                        readPing(handler, access$300, i2, k);
                        return true;
                    case C.ENCODING_DTS /*7*/:
                        readGoAway(handler, access$300, i2, k);
                        return true;
                    case ChunkHeader.SIZE_IN_BYTES /*8*/:
                        readWindowUpdate(handler, access$300, i2, k);
                        return true;
                    default:
                        this.source.g((long) access$300);
                        return true;
                }
            } catch (IOException e) {
                return false;
            }
        }

        private void readHeaders(Handler handler, int i, byte b, int i2) throws IOException {
            if (i2 == 0) {
                throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            short i3;
            boolean z = (b & 1) != 0;
            if ((b & 8) != 0) {
                i3 = (short) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
            } else {
                i3 = (short) 0;
            }
            if ((b & 32) != 0) {
                readPriority(handler, i2);
                i -= 5;
            }
            handler.headers(false, z, i2, -1, readHeaderBlock(Http2.lengthWithoutPadding(i, b, i3), i3, b, i2), HeadersMode.HTTP_20_HEADERS);
        }

        private List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
            ContinuationSource continuationSource = this.continuation;
            this.continuation.left = i;
            continuationSource.length = i;
            this.continuation.padding = s;
            this.continuation.flags = b;
            this.continuation.streamId = i2;
            this.hpackReader.readHeaders();
            return this.hpackReader.getAndResetHeaderList();
        }

        private void readData(Handler handler, int i, byte b, int i2) throws IOException {
            boolean z;
            short s = (short) 1;
            short s2 = (short) 0;
            if ((b & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((b & 32) == 0) {
                s = (short) 0;
            }
            if (s != (short) 0) {
                throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            if ((b & 8) != 0) {
                s2 = (short) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
            }
            handler.data(z, i2, this.source, Http2.lengthWithoutPadding(i, b, s2));
            this.source.g((long) s2);
        }

        private void readPriority(Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 5) {
                throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            } else if (i2 == 0) {
                throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
            } else {
                readPriority(handler, i2);
            }
        }

        private void readPriority(Handler handler, int i) throws IOException {
            int k = this.source.k();
            handler.priority(i, k & Integer.MAX_VALUE, (this.source.i() & NalUnitUtil.EXTENDED_SAR) + 1, (Cue.TYPE_UNSET & k) != 0);
        }

        private void readRstStream(Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 4) {
                throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            } else if (i2 == 0) {
                throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
            } else {
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(this.source.k());
                if (fromHttp2 == null) {
                    throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(r0));
                } else {
                    handler.rstStream(i2, fromHttp2);
                }
            }
        }

        private void readSettings(Handler handler, int i, byte b, int i2) throws IOException {
            if (i2 != 0) {
                throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
            } else if ((b & 1) != 0) {
                if (i != 0) {
                    throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
            } else if (i % 6 != 0) {
                throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            } else {
                Settings settings = new Settings();
                for (int i3 = 0; i3 < i; i3 += 6) {
                    int j = this.source.j();
                    int k = this.source.k();
                    switch (j) {
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                        case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                            break;
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            if (!(k == 0 || k == 1)) {
                                throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            }
                        case Util.TYPE_OTHER /*3*/:
                            j = 4;
                            break;
                        case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                            j = 7;
                            if (k >= 0) {
                                break;
                            }
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        case EbmlReader.TYPE_FLOAT /*5*/:
                            if (k >= Http2.INITIAL_MAX_FRAME_SIZE && k <= 16777215) {
                                break;
                            }
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(k));
                        default:
                            throw Http2.ioException("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(j));
                    }
                    settings.set(j, 0, k);
                }
                handler.settings(false, settings);
                if (settings.getHeaderTableSize() >= 0) {
                    this.hpackReader.headerTableSizeSetting(settings.getHeaderTableSize());
                }
            }
        }

        private void readPushPromise(Handler handler, int i, byte b, int i2) throws IOException {
            short s = (short) 0;
            if (i2 == 0) {
                throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            if ((b & 8) != 0) {
                s = (short) (this.source.i() & NalUnitUtil.EXTENDED_SAR);
            }
            handler.pushPromise(i2, this.source.k() & Integer.MAX_VALUE, readHeaderBlock(Http2.lengthWithoutPadding(i - 4, b, s), s, b, i2));
        }

        private void readPing(Handler handler, int i, byte b, int i2) throws IOException {
            boolean z = true;
            if (i != 8) {
                throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i));
            } else if (i2 != 0) {
                throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
            } else {
                int k = this.source.k();
                int k2 = this.source.k();
                if ((b & 1) == 0) {
                    z = false;
                }
                handler.ping(z, k, k2);
            }
        }

        private void readGoAway(Handler handler, int i, byte b, int i2) throws IOException {
            if (i < 8) {
                throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            } else if (i2 != 0) {
                throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
            } else {
                int k = this.source.k();
                int i3 = i - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(this.source.k());
                if (fromHttp2 == null) {
                    throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(r0));
                }
                ByteString byteString = ByteString.b;
                if (i3 > 0) {
                    byteString = this.source.c((long) i3);
                }
                handler.goAway(k, fromHttp2, byteString);
            }
        }

        private void readWindowUpdate(Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 4) {
                throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            }
            long k = ((long) this.source.k()) & 2147483647L;
            if (k == 0) {
                throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(k));
            } else {
                handler.windowUpdate(i2, k);
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
        private final f hpackBuffer;
        private final Writer hpackWriter;
        private int maxFrameSize;
        private final i sink;

        Writer(i iVar, boolean z) {
            this.sink = iVar;
            this.client = z;
            this.hpackBuffer = new f();
            this.hpackWriter = new Writer(this.hpackBuffer);
            this.maxFrameSize = Http2.INITIAL_MAX_FRAME_SIZE;
        }

        public synchronized void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
        }

        public synchronized void ackSettings(Settings settings) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            frameHeader(0, 0, Http2.TYPE_SETTINGS, Http2.TYPE_HEADERS);
            this.sink.flush();
        }

        public synchronized void connectionPreface() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (this.client) {
                if (Http2.logger.isLoggable(Level.FINE)) {
                    Http2.logger.fine(String.format(">> CONNECTION %s", new Object[]{Http2.CONNECTION_PREFACE.d()}));
                }
                this.sink.c(Http2.CONNECTION_PREFACE.g());
                this.sink.flush();
            }
        }

        public synchronized void synStream(boolean z, boolean z2, int i, int i2, List<Header> list) throws IOException {
            if (z2) {
                throw new UnsupportedOperationException();
            } else if (this.closed) {
                throw new IOException("closed");
            } else {
                headers(z, i, list);
            }
        }

        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(z, i, list);
        }

        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            headers(false, i, list);
        }

        public synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.hpackWriter.writeHeaders(list);
            long a = this.hpackBuffer.a();
            int min = (int) Math.min((long) (this.maxFrameSize - 4), a);
            frameHeader(i, min + 4, Http2.TYPE_PUSH_PROMISE, a == ((long) min) ? Http2.TYPE_SETTINGS : Http2.TYPE_DATA);
            this.sink.g(Integer.MAX_VALUE & i2);
            this.sink.write(this.hpackBuffer, (long) min);
            if (a > ((long) min)) {
                writeContinuationFrames(i, a - ((long) min));
            }
        }

        void headers(boolean z, int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.hpackWriter.writeHeaders(list);
            long a = this.hpackBuffer.a();
            int min = (int) Math.min((long) this.maxFrameSize, a);
            byte b = a == ((long) min) ? Http2.TYPE_SETTINGS : Http2.TYPE_DATA;
            if (z) {
                b = (byte) (b | 1);
            }
            frameHeader(i, min, Http2.TYPE_HEADERS, b);
            this.sink.write(this.hpackBuffer, (long) min);
            if (a > ((long) min)) {
                writeContinuationFrames(i, a - ((long) min));
            }
        }

        private void writeContinuationFrames(int i, long j) throws IOException {
            while (j > 0) {
                int min = (int) Math.min((long) this.maxFrameSize, j);
                j -= (long) min;
                frameHeader(i, min, Http2.TYPE_CONTINUATION, j == 0 ? Http2.TYPE_SETTINGS : Http2.TYPE_DATA);
                this.sink.write(this.hpackBuffer, (long) min);
            }
        }

        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.httpCode == -1) {
                throw new IllegalArgumentException();
            } else {
                frameHeader(i, 4, Http2.TYPE_RST_STREAM, Http2.TYPE_DATA);
                this.sink.g(errorCode.httpCode);
                this.sink.flush();
            }
        }

        public int maxDataLength() {
            return this.maxFrameSize;
        }

        public synchronized void data(boolean z, int i, f fVar, int i2) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            byte b = Http2.TYPE_DATA;
            if (z) {
                b = (byte) 1;
            }
            dataFrame(i, b, fVar, i2);
        }

        void dataFrame(int i, byte b, f fVar, int i2) throws IOException {
            frameHeader(i, i2, Http2.TYPE_DATA, b);
            if (i2 > 0) {
                this.sink.write(fVar, (long) i2);
            }
        }

        public synchronized void settings(Settings settings) throws IOException {
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                frameHeader(0, settings.size() * 6, Http2.TYPE_SETTINGS, Http2.TYPE_DATA);
                for (int i = 0; i < 10; i++) {
                    if (settings.isSet(i)) {
                        int i2;
                        if (i == 4) {
                            i2 = 3;
                        } else if (i == 7) {
                            i2 = 4;
                        } else {
                            i2 = i;
                        }
                        this.sink.h(i2);
                        this.sink.g(settings.get(i));
                    }
                }
                this.sink.flush();
            }
        }

        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            byte b = Http2.TYPE_DATA;
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                if (z) {
                    b = Http2.TYPE_HEADERS;
                }
                frameHeader(0, 8, Http2.TYPE_PING, b);
                this.sink.g(i);
                this.sink.g(i2);
                this.sink.flush();
            }
        }

        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.httpCode == -1) {
                throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            } else {
                frameHeader(0, bArr.length + 8, Http2.TYPE_GOAWAY, Http2.TYPE_DATA);
                this.sink.g(i);
                this.sink.g(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.sink.c(bArr);
                }
                this.sink.flush();
            }
        }

        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            } else {
                frameHeader(i, 4, Http2.TYPE_WINDOW_UPDATE, Http2.TYPE_DATA);
                this.sink.g((int) j);
                this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            this.closed = true;
            this.sink.close();
        }

        void frameHeader(int i, int i2, byte b, byte b2) throws IOException {
            if (Http2.logger.isLoggable(Level.FINE)) {
                Http2.logger.fine(FrameLogger.formatHeader(false, i, i2, b, b2));
            }
            if (i2 > this.maxFrameSize) {
                throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.maxFrameSize), Integer.valueOf(i2));
            } else if ((Cue.TYPE_UNSET & i) != 0) {
                throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i));
            } else {
                Http2.writeMedium(this.sink, i2);
                this.sink.i(b & NalUnitUtil.EXTENDED_SAR);
                this.sink.i(b2 & NalUnitUtil.EXTENDED_SAR);
                this.sink.g(Integer.MAX_VALUE & i);
            }
        }
    }

    static {
        logger = Logger.getLogger(FrameLogger.class.getName());
        CONNECTION_PREFACE = ByteString.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    public FrameReader newReader(j jVar, boolean z) {
        return new Reader(jVar, MpegAudioHeader.MAX_FRAME_SIZE_BYTES, z);
    }

    public FrameWriter newWriter(i iVar, boolean z) {
        return new Writer(iVar, z);
    }

    private static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    private static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    private static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            short s2 = i - 1;
        }
        if (s <= s2) {
            return (short) (s2 - s);
        }
        throw ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(s2));
    }

    private static int readMedium(j jVar) throws IOException {
        return (((jVar.i() & NalUnitUtil.EXTENDED_SAR) << 16) | ((jVar.i() & NalUnitUtil.EXTENDED_SAR) << 8)) | (jVar.i() & NalUnitUtil.EXTENDED_SAR);
    }

    private static void writeMedium(i iVar, int i) throws IOException {
        iVar.i((i >>> 16) & NalUnitUtil.EXTENDED_SAR);
        iVar.i((i >>> 8) & NalUnitUtil.EXTENDED_SAR);
        iVar.i(i & NalUnitUtil.EXTENDED_SAR);
    }
}
