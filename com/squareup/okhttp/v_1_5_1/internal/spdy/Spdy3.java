package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.DeflaterSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.spdy.FrameReader.Handler;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;

/* compiled from: Twttr */
final class Spdy3 implements Variant {
    static final byte[] DICTIONARY;
    static final int FLAG_FIN = 1;
    static final int FLAG_UNIDIRECTIONAL = 2;
    static final int TYPE_DATA = 0;
    static final int TYPE_GOAWAY = 7;
    static final int TYPE_HEADERS = 8;
    static final int TYPE_PING = 6;
    static final int TYPE_RST_STREAM = 3;
    static final int TYPE_SETTINGS = 4;
    static final int TYPE_SYN_REPLY = 2;
    static final int TYPE_SYN_STREAM = 1;
    static final int TYPE_WINDOW_UPDATE = 9;
    static final int VERSION = 3;

    /* compiled from: Twttr */
    final class Reader implements FrameReader {
        private final boolean client;
        private final NameValueBlockReader headerBlockReader;
        private final BufferedSource source;

        Reader(BufferedSource bufferedSource, boolean z) {
            this.source = bufferedSource;
            this.headerBlockReader = new NameValueBlockReader(this.source);
            this.client = z;
        }

        public void readConnectionHeader() {
        }

        public boolean nextFrame(Handler handler) throws IOException {
            boolean z = false;
            try {
                int readInt = this.source.readInt();
                int readInt2 = this.source.readInt();
                int i = (-16777216 & readInt2) >>> 24;
                readInt2 &= 16777215;
                int i2;
                if ((Cue.TYPE_UNSET & readInt) != 0) {
                    int i3 = (2147418112 & readInt) >>> 16;
                    i2 = 65535 & readInt;
                    if (i3 != Spdy3.VERSION) {
                        throw new ProtocolException("version != 3: " + i3);
                    }
                    switch (i2) {
                        case Spdy3.TYPE_SYN_STREAM /*1*/:
                            readSynStream(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_SYN_REPLY /*2*/:
                            readSynReply(handler, i, readInt2);
                            return true;
                        case Spdy3.VERSION /*3*/:
                            readRstStream(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_SETTINGS /*4*/:
                            readSettings(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_PING /*6*/:
                            readPing(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_GOAWAY /*7*/:
                            readGoAway(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_HEADERS /*8*/:
                            readHeaders(handler, i, readInt2);
                            return true;
                        case Spdy3.TYPE_WINDOW_UPDATE /*9*/:
                            readWindowUpdate(handler, i, readInt2);
                            return true;
                        default:
                            this.source.skip((long) readInt2);
                            return true;
                    }
                }
                i2 = Integer.MAX_VALUE & readInt;
                if ((i & Spdy3.TYPE_SYN_STREAM) != 0) {
                    z = true;
                }
                handler.data(z, i2, this.source, readInt2);
                return true;
            } catch (IOException e) {
                return false;
            }
        }

        private void readSynStream(Handler handler, int i, int i2) throws IOException {
            boolean z;
            boolean z2 = true;
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            int i3 = readInt & Integer.MAX_VALUE;
            readInt2 &= Integer.MAX_VALUE;
            int readShort = (57344 & this.source.readShort()) >>> 13;
            List readNameValueBlock = this.headerBlockReader.readNameValueBlock(i2 - 10);
            if ((i & Spdy3.TYPE_SYN_STREAM) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i & Spdy3.TYPE_SYN_REPLY) == 0) {
                z2 = false;
            }
            handler.headers(z2, z, i3, readInt2, readShort, readNameValueBlock, HeadersMode.SPDY_SYN_STREAM);
        }

        private void readSynReply(Handler handler, int i, int i2) throws IOException {
            boolean z;
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            List readNameValueBlock = this.headerBlockReader.readNameValueBlock(i2 - 4);
            if ((i & Spdy3.TYPE_SYN_STREAM) != 0) {
                z = true;
            } else {
                z = false;
            }
            handler.headers(false, z, readInt, -1, -1, readNameValueBlock, HeadersMode.SPDY_REPLY);
        }

        private void readRstStream(Handler handler, int i, int i2) throws IOException {
            if (i2 != Spdy3.TYPE_HEADERS) {
                Object[] objArr = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr[Spdy3.TYPE_DATA] = Integer.valueOf(i2);
                throw ioException("TYPE_RST_STREAM length: %d != 8", objArr);
            }
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.source.readInt();
            ErrorCode fromSpdy3Rst = ErrorCode.fromSpdy3Rst(readInt2);
            if (fromSpdy3Rst == null) {
                Object[] objArr2 = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr2[Spdy3.TYPE_DATA] = Integer.valueOf(readInt2);
                throw ioException("TYPE_RST_STREAM unexpected error code: %d", objArr2);
            }
            handler.rstStream(readInt, fromSpdy3Rst);
        }

        private void readHeaders(Handler handler, int i, int i2) throws IOException {
            handler.headers(false, false, this.source.readInt() & Integer.MAX_VALUE, -1, -1, this.headerBlockReader.readNameValueBlock(i2 - 4), HeadersMode.SPDY_HEADERS);
        }

        private void readWindowUpdate(Handler handler, int i, int i2) throws IOException {
            if (i2 != Spdy3.TYPE_HEADERS) {
                Object[] objArr = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr[Spdy3.TYPE_DATA] = Integer.valueOf(i2);
                throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", objArr);
            }
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            long readInt2 = (long) (this.source.readInt() & Integer.MAX_VALUE);
            if (readInt2 == 0) {
                objArr = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr[Spdy3.TYPE_DATA] = Long.valueOf(readInt2);
                throw ioException("windowSizeIncrement was 0", objArr);
            }
            handler.windowUpdate(readInt, readInt2);
        }

        private void readPing(Handler handler, int i, int i2) throws IOException {
            boolean z = true;
            if (i2 != Spdy3.TYPE_SETTINGS) {
                Object[] objArr = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr[Spdy3.TYPE_DATA] = Integer.valueOf(i2);
                throw ioException("TYPE_PING length: %d != 4", objArr);
            }
            boolean z2;
            int readInt = this.source.readInt();
            boolean z3 = this.client;
            if ((readInt & Spdy3.TYPE_SYN_STREAM) == Spdy3.TYPE_SYN_STREAM) {
                z2 = true;
            } else {
                z2 = Spdy3.TYPE_DATA;
            }
            if (z3 != z2) {
                z = false;
            }
            handler.ping(z, readInt, Spdy3.TYPE_DATA);
        }

        private void readGoAway(Handler handler, int i, int i2) throws IOException {
            if (i2 != Spdy3.TYPE_HEADERS) {
                Object[] objArr = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr[Spdy3.TYPE_DATA] = Integer.valueOf(i2);
                throw ioException("TYPE_GOAWAY length: %d != 8", objArr);
            }
            int readInt = this.source.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.source.readInt();
            ErrorCode fromSpdyGoAway = ErrorCode.fromSpdyGoAway(readInt2);
            if (fromSpdyGoAway == null) {
                Object[] objArr2 = new Object[Spdy3.TYPE_SYN_STREAM];
                objArr2[Spdy3.TYPE_DATA] = Integer.valueOf(readInt2);
                throw ioException("TYPE_GOAWAY unexpected error code: %d", objArr2);
            }
            handler.goAway(readInt, fromSpdyGoAway, ByteString.EMPTY);
        }

        private void readSettings(Handler handler, int i, int i2) throws IOException {
            boolean z = true;
            int readInt = this.source.readInt();
            if (i2 != (readInt * Spdy3.TYPE_HEADERS) + Spdy3.TYPE_SETTINGS) {
                Object[] objArr = new Object[Spdy3.TYPE_SYN_REPLY];
                objArr[Spdy3.TYPE_DATA] = Integer.valueOf(i2);
                objArr[Spdy3.TYPE_SYN_STREAM] = Integer.valueOf(readInt);
                throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", objArr);
            }
            Settings settings = new Settings();
            for (int i3 = Spdy3.TYPE_DATA; i3 < readInt; i3 += Spdy3.TYPE_SYN_STREAM) {
                int readInt2 = this.source.readInt();
                int i4 = (-16777216 & readInt2) >>> 24;
                settings.set(readInt2 & 16777215, i4, this.source.readInt());
            }
            if ((i & Spdy3.TYPE_SYN_STREAM) == 0) {
                z = false;
            }
            handler.settings(z, settings);
        }

        private static IOException ioException(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(str, objArr));
        }

        public void close() throws IOException {
            this.headerBlockReader.close();
        }
    }

    /* compiled from: Twttr */
    final class Writer implements FrameWriter {
        private final boolean client;
        private boolean closed;
        private final OkBuffer headerBlockBuffer;
        private final BufferedSink headerBlockOut;
        private final BufferedSink sink;

        Writer(BufferedSink bufferedSink, boolean z) {
            this.sink = bufferedSink;
            this.client = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(Spdy3.DICTIONARY);
            this.headerBlockBuffer = new OkBuffer();
            this.headerBlockOut = Okio.buffer(new DeflaterSink(this.headerBlockBuffer, deflater));
        }

        public void ackSettings() {
        }

        public void pushPromise(int i, int i2, List<Header> list) throws IOException {
        }

        public synchronized void connectionHeader() {
        }

        public synchronized void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            this.sink.flush();
        }

        public synchronized void synStream(boolean z, boolean z2, int i, int i2, int i3, int i4, List<Header> list) throws IOException {
            int i5 = Spdy3.TYPE_DATA;
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                writeNameValueBlockToBuffer(list);
                int size = (int) (10 + this.headerBlockBuffer.size());
                int i6 = z ? Spdy3.TYPE_SYN_STREAM : Spdy3.TYPE_DATA;
                if (z2) {
                    i5 = Spdy3.TYPE_SYN_REPLY;
                }
                i5 |= i6;
                this.sink.writeInt(-2147287039);
                this.sink.writeInt(((i5 & NalUnitUtil.EXTENDED_SAR) << 24) | (size & 16777215));
                this.sink.writeInt(i & Integer.MAX_VALUE);
                this.sink.writeInt(i2 & Integer.MAX_VALUE);
                this.sink.writeShort((((i3 & Spdy3.TYPE_GOAWAY) << 13) | Spdy3.TYPE_DATA) | (i4 & NalUnitUtil.EXTENDED_SAR));
                this.sink.write(this.headerBlockBuffer, this.headerBlockBuffer.size());
                this.sink.flush();
            }
        }

        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            writeNameValueBlockToBuffer(list);
            int i2 = z ? Spdy3.TYPE_SYN_STREAM : Spdy3.TYPE_DATA;
            int size = (int) (this.headerBlockBuffer.size() + 4);
            this.sink.writeInt(-2147287038);
            this.sink.writeInt(((i2 & NalUnitUtil.EXTENDED_SAR) << 24) | (size & 16777215));
            this.sink.writeInt(Integer.MAX_VALUE & i);
            this.sink.write(this.headerBlockBuffer, this.headerBlockBuffer.size());
            this.sink.flush();
        }

        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            writeNameValueBlockToBuffer(list);
            int size = (int) (this.headerBlockBuffer.size() + 4);
            this.sink.writeInt(-2147287032);
            this.sink.writeInt((size & 16777215) | Spdy3.TYPE_DATA);
            this.sink.writeInt(Integer.MAX_VALUE & i);
            this.sink.write(this.headerBlockBuffer, this.headerBlockBuffer.size());
        }

        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.spdyRstCode == -1) {
                throw new IllegalArgumentException();
            } else {
                this.sink.writeInt(-2147287037);
                this.sink.writeInt(Spdy3.TYPE_HEADERS);
                this.sink.writeInt(Integer.MAX_VALUE & i);
                this.sink.writeInt(errorCode.spdyRstCode);
                this.sink.flush();
            }
        }

        public synchronized void data(boolean z, int i, OkBuffer okBuffer) throws IOException {
            data(z, i, okBuffer, (int) okBuffer.size());
        }

        public synchronized void data(boolean z, int i, OkBuffer okBuffer, int i2) throws IOException {
            sendDataFrame(i, z ? Spdy3.TYPE_SYN_STREAM : Spdy3.TYPE_DATA, okBuffer, i2);
        }

        void sendDataFrame(int i, int i2, OkBuffer okBuffer, int i3) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (((long) i3) > 16777215) {
                throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i3);
            } else {
                this.sink.writeInt(Integer.MAX_VALUE & i);
                this.sink.writeInt(((i2 & NalUnitUtil.EXTENDED_SAR) << 24) | (16777215 & i3));
                if (i3 > 0) {
                    this.sink.write(okBuffer, (long) i3);
                }
            }
        }

        private void writeNameValueBlockToBuffer(List<Header> list) throws IOException {
            if (this.headerBlockBuffer.size() != 0) {
                throw new IllegalStateException();
            }
            this.headerBlockOut.writeInt(list.size());
            int size = list.size();
            for (int i = Spdy3.TYPE_DATA; i < size; i += Spdy3.TYPE_SYN_STREAM) {
                ByteString byteString = ((Header) list.get(i)).name;
                this.headerBlockOut.writeInt(byteString.size());
                this.headerBlockOut.write(byteString);
                byteString = ((Header) list.get(i)).value;
                this.headerBlockOut.writeInt(byteString.size());
                this.headerBlockOut.write(byteString);
            }
            this.headerBlockOut.flush();
        }

        public synchronized void settings(Settings settings) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            int size = settings.size();
            int i = (size * Spdy3.TYPE_HEADERS) + Spdy3.TYPE_SETTINGS;
            this.sink.writeInt(-2147287036);
            this.sink.writeInt((i & 16777215) | Spdy3.TYPE_DATA);
            this.sink.writeInt(size);
            for (size = Spdy3.TYPE_DATA; size <= 10; size += Spdy3.TYPE_SYN_STREAM) {
                if (settings.isSet(size)) {
                    this.sink.writeInt(((settings.flags(size) & NalUnitUtil.EXTENDED_SAR) << 24) | (size & 16777215));
                    this.sink.writeInt(settings.get(size));
                }
            }
            this.sink.flush();
        }

        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            boolean z2 = true;
            synchronized (this) {
                if (this.closed) {
                    throw new IOException("closed");
                }
                boolean z3;
                boolean z4 = this.client;
                if ((i & Spdy3.TYPE_SYN_STREAM) == Spdy3.TYPE_SYN_STREAM) {
                    z3 = Spdy3.TYPE_SYN_STREAM;
                } else {
                    z3 = Spdy3.TYPE_DATA;
                }
                if (z4 == z3) {
                    z2 = Spdy3.TYPE_DATA;
                }
                if (z != z2) {
                    throw new IllegalArgumentException("payload != reply");
                }
                this.sink.writeInt(-2147287034);
                this.sink.writeInt(Spdy3.TYPE_SETTINGS);
                this.sink.writeInt(i);
                this.sink.flush();
            }
        }

        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (errorCode.spdyGoAwayCode == -1) {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            } else {
                this.sink.writeInt(-2147287033);
                this.sink.writeInt(Spdy3.TYPE_HEADERS);
                this.sink.writeInt(i);
                this.sink.writeInt(errorCode.spdyGoAwayCode);
                this.sink.flush();
            }
        }

        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j);
            } else {
                this.sink.writeInt(-2147287031);
                this.sink.writeInt(Spdy3.TYPE_HEADERS);
                this.sink.writeInt(i);
                this.sink.writeInt((int) j);
                this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            this.closed = true;
            Util.closeAll(this.sink, this.headerBlockOut);
        }
    }

    Spdy3() {
    }

    public Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    static {
        try {
            DICTIONARY = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Util.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }

    public FrameReader newReader(BufferedSource bufferedSource, boolean z) {
        return new Reader(bufferedSource, z);
    }

    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z) {
        return new Writer(bufferedSink, z);
    }

    public int maxFrameSize() {
        return 16383;
    }
}
