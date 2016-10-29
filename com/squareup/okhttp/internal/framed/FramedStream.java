package com.squareup.okhttp.internal.framed;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.a;
import okio.aa;
import okio.ab;
import okio.ac;
import okio.f;
import okio.j;

/* compiled from: Twttr */
public final class FramedStream {
    static final /* synthetic */ boolean $assertionsDisabled;
    long bytesLeftInWriteWindow;
    private final FramedConnection connection;
    private ErrorCode errorCode;
    private final int id;
    private final StreamTimeout readTimeout;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramedDataSink sink;
    private final FramedDataSource source;
    long unacknowledgedBytesRead;
    private final StreamTimeout writeTimeout;

    /* compiled from: Twttr */
    final class FramedDataSink implements aa {
        static final /* synthetic */ boolean $assertionsDisabled;
        private static final long EMIT_BUFFER_SIZE = 16384;
        private boolean closed;
        private boolean finished;
        private final f sendBuffer;

        static {
            $assertionsDisabled = !FramedStream.class.desiredAssertionStatus() ? true : $assertionsDisabled;
        }

        FramedDataSink() {
            this.sendBuffer = new f();
        }

        public void write(f fVar, long j) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(FramedStream.this)) {
                this.sendBuffer.write(fVar, j);
                while (this.sendBuffer.a() >= EMIT_BUFFER_SIZE) {
                    emitDataFrame($assertionsDisabled);
                }
                return;
            }
            throw new AssertionError();
        }

        private void emitDataFrame(boolean z) throws IOException {
            synchronized (FramedStream.this) {
                FramedStream.this.writeTimeout.enter();
                while (FramedStream.this.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && FramedStream.this.errorCode == null) {
                    try {
                        FramedStream.this.waitForIo();
                    } catch (Throwable th) {
                        FramedStream.this.writeTimeout.exitAndThrowIfTimedOut();
                    }
                }
                FramedStream.this.writeTimeout.exitAndThrowIfTimedOut();
                FramedStream.this.checkOutNotClosed();
                long min = Math.min(FramedStream.this.bytesLeftInWriteWindow, this.sendBuffer.a());
                FramedStream framedStream = FramedStream.this;
                framedStream.bytesLeftInWriteWindow -= min;
            }
            FramedStream.this.writeTimeout.enter();
            try {
                FramedConnection access$500 = FramedStream.this.connection;
                int access$600 = FramedStream.this.id;
                boolean z2 = (z && min == this.sendBuffer.a()) ? true : $assertionsDisabled;
                access$500.writeData(access$600, z2, this.sendBuffer, min);
            } finally {
                FramedStream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        public void flush() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(FramedStream.this)) {
                synchronized (FramedStream.this) {
                    FramedStream.this.checkOutNotClosed();
                }
                while (this.sendBuffer.a() > 0) {
                    emitDataFrame($assertionsDisabled);
                    FramedStream.this.connection.flush();
                }
                return;
            }
            throw new AssertionError();
        }

        public ac timeout() {
            return FramedStream.this.writeTimeout;
        }

        public void close() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(FramedStream.this)) {
                synchronized (FramedStream.this) {
                    if (this.closed) {
                        return;
                    }
                    if (!FramedStream.this.sink.finished) {
                        if (this.sendBuffer.a() > 0) {
                            while (this.sendBuffer.a() > 0) {
                                emitDataFrame(true);
                            }
                        } else {
                            FramedStream.this.connection.writeData(FramedStream.this.id, true, null, 0);
                        }
                    }
                    synchronized (FramedStream.this) {
                        this.closed = true;
                    }
                    FramedStream.this.connection.flush();
                    FramedStream.this.cancelStreamIfNecessary();
                    return;
                }
            }
            throw new AssertionError();
        }
    }

    /* compiled from: Twttr */
    final class FramedDataSource implements ab {
        static final /* synthetic */ boolean $assertionsDisabled;
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private final f readBuffer;
        private final f receiveBuffer;

        static {
            $assertionsDisabled = !FramedStream.class.desiredAssertionStatus();
        }

        private FramedDataSource(long j) {
            this.receiveBuffer = new f();
            this.readBuffer = new f();
            this.maxByteCount = j;
        }

        public long read(f fVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            long j2;
            synchronized (FramedStream.this) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.a() == 0) {
                    j2 = -1;
                } else {
                    j2 = this.readBuffer.read(fVar, Math.min(j, this.readBuffer.a()));
                    FramedStream framedStream = FramedStream.this;
                    framedStream.unacknowledgedBytesRead += j2;
                    if (FramedStream.this.unacknowledgedBytesRead >= ((long) (FramedStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2))) {
                        FramedStream.this.connection.writeWindowUpdateLater(FramedStream.this.id, FramedStream.this.unacknowledgedBytesRead);
                        FramedStream.this.unacknowledgedBytesRead = 0;
                    }
                    synchronized (FramedStream.this.connection) {
                        FramedConnection access$500 = FramedStream.this.connection;
                        access$500.unacknowledgedBytesRead += j2;
                        if (FramedStream.this.connection.unacknowledgedBytesRead >= ((long) (FramedStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2))) {
                            FramedStream.this.connection.writeWindowUpdateLater(0, FramedStream.this.connection.unacknowledgedBytesRead);
                            FramedStream.this.connection.unacknowledgedBytesRead = 0;
                        }
                    }
                }
            }
            return j2;
        }

        private void waitUntilReadable() throws IOException {
            FramedStream.this.readTimeout.enter();
            while (this.readBuffer.a() == 0 && !this.finished && !this.closed && FramedStream.this.errorCode == null) {
                try {
                    FramedStream.this.waitForIo();
                } catch (Throwable th) {
                    FramedStream.this.readTimeout.exitAndThrowIfTimedOut();
                }
            }
            FramedStream.this.readTimeout.exitAndThrowIfTimedOut();
        }

        void receive(j jVar, long j) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(FramedStream.this)) {
                while (j > 0) {
                    boolean z;
                    Object obj;
                    synchronized (FramedStream.this) {
                        z = this.finished;
                        obj = this.readBuffer.a() + j > this.maxByteCount ? 1 : null;
                    }
                    if (obj != null) {
                        jVar.g(j);
                        FramedStream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                        return;
                    } else if (z) {
                        jVar.g(j);
                        return;
                    } else {
                        long read = jVar.read(this.receiveBuffer, j);
                        if (read == -1) {
                            throw new EOFException();
                        }
                        j -= read;
                        synchronized (FramedStream.this) {
                            if (this.readBuffer.a() == 0) {
                                obj = 1;
                            } else {
                                obj = null;
                            }
                            this.readBuffer.a(this.receiveBuffer);
                            if (obj != null) {
                                FramedStream.this.notifyAll();
                            }
                        }
                    }
                }
                return;
            }
            throw new AssertionError();
        }

        public ac timeout() {
            return FramedStream.this.readTimeout;
        }

        public void close() throws IOException {
            synchronized (FramedStream.this) {
                this.closed = true;
                this.readBuffer.u();
                FramedStream.this.notifyAll();
            }
            FramedStream.this.cancelStreamIfNecessary();
        }

        private void checkNotClosed() throws IOException {
            if (this.closed) {
                throw new IOException("stream closed");
            } else if (FramedStream.this.errorCode != null) {
                throw new IOException("stream was reset: " + FramedStream.this.errorCode);
            }
        }
    }

    /* compiled from: Twttr */
    class StreamTimeout extends a {
        StreamTimeout() {
        }

        protected void timedOut() {
            FramedStream.this.closeLater(ErrorCode.CANCEL);
        }

        protected IOException newTimeoutException(IOException iOException) {
            IOException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }
    }

    static {
        $assertionsDisabled = !FramedStream.class.desiredAssertionStatus();
    }

    FramedStream(int i, FramedConnection framedConnection, boolean z, boolean z2, List<Header> list) {
        this.unacknowledgedBytesRead = 0;
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        this.errorCode = null;
        if (framedConnection == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.id = i;
            this.connection = framedConnection;
            this.bytesLeftInWriteWindow = (long) framedConnection.peerSettings.getInitialWindowSize(65536);
            this.source = new FramedDataSource((long) framedConnection.okHttpSettings.getInitialWindowSize(65536), null);
            this.sink = new FramedDataSink();
            this.source.finished = z2;
            this.sink.finished = z;
            this.requestHeaders = list;
        }
    }

    public int getId() {
        return this.id;
    }

    public synchronized boolean isOpen() {
        boolean z = false;
        synchronized (this) {
            if (this.errorCode == null) {
                if (!(this.source.finished || this.source.closed) || (!(this.sink.finished || this.sink.closed) || this.responseHeaders == null)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean isLocallyInitiated() {
        boolean z;
        if ((this.id & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        return this.connection.client == z;
    }

    public FramedConnection getConnection() {
        return this.connection;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public synchronized List<Header> getResponseHeaders() throws IOException {
        this.readTimeout.enter();
        while (this.responseHeaders == null && this.errorCode == null) {
            try {
                waitForIo();
            } catch (Throwable th) {
                this.readTimeout.exitAndThrowIfTimedOut();
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        if (this.responseHeaders != null) {
        } else {
            throw new IOException("stream was reset: " + this.errorCode);
        }
        return this.responseHeaders;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void reply(List<Header> list, boolean z) throws IOException {
        boolean z2 = true;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (list == null) {
                    throw new NullPointerException("responseHeaders == null");
                } else if (this.responseHeaders != null) {
                    throw new IllegalStateException("reply already sent");
                } else {
                    this.responseHeaders = list;
                    if (z) {
                        z2 = false;
                    } else {
                        this.sink.finished = true;
                    }
                }
            }
            this.connection.writeSynReply(this.id, z2, list);
            if (z2) {
                this.connection.flush();
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public ac readTimeout() {
        return this.readTimeout;
    }

    public ac writeTimeout() {
        return this.writeTimeout;
    }

    public ab getSource() {
        return this.source;
    }

    public aa getSink() {
        synchronized (this) {
            if (this.responseHeaders != null || isLocallyInitiated()) {
            } else {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public void close(ErrorCode errorCode) throws IOException {
        if (closeInternal(errorCode)) {
            this.connection.writeSynReset(this.id, errorCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.id, errorCode);
        }
    }

    private boolean closeInternal(ErrorCode errorCode) {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.errorCode != null) {
                    return false;
                } else if (this.source.finished && this.sink.finished) {
                    return false;
                } else {
                    this.errorCode = errorCode;
                    notifyAll();
                    this.connection.removeStream(this.id);
                    return true;
                }
            }
        }
        throw new AssertionError();
    }

    void receiveHeaders(List<Header> list, HeadersMode headersMode) {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            ErrorCode errorCode = null;
            boolean z = true;
            synchronized (this) {
                if (this.responseHeaders == null) {
                    if (headersMode.failIfHeadersAbsent()) {
                        errorCode = ErrorCode.PROTOCOL_ERROR;
                    } else {
                        this.responseHeaders = list;
                        z = isOpen();
                        notifyAll();
                    }
                } else if (headersMode.failIfHeadersPresent()) {
                    errorCode = ErrorCode.STREAM_IN_USE;
                } else {
                    List arrayList = new ArrayList();
                    arrayList.addAll(this.responseHeaders);
                    arrayList.addAll(list);
                    this.responseHeaders = arrayList;
                }
            }
            if (errorCode != null) {
                closeLater(errorCode);
                return;
            } else if (!z) {
                this.connection.removeStream(this.id);
                return;
            } else {
                return;
            }
        }
        throw new AssertionError();
    }

    void receiveData(j jVar, int i) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            this.source.receive(jVar, (long) i);
            return;
        }
        throw new AssertionError();
    }

    void receiveFin() {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            boolean isOpen;
            synchronized (this) {
                this.source.finished = true;
                isOpen = isOpen();
                notifyAll();
            }
            if (!isOpen) {
                this.connection.removeStream(this.id);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    private void cancelStreamIfNecessary() throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            Object obj;
            boolean isOpen;
            synchronized (this) {
                obj = (!this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed)) ? 1 : null;
                isOpen = isOpen();
            }
            if (obj != null) {
                close(ErrorCode.CANCEL);
                return;
            } else if (!isOpen) {
                this.connection.removeStream(this.id);
                return;
            } else {
                return;
            }
        }
        throw new AssertionError();
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    private void checkOutNotClosed() throws IOException {
        if (this.sink.closed) {
            throw new IOException("stream closed");
        } else if (this.sink.finished) {
            throw new IOException("stream finished");
        } else if (this.errorCode != null) {
            throw new IOException("stream was reset: " + this.errorCode);
        }
    }

    private void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}
