package com.squareup.okhttp.internal.framed;

import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.framed.FrameReader.Handler;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okio.ByteString;
import okio.f;
import okio.i;
import okio.j;
import okio.q;

/* compiled from: Twttr */
public final class FramedConnection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private static final ExecutorService executor;
    long bytesLeftInWriteWindow;
    final boolean client;
    private final Set<Integer> currentPushRequests;
    final FrameWriter frameWriter;
    private final String hostName;
    private long idleStartTimeNs;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextPingId;
    private int nextStreamId;
    Settings okHttpSettings;
    final Settings peerSettings;
    private Map<Integer, Ping> pings;
    final Protocol protocol;
    private final ExecutorService pushExecutor;
    private final PushObserver pushObserver;
    final Reader readerRunnable;
    private boolean receivedInitialPeerSettings;
    private boolean shutdown;
    final Socket socket;
    private final Map<Integer, FramedStream> streams;
    long unacknowledgedBytesRead;
    final Variant variant;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.1 */
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
                FramedConnection.this.writeSynReset(this.val$streamId, this.val$errorCode);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.2 */
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
                FramedConnection.this.frameWriter.windowUpdate(this.val$streamId, this.val$unacknowledgedBytesRead);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.3 */
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
                FramedConnection.this.writePing(this.val$reply, this.val$payload1, this.val$payload2, this.val$ping);
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.4 */
    class AnonymousClass4 extends NamedRunnable {
        final /* synthetic */ List val$requestHeaders;
        final /* synthetic */ int val$streamId;

        AnonymousClass4(String str, Object[] objArr, int i, List list) {
            this.val$streamId = i;
            this.val$requestHeaders = list;
            super(str, objArr);
        }

        public void execute() {
            if (FramedConnection.this.pushObserver.onRequest(this.val$streamId, this.val$requestHeaders)) {
                try {
                    FramedConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                    synchronized (FramedConnection.this) {
                        FramedConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                    }
                } catch (IOException e) {
                }
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.5 */
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
            boolean onHeaders = FramedConnection.this.pushObserver.onHeaders(this.val$streamId, this.val$requestHeaders, this.val$inFinished);
            if (onHeaders) {
                try {
                    FramedConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                } catch (IOException e) {
                    return;
                }
            }
            if (onHeaders || this.val$inFinished) {
                synchronized (FramedConnection.this) {
                    FramedConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                }
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.6 */
    class AnonymousClass6 extends NamedRunnable {
        final /* synthetic */ f val$buffer;
        final /* synthetic */ int val$byteCount;
        final /* synthetic */ boolean val$inFinished;
        final /* synthetic */ int val$streamId;

        AnonymousClass6(String str, Object[] objArr, int i, f fVar, int i2, boolean z) {
            this.val$streamId = i;
            this.val$buffer = fVar;
            this.val$byteCount = i2;
            this.val$inFinished = z;
            super(str, objArr);
        }

        public void execute() {
            try {
                boolean onData = FramedConnection.this.pushObserver.onData(this.val$streamId, this.val$buffer, this.val$byteCount, this.val$inFinished);
                if (onData) {
                    FramedConnection.this.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
                }
                if (onData || this.val$inFinished) {
                    synchronized (FramedConnection.this) {
                        FramedConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.7 */
    class AnonymousClass7 extends NamedRunnable {
        final /* synthetic */ ErrorCode val$errorCode;
        final /* synthetic */ int val$streamId;

        AnonymousClass7(String str, Object[] objArr, int i, ErrorCode errorCode) {
            this.val$streamId = i;
            this.val$errorCode = errorCode;
            super(str, objArr);
        }

        public void execute() {
            FramedConnection.this.pushObserver.onReset(this.val$streamId, this.val$errorCode);
            synchronized (FramedConnection.this) {
                FramedConnection.this.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
            }
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private boolean client;
        private String hostName;
        private Listener listener;
        private Protocol protocol;
        private PushObserver pushObserver;
        private i sink;
        private Socket socket;
        private j source;

        public Builder(boolean z) throws IOException {
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.protocol = Protocol.SPDY_3;
            this.pushObserver = PushObserver.CANCEL;
            this.client = z;
        }

        public Builder socket(Socket socket) throws IOException {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), q.a(q.b(socket)), q.a(q.a(socket)));
        }

        public Builder socket(Socket socket, String str, j jVar, i iVar) {
            this.socket = socket;
            this.hostName = str;
            this.source = jVar;
            this.sink = iVar;
            return this;
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
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

        public FramedConnection build() throws IOException {
            return new FramedConnection();
        }
    }

    /* compiled from: Twttr */
    public abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS;

        public abstract void onStream(FramedStream framedStream) throws IOException;

        static {
            REFUSE_INCOMING_STREAMS = new Listener() {
                public void onStream(FramedStream framedStream) throws IOException {
                    framedStream.close(ErrorCode.REFUSED_STREAM);
                }
            };
        }

        public void onSettings(FramedConnection framedConnection) {
        }
    }

    /* compiled from: Twttr */
    class Reader extends NamedRunnable implements Handler {
        final FrameReader frameReader;

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.Reader.1 */
        class AnonymousClass1 extends NamedRunnable {
            final /* synthetic */ FramedStream val$newStream;

            AnonymousClass1(String str, Object[] objArr, FramedStream framedStream) {
                this.val$newStream = framedStream;
                super(str, objArr);
            }

            public void execute() {
                try {
                    FramedConnection.this.listener.onStream(this.val$newStream);
                } catch (Throwable e) {
                    Internal.logger.log(Level.INFO, "FramedConnection.Listener failure for " + FramedConnection.this.hostName, e);
                    try {
                        this.val$newStream.close(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException e2) {
                    }
                }
            }
        }

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.Reader.2 */
        class AnonymousClass2 extends NamedRunnable {
            AnonymousClass2(String str, Object... objArr) {
                super(str, objArr);
            }

            public void execute() {
                FramedConnection.this.listener.onSettings(FramedConnection.this);
            }
        }

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.internal.framed.FramedConnection.Reader.3 */
        class AnonymousClass3 extends NamedRunnable {
            final /* synthetic */ Settings val$peerSettings;

            AnonymousClass3(String str, Object[] objArr, Settings settings) {
                this.val$peerSettings = settings;
                super(str, objArr);
            }

            public void execute() {
                try {
                    FramedConnection.this.frameWriter.ackSettings(this.val$peerSettings);
                } catch (IOException e) {
                }
            }
        }

        private Reader(FrameReader frameReader) {
            super("OkHttp %s", r5.hostName);
            this.frameReader = frameReader;
        }

        protected void execute() {
            ErrorCode errorCode;
            Throwable th;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                if (!FramedConnection.this.client) {
                    this.frameReader.readConnectionPreface();
                }
                do {
                } while (this.frameReader.nextFrame(this));
                try {
                    FramedConnection.this.close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
                } catch (IOException e) {
                }
                Util.closeQuietly(this.frameReader);
            } catch (IOException e2) {
                errorCode = ErrorCode.PROTOCOL_ERROR;
                try {
                    FramedConnection.this.close(errorCode, ErrorCode.PROTOCOL_ERROR);
                } catch (IOException e3) {
                }
                Util.closeQuietly(this.frameReader);
            } catch (Throwable th2) {
                th = th2;
                FramedConnection.this.close(errorCode, errorCode3);
                Util.closeQuietly(this.frameReader);
                throw th;
            }
        }

        public void data(boolean z, int i, j jVar, int i2) throws IOException {
            if (FramedConnection.this.pushedStream(i)) {
                FramedConnection.this.pushDataLater(i, jVar, i2, z);
                return;
            }
            FramedStream stream = FramedConnection.this.getStream(i);
            if (stream == null) {
                FramedConnection.this.writeSynResetLater(i, ErrorCode.INVALID_STREAM);
                jVar.g((long) i2);
                return;
            }
            stream.receiveData(jVar, i2);
            if (z) {
                stream.receiveFin();
            }
        }

        public void headers(boolean z, boolean z2, int i, int i2, List<Header> list, HeadersMode headersMode) {
            if (FramedConnection.this.pushedStream(i)) {
                FramedConnection.this.pushHeadersLater(i, list, z2);
                return;
            }
            synchronized (FramedConnection.this) {
                if (FramedConnection.this.shutdown) {
                    return;
                }
                FramedStream stream = FramedConnection.this.getStream(i);
                if (stream != null) {
                    if (headersMode.failIfStreamPresent()) {
                        stream.closeLater(ErrorCode.PROTOCOL_ERROR);
                        FramedConnection.this.removeStream(i);
                        return;
                    }
                    stream.receiveHeaders(list, headersMode);
                    if (z2) {
                        stream.receiveFin();
                    }
                } else if (headersMode.failIfStreamAbsent()) {
                    FramedConnection.this.writeSynResetLater(i, ErrorCode.INVALID_STREAM);
                } else if (i <= FramedConnection.this.lastGoodStreamId) {
                } else if (i % 2 == FramedConnection.this.nextStreamId % 2) {
                } else {
                    stream = new FramedStream(i, FramedConnection.this, z, z2, list);
                    FramedConnection.this.lastGoodStreamId = i;
                    FramedConnection.this.streams.put(Integer.valueOf(i), stream);
                    FramedConnection.executor.execute(new AnonymousClass1("OkHttp %s stream %d", new Object[]{FramedConnection.this.hostName, Integer.valueOf(i)}, stream));
                }
            }
        }

        public void rstStream(int i, ErrorCode errorCode) {
            if (FramedConnection.this.pushedStream(i)) {
                FramedConnection.this.pushResetLater(i, errorCode);
                return;
            }
            FramedStream removeStream = FramedConnection.this.removeStream(i);
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        public void settings(boolean z, Settings settings) {
            FramedStream[] framedStreamArr;
            long j;
            synchronized (FramedConnection.this) {
                int initialWindowSize = FramedConnection.this.peerSettings.getInitialWindowSize(65536);
                if (z) {
                    FramedConnection.this.peerSettings.clear();
                }
                FramedConnection.this.peerSettings.merge(settings);
                if (FramedConnection.this.getProtocol() == Protocol.HTTP_2) {
                    ackSettingsLater(settings);
                }
                int initialWindowSize2 = FramedConnection.this.peerSettings.getInitialWindowSize(65536);
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    framedStreamArr = null;
                    j = 0;
                } else {
                    long j2 = (long) (initialWindowSize2 - initialWindowSize);
                    if (!FramedConnection.this.receivedInitialPeerSettings) {
                        FramedConnection.this.addBytesToWriteWindow(j2);
                        FramedConnection.this.receivedInitialPeerSettings = true;
                    }
                    if (FramedConnection.this.streams.isEmpty()) {
                        j = j2;
                        framedStreamArr = null;
                    } else {
                        j = j2;
                        framedStreamArr = (FramedStream[]) FramedConnection.this.streams.values().toArray(new FramedStream[FramedConnection.this.streams.size()]);
                    }
                }
                FramedConnection.executor.execute(new AnonymousClass2("OkHttp %s settings", FramedConnection.this.hostName));
            }
            if (framedStreamArr != null && j != 0) {
                for (FramedStream framedStream : framedStreamArr) {
                    synchronized (framedStream) {
                        framedStream.addBytesToWriteWindow(j);
                    }
                }
            }
        }

        private void ackSettingsLater(Settings settings) {
            FramedConnection.executor.execute(new AnonymousClass3("OkHttp %s ACK Settings", new Object[]{FramedConnection.this.hostName}, settings));
        }

        public void ackSettings() {
        }

        public void ping(boolean z, int i, int i2) {
            if (z) {
                Ping access$2400 = FramedConnection.this.removePing(i);
                if (access$2400 != null) {
                    access$2400.receive();
                    return;
                }
                return;
            }
            FramedConnection.this.writePingLater(true, i, i2, null);
        }

        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            if (byteString.f() > 0) {
            }
            synchronized (FramedConnection.this) {
                FramedStream[] framedStreamArr = (FramedStream[]) FramedConnection.this.streams.values().toArray(new FramedStream[FramedConnection.this.streams.size()]);
                FramedConnection.this.shutdown = true;
            }
            for (FramedStream framedStream : framedStreamArr) {
                if (framedStream.getId() > i && framedStream.isLocallyInitiated()) {
                    framedStream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    FramedConnection.this.removeStream(framedStream.getId());
                }
            }
        }

        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (FramedConnection.this) {
                    FramedConnection framedConnection = FramedConnection.this;
                    framedConnection.bytesLeftInWriteWindow += j;
                    FramedConnection.this.notifyAll();
                }
                return;
            }
            FramedStream stream = FramedConnection.this.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }

        public void priority(int i, int i2, int i3, boolean z) {
        }

        public void pushPromise(int i, int i2, List<Header> list) {
            FramedConnection.this.pushRequestLater(i2, list);
        }

        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }
    }

    static {
        boolean z;
        if (FramedConnection.class.desiredAssertionStatus()) {
            z = $assertionsDisabled;
        } else {
            z = true;
        }
        $assertionsDisabled = z;
        executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp FramedConnection", true));
    }

    private FramedConnection(Builder builder) throws IOException {
        int i = 2;
        this.streams = new HashMap();
        this.idleStartTimeNs = System.nanoTime();
        this.unacknowledgedBytesRead = 0;
        this.okHttpSettings = new Settings();
        this.peerSettings = new Settings();
        this.receivedInitialPeerSettings = $assertionsDisabled;
        this.currentPushRequests = new LinkedHashSet();
        this.protocol = builder.protocol;
        this.pushObserver = builder.pushObserver;
        this.client = builder.client;
        this.listener = builder.listener;
        this.nextStreamId = builder.client ? 1 : 2;
        if (builder.client && this.protocol == Protocol.HTTP_2) {
            this.nextStreamId += 2;
        }
        if (builder.client) {
            i = 1;
        }
        this.nextPingId = i;
        if (builder.client) {
            this.okHttpSettings.set(7, 0, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        this.hostName = builder.hostName;
        if (this.protocol == Protocol.HTTP_2) {
            this.variant = new Http2();
            this.pushExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(String.format("OkHttp %s Push Observer", new Object[]{this.hostName}), true));
            this.peerSettings.set(7, 0, 65535);
            this.peerSettings.set(5, 0, 16384);
        } else if (this.protocol == Protocol.SPDY_3) {
            this.variant = new Spdy3();
            this.pushExecutor = null;
        } else {
            throw new AssertionError(this.protocol);
        }
        this.bytesLeftInWriteWindow = (long) this.peerSettings.getInitialWindowSize(65536);
        this.socket = builder.socket;
        this.frameWriter = this.variant.newWriter(builder.sink, this.client);
        this.readerRunnable = new Reader(this.variant.newReader(builder.source, this.client), null);
        new Thread(this.readerRunnable).start();
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    synchronized FramedStream getStream(int i) {
        return (FramedStream) this.streams.get(Integer.valueOf(i));
    }

    synchronized FramedStream removeStream(int i) {
        FramedStream framedStream;
        framedStream = (FramedStream) this.streams.remove(Integer.valueOf(i));
        if (framedStream != null && this.streams.isEmpty()) {
            setIdle(true);
        }
        notifyAll();
        return framedStream;
    }

    private synchronized void setIdle(boolean z) {
        this.idleStartTimeNs = z ? System.nanoTime() : PtsTimestampAdjuster.DO_NOT_OFFSET;
    }

    public synchronized boolean isIdle() {
        return this.idleStartTimeNs != PtsTimestampAdjuster.DO_NOT_OFFSET ? true : $assertionsDisabled;
    }

    public synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
    }

    public synchronized long getIdleStartTimeNs() {
        return this.idleStartTimeNs;
    }

    public FramedStream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (this.client) {
            throw new IllegalStateException("Client cannot push requests.");
        } else if (this.protocol == Protocol.HTTP_2) {
            return newStream(i, list, z, $assertionsDisabled);
        } else {
            throw new IllegalStateException("protocol != HTTP_2");
        }
    }

    public FramedStream newStream(List<Header> list, boolean z, boolean z2) throws IOException {
        return newStream(0, list, z, z2);
    }

    private FramedStream newStream(int i, List<Header> list, boolean z, boolean z2) throws IOException {
        FramedStream framedStream;
        boolean z3 = true;
        boolean z4 = !z ? true : $assertionsDisabled;
        if (z2) {
            z3 = $assertionsDisabled;
        }
        synchronized (this.frameWriter) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new IOException("shutdown");
                }
                int i2 = this.nextStreamId;
                this.nextStreamId += 2;
                framedStream = new FramedStream(i2, this, z4, z3, list);
                if (framedStream.isOpen()) {
                    this.streams.put(Integer.valueOf(i2), framedStream);
                    setIdle($assertionsDisabled);
                }
            }
            if (i == 0) {
                this.frameWriter.synStream(z4, z3, i2, i, list);
            } else if (this.client) {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            } else {
                this.frameWriter.pushPromise(i, i2, list);
            }
        }
        if (!z) {
            this.frameWriter.flush();
        }
        return framedStream;
    }

    void writeSynReply(int i, boolean z, List<Header> list) throws IOException {
        this.frameWriter.synReply(z, i, list);
    }

    public void writeData(int i, boolean z, f fVar, long j) throws IOException {
        if (j == 0) {
            this.frameWriter.data(z, i, fVar, 0);
            return;
        }
        while (j > 0) {
            int min;
            boolean z2;
            synchronized (this) {
                while (this.bytesLeftInWriteWindow <= 0) {
                    if (this.streams.containsKey(Integer.valueOf(i))) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            throw new InterruptedIOException();
                        }
                    }
                    throw new IOException("stream closed");
                }
                min = Math.min((int) Math.min(j, this.bytesLeftInWriteWindow), this.frameWriter.maxDataLength());
                this.bytesLeftInWriteWindow -= (long) min;
            }
            j -= (long) min;
            FrameWriter frameWriter = this.frameWriter;
            if (z && j == 0) {
                z2 = true;
            } else {
                z2 = $assertionsDisabled;
            }
            frameWriter.data(z2, i, fVar, min);
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
        executor.execute(new AnonymousClass2("OkHttp Window Update %s stream %d", new Object[]{this.hostName, Integer.valueOf(i)}, i, j));
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
        writePing($assertionsDisabled, i, 1330343787, ping);
        return ping;
    }

    private void writePingLater(boolean z, int i, int i2, Ping ping) {
        executor.execute(new AnonymousClass3("OkHttp %s ping %08x%08x", new Object[]{this.hostName, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, ping));
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
    public void shutdown(com.squareup.okhttp.internal.framed.ErrorCode r5) throws java.io.IOException {
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
        r3 = com.squareup.okhttp.internal.Util.EMPTY_BYTE_ARRAY;	 Catch:{ all -> 0x001a }
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.FramedConnection.shutdown(com.squareup.okhttp.internal.framed.ErrorCode):void");
    }

    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    private void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        IOException iOException;
        IOException e;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            FramedStream[] framedStreamArr;
            Ping[] pingArr;
            try {
                shutdown(errorCode);
                iOException = null;
            } catch (IOException e2) {
                iOException = e2;
            }
            synchronized (this) {
                if (this.streams.isEmpty()) {
                    framedStreamArr = null;
                } else {
                    FramedStream[] framedStreamArr2 = (FramedStream[]) this.streams.values().toArray(new FramedStream[this.streams.size()]);
                    this.streams.clear();
                    setIdle($assertionsDisabled);
                    framedStreamArr = framedStreamArr2;
                }
                if (this.pings != null) {
                    Ping[] pingArr2 = (Ping[]) this.pings.values().toArray(new Ping[this.pings.size()]);
                    this.pings = null;
                    pingArr = pingArr2;
                } else {
                    pingArr = null;
                }
            }
            if (framedStreamArr != null) {
                e2 = iOException;
                for (FramedStream close : framedStreamArr) {
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
                this.frameWriter.close();
                e2 = iOException2;
            } catch (IOException e3) {
                e2 = e3;
                if (iOException2 != null) {
                    e2 = iOException2;
                }
            }
            try {
                this.socket.close();
            } catch (IOException e4) {
                e2 = e4;
            }
            if (e2 != null) {
                throw e2;
            }
            return;
        }
        throw new AssertionError();
    }

    public void sendConnectionPreface() throws IOException {
        this.frameWriter.connectionPreface();
        this.frameWriter.settings(this.okHttpSettings);
        int initialWindowSize = this.okHttpSettings.getInitialWindowSize(65536);
        if (initialWindowSize != 65536) {
            this.frameWriter.windowUpdate(0, (long) (initialWindowSize - 65536));
        }
    }

    public void setSettings(Settings settings) throws IOException {
        synchronized (this.frameWriter) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new IOException("shutdown");
                }
                this.okHttpSettings.merge(settings);
                this.frameWriter.settings(settings);
            }
        }
    }

    private boolean pushedStream(int i) {
        return (this.protocol == Protocol.HTTP_2 && i != 0 && (i & 1) == 0) ? true : $assertionsDisabled;
    }

    private void pushRequestLater(int i, List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            this.pushExecutor.execute(new AnonymousClass4("OkHttp %s Push Request[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, list));
        }
    }

    private void pushHeadersLater(int i, List<Header> list, boolean z) {
        this.pushExecutor.execute(new AnonymousClass5("OkHttp %s Push Headers[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, list, z));
    }

    private void pushDataLater(int i, j jVar, int i2, boolean z) throws IOException {
        f fVar = new f();
        jVar.a((long) i2);
        jVar.read(fVar, (long) i2);
        if (fVar.a() != ((long) i2)) {
            throw new IOException(fVar.a() + " != " + i2);
        }
        this.pushExecutor.execute(new AnonymousClass6("OkHttp %s Push Data[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, fVar, i2, z));
    }

    private void pushResetLater(int i, ErrorCode errorCode) {
        this.pushExecutor.execute(new AnonymousClass7("OkHttp %s Push Reset[%s]", new Object[]{this.hostName, Integer.valueOf(i)}, i, errorCode));
    }
}
