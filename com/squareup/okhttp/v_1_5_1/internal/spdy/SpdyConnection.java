package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.NamedRunnable;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.spdy.FrameReader.Handler;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class SpdyConnection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final ExecutorService executor;
    long bytesLeftInWriteWindow;
    final boolean client;
    private final Set<Integer> currentPushRequests;
    final FrameReader frameReader;
    final FrameWriter frameWriter;
    private final IncomingStreamHandler handler;
    private final String hostName;
    private long idleStartTimeNs;
    private int lastGoodStreamId;
    final long maxFrameSize;
    private int nextPingId;
    private int nextStreamId;
    final Settings okHttpSettings;
    final Settings peerSettings;
    private Map<Integer, Ping> pings;
    final Protocol protocol;
    private final PushObserver pushObserver;
    final Reader readerRunnable;
    private boolean receivedInitialPeerSettings;
    private volatile boolean shutdown;
    private final Map<Integer, SpdyStream> streams;
    long unacknowledgedBytesRead;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.1 */
    class AnonymousClass1 extends NamedRunnable {
        final /* synthetic */ ErrorCode val$errorCode;
        final /* synthetic */ int val$streamId;

        AnonymousClass1(String str, Object[] objArr, int i, ErrorCode errorCode) {
            this.val$streamId = i;
            this.val$errorCode = errorCode;
            super(str, objArr);
        }

        public void execute() {
            try {
                SpdyConnection.this.writeSynReset(this.val$streamId, this.val$errorCode);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.2 */
    class AnonymousClass2 extends NamedRunnable {
        final /* synthetic */ int val$streamId;
        final /* synthetic */ long val$unacknowledgedBytesRead;

        AnonymousClass2(String str, Object[] objArr, int i, long j) {
            this.val$streamId = i;
            this.val$unacknowledgedBytesRead = j;
            super(str, objArr);
        }

        public void execute() {
            try {
                SpdyConnection.this.frameWriter.windowUpdate(this.val$streamId, this.val$unacknowledgedBytesRead);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.3 */
    class AnonymousClass3 extends NamedRunnable {
        final /* synthetic */ int val$payload1;
        final /* synthetic */ int val$payload2;
        final /* synthetic */ Ping val$ping;
        final /* synthetic */ boolean val$reply;

        AnonymousClass3(String str, Object[] objArr, boolean z, int i, int i2, Ping ping) {
            this.val$reply = z;
            this.val$payload1 = i;
            this.val$payload2 = i2;
            this.val$ping = ping;
            super(str, objArr);
        }

        public void execute() {
            try {
                SpdyConnection.this.writePing(this.val$reply, this.val$payload1, this.val$payload2, this.val$ping);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.4 */
    class AnonymousClass4 extends NamedRunnable {
        final /* synthetic */ List val$requestHeaders;
        final /* synthetic */ int val$streamId;

        AnonymousClass4(String str, Object[] objArr, int i, List list) {
            this.val$streamId = i;
            this.val$requestHeaders = list;
            super(str, objArr);
        }

        public void execute() {
            if (SpdyConnection.this.pushObserver.onRequest(this.val$streamId, this.val$requestHeaders)) {
                try {
                    SpdyConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                    synchronized (SpdyConnection.this) {
                        SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                    }
                } catch (IOException e) {
                }
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.5 */
    class AnonymousClass5 extends NamedRunnable {
        final /* synthetic */ boolean val$inFinished;
        final /* synthetic */ List val$requestHeaders;
        final /* synthetic */ int val$streamId;

        AnonymousClass5(String str, Object[] objArr, int i, List list, boolean z) {
            this.val$streamId = i;
            this.val$requestHeaders = list;
            this.val$inFinished = z;
            super(str, objArr);
        }

        public void execute() {
            boolean onHeaders = SpdyConnection.this.pushObserver.onHeaders(this.val$streamId, this.val$requestHeaders, this.val$inFinished);
            if (onHeaders) {
                try {
                    SpdyConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                } catch (IOException e) {
                    return;
                }
            }
            if (onHeaders || this.val$inFinished) {
                synchronized (SpdyConnection.this) {
                    SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                }
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.6 */
    class AnonymousClass6 extends NamedRunnable {
        final /* synthetic */ OkBuffer val$buffer;
        final /* synthetic */ int val$byteCount;
        final /* synthetic */ boolean val$inFinished;
        final /* synthetic */ int val$streamId;

        AnonymousClass6(String str, Object[] objArr, int i, OkBuffer okBuffer, int i2, boolean z) {
            this.val$streamId = i;
            this.val$buffer = okBuffer;
            this.val$byteCount = i2;
            this.val$inFinished = z;
            super(str, objArr);
        }

        public void execute() {
            try {
                boolean onData = SpdyConnection.this.pushObserver.onData(this.val$streamId, this.val$buffer, this.val$byteCount, this.val$inFinished);
                if (onData) {
                    SpdyConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                }
                if (onData || this.val$inFinished) {
                    synchronized (SpdyConnection.this) {
                        SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.7 */
    class AnonymousClass7 extends NamedRunnable {
        final /* synthetic */ ErrorCode val$errorCode;
        final /* synthetic */ int val$streamId;

        AnonymousClass7(String str, Object[] objArr, int i, ErrorCode errorCode) {
            this.val$streamId = i;
            this.val$errorCode = errorCode;
            super(str, objArr);
        }

        public void execute() {
            SpdyConnection.this.pushObserver.onReset(this.val$streamId, this.val$errorCode);
            synchronized (SpdyConnection.this) {
                SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
            }
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private boolean client;
        private IncomingStreamHandler handler;
        private String hostName;
        private Protocol protocol;
        private PushObserver pushObserver;
        private BufferedSink sink;
        private BufferedSource source;

        public Builder(boolean z, Socket socket) throws IOException {
            this(TtmlNode.ANONYMOUS_REGION_ID, z, Okio.buffer(Okio.source(socket.getInputStream())), Okio.buffer(Okio.sink(socket.getOutputStream())));
        }

        public Builder(String str, boolean z, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.handler = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
            this.protocol = Protocol.SPDY_3;
            this.pushObserver = PushObserver.CANCEL;
            this.hostName = str;
            this.client = z;
            this.source = bufferedSource;
            this.sink = bufferedSink;
        }

        public Builder handler(IncomingStreamHandler incomingStreamHandler) {
            this.handler = incomingStreamHandler;
            return this;
        }

        public Builder protocol(Protocol protocol) {
            this.protocol = protocol;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public SpdyConnection build() {
            return new SpdyConnection();
        }
    }

    /* compiled from: Twttr */
    class Reader extends NamedRunnable implements Handler {

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.Reader.1 */
        class AnonymousClass1 extends NamedRunnable {
            final /* synthetic */ SpdyStream val$newStream;

            AnonymousClass1(String str, Object[] objArr, SpdyStream spdyStream) {
                this.val$newStream = spdyStream;
                super(str, objArr);
            }

            public void execute() {
                try {
                    SpdyConnection.this.handler.receive(this.val$newStream);
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }
        }

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.Reader.2 */
        class AnonymousClass2 extends NamedRunnable {
            AnonymousClass2(String str, Object... objArr) {
                super(str, objArr);
            }

            public void execute() {
                try {
                    SpdyConnection.this.frameWriter.ackSettings();
                } catch (IOException e) {
                }
            }
        }

        private Reader() {
            super("OkHttp %s", r5.hostName);
        }

        protected void execute() {
            ErrorCode errorCode;
            Throwable th;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                if (!SpdyConnection.this.client) {
                    SpdyConnection.this.frameReader.readConnectionHeader();
                }
                do {
                } while (SpdyConnection.this.frameReader.nextFrame(this));
                try {
                    SpdyConnection.this.close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
                } catch (IOException e) {
                }
            } catch (IOException e2) {
                errorCode = ErrorCode.PROTOCOL_ERROR;
                try {
                    SpdyConnection.this.close(errorCode, ErrorCode.PROTOCOL_ERROR);
                } catch (IOException e3) {
                }
            } catch (Throwable th2) {
                th = th2;
                SpdyConnection.this.close(errorCode, errorCode3);
                throw th;
            }
        }

        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            if (SpdyConnection.this.pushedStream(i)) {
                SpdyConnection.this.pushDataLater(i, bufferedSource, i2, z);
                return;
            }
            SpdyStream stream = SpdyConnection.this.getStream(i);
            if (stream == null) {
                SpdyConnection.this.writeSynResetLater(i, ErrorCode.INVALID_STREAM);
                bufferedSource.skip((long) i2);
                return;
            }
            stream.receiveData(bufferedSource, i2);
            if (z) {
                stream.receiveFin();
            }
        }

        public void headers(boolean z, boolean z2, int i, int i2, int i3, List<Header> list, HeadersMode headersMode) {
            if (SpdyConnection.this.pushedStream(i)) {
                SpdyConnection.this.pushHeadersLater(i, list, z2);
                return;
            }
            synchronized (SpdyConnection.this) {
                if (SpdyConnection.this.shutdown) {
                    return;
                }
                SpdyStream stream = SpdyConnection.this.getStream(i);
                if (stream != null) {
                    if (headersMode.failIfStreamPresent()) {
                        stream.closeLater(ErrorCode.PROTOCOL_ERROR);
                        SpdyConnection.this.removeStream(i);
                        return;
                    }
                    stream.receiveHeaders(list, headersMode);
                    if (z2) {
                        stream.receiveFin();
                    }
                } else if (headersMode.failIfStreamAbsent()) {
                    SpdyConnection.this.writeSynResetLater(i, ErrorCode.INVALID_STREAM);
                } else if (i <= SpdyConnection.this.lastGoodStreamId) {
                } else if (i % 2 == SpdyConnection.this.nextStreamId % 2) {
                } else {
                    stream = new SpdyStream(i, SpdyConnection.this, z, z2, i3, list);
                    SpdyConnection.this.lastGoodStreamId = i;
                    SpdyConnection.this.streams.put(Integer.valueOf(i), stream);
                    SpdyConnection.executor.submit(new AnonymousClass1("OkHttp %s stream %d", new Object[]{SpdyConnection.this.hostName, Integer.valueOf(i)}, stream));
                }
            }
        }

        public void rstStream(int i, ErrorCode errorCode) {
            if (SpdyConnection.this.pushedStream(i)) {
                SpdyConnection.this.pushResetLater(i, errorCode);
                return;
            }
            SpdyStream removeStream = SpdyConnection.this.removeStream(i);
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        public void settings(boolean z, Settings settings) {
            long j;
            SpdyStream[] spdyStreamArr = null;
            synchronized (SpdyConnection.this) {
                int initialWindowSize = SpdyConnection.this.peerSettings.getInitialWindowSize(65536);
                if (z) {
                    SpdyConnection.this.peerSettings.clear();
                }
                SpdyConnection.this.peerSettings.merge(settings);
                if (SpdyConnection.this.getProtocol() == Protocol.HTTP_2) {
                    ackSettingsLater();
                }
                int initialWindowSize2 = SpdyConnection.this.peerSettings.getInitialWindowSize(65536);
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    j = 0;
                } else {
                    j = (long) (initialWindowSize2 - initialWindowSize);
                    if (!SpdyConnection.this.receivedInitialPeerSettings) {
                        SpdyConnection.this.addBytesToWriteWindow(j);
                        SpdyConnection.this.receivedInitialPeerSettings = true;
                    }
                    if (!SpdyConnection.this.streams.isEmpty()) {
                        spdyStreamArr = (SpdyStream[]) SpdyConnection.this.streams.values().toArray(new SpdyStream[SpdyConnection.this.streams.size()]);
                    }
                }
            }
            if (spdyStreamArr != null && j != 0) {
                for (SpdyStream spdyStream : SpdyConnection.this.streams.values()) {
                    synchronized (spdyStream) {
                        spdyStream.addBytesToWriteWindow(j);
                    }
                }
            }
        }

        private void ackSettingsLater() {
            SpdyConnection.executor.submit(new AnonymousClass2("OkHttp %s ACK Settings", SpdyConnection.this.hostName));
        }

        public void ackSettings() {
        }

        public void ping(boolean z, int i, int i2) {
            if (z) {
                Ping access$2300 = SpdyConnection.this.removePing(i);
                if (access$2300 != null) {
                    access$2300.receive();
                    return;
                }
                return;
            }
            SpdyConnection.this.writePingLater(true, i, i2, null);
        }

        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            if (byteString.size() > 0) {
            }
            synchronized (SpdyConnection.this) {
                SpdyConnection.this.shutdown = true;
                Iterator it = SpdyConnection.this.streams.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (((Integer) entry.getKey()).intValue() > i && ((SpdyStream) entry.getValue()).isLocallyInitiated()) {
                        ((SpdyStream) entry.getValue()).receiveRstStream(ErrorCode.REFUSED_STREAM);
                        it.remove();
                    }
                }
            }
        }

        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (SpdyConnection.this) {
                    SpdyConnection spdyConnection = SpdyConnection.this;
                    spdyConnection.bytesLeftInWriteWindow += j;
                    SpdyConnection.this.notifyAll();
                }
                return;
            }
            SpdyStream stream = SpdyConnection.this.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }

        public void priority(int i, int i2) {
        }

        public void pushPromise(int i, int i2, List<Header> list) {
            SpdyConnection.this.pushRequestLater(i2, list);
        }
    }

    static {
        boolean z;
        if (SpdyConnection.class.desiredAssertionStatus()) {
            z = false;
        } else {
            z = true;
        }
        $assertionsDisabled = z;
        executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp SpdyConnection", true));
    }

    private SpdyConnection(Builder builder) {
        Variant http20Draft09;
        int i = 1;
        this.streams = new HashMap();
        this.idleStartTimeNs = System.nanoTime();
        this.unacknowledgedBytesRead = 0;
        this.okHttpSettings = new Settings();
        this.peerSettings = new Settings();
        this.receivedInitialPeerSettings = false;
        this.currentPushRequests = new LinkedHashSet();
        this.protocol = builder.protocol;
        this.pushObserver = builder.pushObserver;
        this.client = builder.client;
        this.handler = builder.handler;
        this.nextStreamId = builder.client ? 1 : 2;
        if (!builder.client) {
            i = 2;
        }
        this.nextPingId = i;
        if (builder.client) {
            this.okHttpSettings.set(7, 0, 16777216);
        }
        this.hostName = builder.hostName;
        if (this.protocol == Protocol.HTTP_2) {
            http20Draft09 = new Http20Draft09();
        } else if (this.protocol == Protocol.SPDY_3) {
            http20Draft09 = new Spdy3();
        } else {
            throw new AssertionError(this.protocol);
        }
        this.bytesLeftInWriteWindow = (long) this.peerSettings.getInitialWindowSize(65536);
        this.frameReader = http20Draft09.newReader(builder.source, this.client);
        this.frameWriter = http20Draft09.newWriter(builder.sink, this.client);
        this.maxFrameSize = (long) http20Draft09.maxFrameSize();
        this.readerRunnable = new Reader();
        new Thread(this.readerRunnable).start();
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    synchronized SpdyStream getStream(int i) {
        return (SpdyStream) this.streams.get(Integer.valueOf(i));
    }

    synchronized SpdyStream removeStream(int i) {
        SpdyStream spdyStream;
        spdyStream = (SpdyStream) this.streams.remove(Integer.valueOf(i));
        if (spdyStream != null && this.streams.isEmpty()) {
            setIdle(true);
        }
        return spdyStream;
    }

    private synchronized void setIdle(boolean z) {
        this.idleStartTimeNs = z ? System.nanoTime() : PtsTimestampAdjuster.DO_NOT_OFFSET;
    }

    public synchronized boolean isIdle() {
        return this.idleStartTimeNs != PtsTimestampAdjuster.DO_NOT_OFFSET;
    }

    public synchronized long getIdleStartTimeNs() {
        return this.idleStartTimeNs;
    }

    public SpdyStream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (this.client) {
            throw new IllegalStateException("Client cannot push requests.");
        } else if (this.protocol == Protocol.HTTP_2) {
            return newStream(i, list, z, false);
        } else {
            throw new IllegalStateException("protocol != HTTP_2");
        }
    }

    public SpdyStream newStream(List<Header> list, boolean z, boolean z2) throws IOException {
        return newStream(0, list, z, z2);
    }

    private SpdyStream newStream(int i, List<Header> list, boolean z, boolean z2) throws IOException {
        SpdyStream spdyStream;
        boolean z3 = !z;
        boolean z4 = !z2;
        synchronized (this.frameWriter) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new IOException("shutdown");
                }
                int i2 = this.nextStreamId;
                this.nextStreamId += 2;
                spdyStream = new SpdyStream(i2, this, z3, z4, -1, list);
                if (spdyStream.isOpen()) {
                    this.streams.put(Integer.valueOf(i2), spdyStream);
                    setIdle(false);
                }
            }
            if (i == 0) {
                this.frameWriter.synStream(z3, z4, i2, i, -1, 0, list);
            } else if (this.client) {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            } else {
                this.frameWriter.pushPromise(i, i2, list);
            }
        }
        if (!z) {
            this.frameWriter.flush();
        }
        return spdyStream;
    }

    void writeSynReply(int i, boolean z, List<Header> list) throws IOException {
        this.frameWriter.synReply(z, i, list);
    }

    public void writeData(int i, boolean z, OkBuffer okBuffer, long j) throws IOException {
        if (j == 0) {
            this.frameWriter.data(z, i, okBuffer, 0);
            return;
        }
        while (j > 0) {
            int min;
            boolean z2;
            synchronized (this) {
                while (this.bytesLeftInWriteWindow <= 0) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                }
                min = (int) Math.min(Math.min(j, this.bytesLeftInWriteWindow), this.maxFrameSize);
                this.bytesLeftInWriteWindow -= (long) min;
            }
            j -= (long) min;
            FrameWriter frameWriter = this.frameWriter;
            if (z && j == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            frameWriter.data(z2, i, okBuffer, min);
        }
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void writeSynResetLater(int i, ErrorCode errorCode) {
        executor.submit(new AnonymousClass1("OkHttp %s stream %d", new Object[]{this.hostName, Integer.valueOf(i)}, i, errorCode));
    }

    void writeSynReset(int i, ErrorCode errorCode) throws IOException {
        this.frameWriter.rstStream(i, errorCode);
    }

    void writeWindowUpdateLater(int i, long j) {
        executor.submit(new AnonymousClass2("OkHttp Window Update %s stream %d", new Object[]{this.hostName, Integer.valueOf(i)}, i, j));
    }

    public Ping ping() throws IOException {
        int i;
        Ping ping = new Ping();
        synchronized (this) {
            if (this.shutdown) {
                throw new IOException("shutdown");
            }
            i = this.nextPingId;
            this.nextPingId += 2;
            if (this.pings == null) {
                this.pings = new HashMap();
            }
            this.pings.put(Integer.valueOf(i), ping);
        }
        writePing(false, i, 1330343787, ping);
        return ping;
    }

    private void writePingLater(boolean z, int i, int i2, Ping ping) {
        executor.submit(new AnonymousClass3("OkHttp %s ping %08x%08x", new Object[]{this.hostName, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, ping));
    }

    private void writePing(boolean z, int i, int i2, Ping ping) throws IOException {
        synchronized (this.frameWriter) {
            if (ping != null) {
                ping.send();
            }
            this.frameWriter.ping(z, i, i2);
        }
    }

    private synchronized Ping removePing(int i) {
        return this.pings != null ? (Ping) this.pings.remove(Integer.valueOf(i)) : null;
    }

    public void flush() throws IOException {
        this.frameWriter.flush();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void shutdown(com.squareup.okhttp.v_1_5_1.internal.spdy.ErrorCode r5) throws java.io.IOException {
        /*
        r4 = this;
        r1 = r4.frameWriter;
        monitor-enter(r1);
        monitor-enter(r4);	 Catch:{ all -> 0x001a }
        r0 = r4.shutdown;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x000b;
    L_0x0008:
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001a }
    L_0x000a:
        return;
    L_0x000b:
        r0 = 1;
        r4.shutdown = r0;	 Catch:{ all -> 0x001d }
        r0 = r4.lastGoodStreamId;	 Catch:{ all -> 0x001d }
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        r2 = r4.frameWriter;	 Catch:{ all -> 0x001a }
        r3 = com.squareup.okhttp.v_1_5_1.internal.Util.EMPTY_BYTE_ARRAY;	 Catch:{ all -> 0x001a }
        r2.goAway(r0, r5, r3);	 Catch:{ all -> 0x001a }
        monitor-exit(r1);	 Catch:{ all -> 0x001a }
        goto L_0x000a;
    L_0x001a:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001a }
        throw r0;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        throw r0;	 Catch:{ all -> 0x001a }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.shutdown(com.squareup.okhttp.v_1_5_1.internal.spdy.ErrorCode):void");
    }

    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    private void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            IOException iOException;
            IOException e;
            SpdyStream[] spdyStreamArr;
            Ping[] pingArr;
            try {
                shutdown(errorCode);
                iOException = null;
            } catch (IOException e2) {
                iOException = e2;
            }
            synchronized (this) {
                if (this.streams.isEmpty()) {
                    spdyStreamArr = null;
                } else {
                    SpdyStream[] spdyStreamArr2 = (SpdyStream[]) this.streams.values().toArray(new SpdyStream[this.streams.size()]);
                    this.streams.clear();
                    setIdle(false);
                    spdyStreamArr = spdyStreamArr2;
                }
                if (this.pings != null) {
                    Ping[] pingArr2 = (Ping[]) this.pings.values().toArray(new Ping[this.pings.size()]);
                    this.pings = null;
                    pingArr = pingArr2;
                } else {
                    pingArr = null;
                }
            }
            if (spdyStreamArr != null) {
                e2 = iOException;
                for (SpdyStream close : spdyStreamArr) {
                    try {
                        close.close(errorCode2);
                    } catch (IOException iOException2) {
                        if (e2 != null) {
                            e2 = iOException2;
                        }
                    }
                }
                iOException2 = e2;
            }
            if (pingArr != null) {
                for (Ping cancel : pingArr) {
                    cancel.cancel();
                }
            }
            try {
                this.frameReader.close();
            } catch (IOException e22) {
                iOException2 = e22;
            }
            try {
                this.frameWriter.close();
                e22 = iOException2;
            } catch (IOException e3) {
                e22 = e3;
                if (iOException2 != null) {
                    e22 = iOException2;
                }
            }
            if (e22 != null) {
                throw e22;
            }
            return;
        }
        throw new AssertionError();
    }

    public void sendConnectionHeader() throws IOException {
        this.frameWriter.connectionHeader();
        this.frameWriter.settings(this.okHttpSettings);
    }

    public boolean isShutdown() {
        return this.shutdown;
    }

    private boolean pushedStream(int i) {
        return this.protocol == Protocol.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    private void pushRequestLater(int i, List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            executor.submit(new AnonymousClass4("OkHttp %s Push Request[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, list));
        }
    }

    private void pushHeadersLater(int i, List<Header> list, boolean z) {
        executor.submit(new AnonymousClass5("OkHttp %s Push Headers[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, list, z));
    }

    private void pushDataLater(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        OkBuffer okBuffer = new OkBuffer();
        bufferedSource.require((long) i2);
        bufferedSource.read(okBuffer, (long) i2);
        if (okBuffer.size() != ((long) i2)) {
            throw new IOException(okBuffer.size() + " != " + i2);
        }
        executor.submit(new AnonymousClass6("OkHttp %s Push Data[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, okBuffer, i2, z));
    }

    private void pushResetLater(int i, ErrorCode errorCode) {
        executor.submit(new AnonymousClass7("OkHttp %s Push Reset[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, errorCode));
    }
}
