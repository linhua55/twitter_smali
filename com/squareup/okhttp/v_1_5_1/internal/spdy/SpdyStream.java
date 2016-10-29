package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.google.android.exoplayer.C;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class SpdyStream {
    static final /* synthetic */ boolean $assertionsDisabled;
    long bytesLeftInWriteWindow;
    private final SpdyConnection connection;
    private ErrorCode errorCode;
    private final int id;
    private final int priority;
    private long readTimeoutMillis;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final SpdyDataSink sink;
    private final SpdyDataSource source;
    long unacknowledgedBytesRead;

    /* compiled from: Twttr */
    final class SpdyDataSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled;
        private boolean closed;
        private boolean finished;

        static {
            $assertionsDisabled = !SpdyStream.class.desiredAssertionStatus();
        }

        SpdyDataSink() {
        }

        public void write(OkBuffer okBuffer, long j) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(SpdyStream.this)) {
                while (j > 0) {
                    long min;
                    synchronized (SpdyStream.this) {
                        while (SpdyStream.this.bytesLeftInWriteWindow <= 0) {
                            try {
                                SpdyStream.this.wait();
                            } catch (InterruptedException e) {
                                throw new InterruptedIOException();
                            }
                        }
                        SpdyStream.this.checkOutNotClosed();
                        min = Math.min(SpdyStream.this.bytesLeftInWriteWindow, j);
                        SpdyStream spdyStream = SpdyStream.this;
                        spdyStream.bytesLeftInWriteWindow -= min;
                    }
                    j -= min;
                    SpdyStream.this.connection.writeData(SpdyStream.this.id, false, okBuffer, min);
                }
                return;
            }
            throw new AssertionError();
        }

        public void flush() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(SpdyStream.this)) {
                synchronized (SpdyStream.this) {
                    SpdyStream.this.checkOutNotClosed();
                }
                SpdyStream.this.connection.flush();
                return;
            }
            throw new AssertionError();
        }

        public Sink deadline(Deadline deadline) {
            return this;
        }

        public void close() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(SpdyStream.this)) {
                synchronized (SpdyStream.this) {
                    if (this.closed) {
                        return;
                    }
                    if (!SpdyStream.this.sink.finished) {
                        SpdyStream.this.connection.writeData(SpdyStream.this.id, true, null, 0);
                    }
                    synchronized (SpdyStream.this) {
                        this.closed = true;
                    }
                    SpdyStream.this.connection.flush();
                    SpdyStream.this.cancelStreamIfNecessary();
                    return;
                }
            }
            throw new AssertionError();
        }
    }

    /* compiled from: Twttr */
    final class SpdyDataSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled;
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private final OkBuffer readBuffer;
        private final OkBuffer receiveBuffer;

        static {
            $assertionsDisabled = !SpdyStream.class.desiredAssertionStatus();
        }

        private SpdyDataSource(long j) {
            this.receiveBuffer = new OkBuffer();
            this.readBuffer = new OkBuffer();
            this.maxByteCount = j;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            long j2;
            synchronized (SpdyStream.this) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.size() == 0) {
                    j2 = -1;
                } else {
                    j2 = this.readBuffer.read(okBuffer, Math.min(j, this.readBuffer.size()));
                    SpdyStream spdyStream = SpdyStream.this;
                    spdyStream.unacknowledgedBytesRead += j2;
                    if (SpdyStream.this.unacknowledgedBytesRead >= ((long) (SpdyStream.this.connection.peerSettings.getInitialWindowSize(65536) / 2))) {
                        SpdyStream.this.connection.writeWindowUpdateLater(SpdyStream.this.id, SpdyStream.this.unacknowledgedBytesRead);
                        SpdyStream.this.unacknowledgedBytesRead = 0;
                    }
                    synchronized (SpdyStream.this.connection) {
                        SpdyConnection access$500 = SpdyStream.this.connection;
                        access$500.unacknowledgedBytesRead += j2;
                        if (SpdyStream.this.connection.unacknowledgedBytesRead >= ((long) (SpdyStream.this.connection.peerSettings.getInitialWindowSize(65536) / 2))) {
                            SpdyStream.this.connection.writeWindowUpdateLater(0, SpdyStream.this.connection.unacknowledgedBytesRead);
                            SpdyStream.this.connection.unacknowledgedBytesRead = 0;
                        }
                    }
                }
            }
            return j2;
        }

        private void waitUntilReadable() throws IOException {
            long nanoTime;
            long access$700;
            if (SpdyStream.this.readTimeoutMillis != 0) {
                nanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
                access$700 = SpdyStream.this.readTimeoutMillis;
            } else {
                access$700 = 0;
                nanoTime = 0;
            }
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed && SpdyStream.this.errorCode == null) {
                if (SpdyStream.this.readTimeoutMillis == 0) {
                    SpdyStream.this.wait();
                } else if (access$700 > 0) {
                    try {
                        SpdyStream.this.wait(access$700);
                        access$700 = (SpdyStream.this.readTimeoutMillis + nanoTime) - (System.nanoTime() / C.MICROS_PER_SECOND);
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                } else {
                    throw new SocketTimeoutException("Read timed out");
                }
            }
        }

        void receive(BufferedSource bufferedSource, long j) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(SpdyStream.this)) {
                while (j > 0) {
                    boolean z;
                    Object obj;
                    synchronized (SpdyStream.this) {
                        z = this.finished;
                        obj = this.readBuffer.size() + j > this.maxByteCount ? 1 : null;
                    }
                    if (obj != null) {
                        bufferedSource.skip(j);
                        SpdyStream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                        return;
                    } else if (z) {
                        bufferedSource.skip(j);
                        return;
                    } else {
                        long read = bufferedSource.read(this.receiveBuffer, j);
                        if (read == -1) {
                            throw new EOFException();
                        }
                        j -= read;
                        synchronized (SpdyStream.this) {
                            if (this.readBuffer.size() == 0) {
                                obj = 1;
                            } else {
                                obj = null;
                            }
                            this.readBuffer.write(this.receiveBuffer, this.receiveBuffer.size());
                            if (obj != null) {
                                SpdyStream.this.notifyAll();
                            }
                        }
                    }
                }
                return;
            }
            throw new AssertionError();
        }

        public Source deadline(Deadline deadline) {
            return this;
        }

        public void close() throws IOException {
            synchronized (SpdyStream.this) {
                this.closed = true;
                this.readBuffer.clear();
                SpdyStream.this.notifyAll();
            }
            SpdyStream.this.cancelStreamIfNecessary();
        }

        private void checkNotClosed() throws IOException {
            if (this.closed) {
                throw new IOException("stream closed");
            } else if (SpdyStream.this.errorCode != null) {
                throw new IOException("stream was reset: " + SpdyStream.this.errorCode);
            }
        }
    }

    static {
        $assertionsDisabled = !SpdyStream.class.desiredAssertionStatus();
    }

    SpdyStream(int i, SpdyConnection spdyConnection, boolean z, boolean z2, int i2, List<Header> list) {
        this.unacknowledgedBytesRead = 0;
        this.readTimeoutMillis = 0;
        this.errorCode = null;
        if (spdyConnection == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.id = i;
            this.connection = spdyConnection;
            this.bytesLeftInWriteWindow = (long) spdyConnection.peerSettings.getInitialWindowSize(65536);
            this.source = new SpdyDataSource((long) spdyConnection.okHttpSettings.getInitialWindowSize(65536), null);
            this.sink = new SpdyDataSink();
            this.source.finished = z2;
            this.sink.finished = z;
            this.priority = i2;
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

    public SpdyConnection getConnection() {
        return this.connection;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public synchronized List<Header> getResponseHeaders() throws IOException {
        long nanoTime;
        long j;
        if (this.readTimeoutMillis != 0) {
            nanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
            j = this.readTimeoutMillis;
        } else {
            nanoTime = 0;
            j = 0;
        }
        while (this.responseHeaders == null && this.errorCode == null) {
            try {
                if (this.readTimeoutMillis == 0) {
                    wait();
                } else if (j > 0) {
                    wait(j);
                    j = (this.readTimeoutMillis + nanoTime) - (System.nanoTime() / C.MICROS_PER_SECOND);
                } else {
                    throw new SocketTimeoutException("Read response header timeout. readTimeoutMillis: " + this.readTimeoutMillis);
                }
            } catch (Throwable e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException();
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            }
        }
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

    public void setReadTimeout(long j) {
        this.readTimeoutMillis = j;
    }

    public long getReadTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    public Source getSource() {
        return this.source;
    }

    public Sink getSink() {
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

    void receiveData(BufferedSource bufferedSource, int i) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            this.source.receive(bufferedSource, (long) i);
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

    int getPriority() {
        return this.priority;
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
}
