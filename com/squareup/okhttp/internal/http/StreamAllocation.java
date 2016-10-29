package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.io.RealConnection;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.aa;

/* compiled from: Twttr */
public final class StreamAllocation {
    public final Address address;
    private boolean canceled;
    private RealConnection connection;
    private final ConnectionPool connectionPool;
    private boolean released;
    private RouteSelector routeSelector;
    private HttpStream stream;

    public StreamAllocation(ConnectionPool connectionPool, Address address) {
        this.connectionPool = connectionPool;
        this.address = address;
    }

    public HttpStream newStream(int i, int i2, int i3, boolean z, boolean z2) throws RouteException, IOException {
        try {
            HttpStream http2xStream;
            RealConnection findHealthyConnection = findHealthyConnection(i, i2, i3, z, z2);
            if (findHealthyConnection.framedConnection != null) {
                http2xStream = new Http2xStream(this, findHealthyConnection.framedConnection);
            } else {
                findHealthyConnection.getSocket().setSoTimeout(i2);
                findHealthyConnection.source.timeout().timeout((long) i2, TimeUnit.MILLISECONDS);
                findHealthyConnection.sink.timeout().timeout((long) i3, TimeUnit.MILLISECONDS);
                http2xStream = new Http1xStream(this, findHealthyConnection.source, findHealthyConnection.sink);
            }
            synchronized (this.connectionPool) {
                findHealthyConnection.streamCount++;
                this.stream = http2xStream;
            }
            return http2xStream;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.squareup.okhttp.internal.io.RealConnection findHealthyConnection(int r4, int r5, int r6, boolean r7, boolean r8) throws java.io.IOException, com.squareup.okhttp.internal.http.RouteException {
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.findConnection(r4, r5, r6, r7);
        r1 = r3.connectionPool;
        monitor-enter(r1);
        r2 = r0.streamCount;	 Catch:{ all -> 0x0018 }
        if (r2 != 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
    L_0x000c:
        return r0;
    L_0x000d:
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        r1 = r0.isHealthy(r8);
        if (r1 != 0) goto L_0x000c;
    L_0x0014:
        r3.connectionFailed();
        goto L_0x0000;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.StreamAllocation.findHealthyConnection(int, int, int, boolean, boolean):com.squareup.okhttp.internal.io.RealConnection");
    }

    private RealConnection findConnection(int i, int i2, int i3, boolean z) throws IOException, RouteException {
        RealConnection realConnection;
        synchronized (this.connectionPool) {
            if (this.released) {
                throw new IllegalStateException("released");
            } else if (this.stream != null) {
                throw new IllegalStateException("stream != null");
            } else if (this.canceled) {
                throw new IOException("Canceled");
            } else {
                realConnection = this.connection;
                if (realConnection == null || realConnection.noNewStreams) {
                    realConnection = Internal.instance.get(this.connectionPool, this.address, this);
                    if (realConnection != null) {
                        this.connection = realConnection;
                    } else {
                        if (this.routeSelector == null) {
                            this.routeSelector = new RouteSelector(this.address, routeDatabase());
                        }
                        realConnection = new RealConnection(this.routeSelector.next());
                        acquire(realConnection);
                        synchronized (this.connectionPool) {
                            Internal.instance.put(this.connectionPool, realConnection);
                            this.connection = realConnection;
                            if (this.canceled) {
                                throw new IOException("Canceled");
                            }
                        }
                        realConnection.connect(i, i2, i3, this.address.getConnectionSpecs(), z);
                        routeDatabase().connected(realConnection.getRoute());
                    }
                }
            }
        }
        return realConnection;
    }

    public void streamFinished(HttpStream httpStream) {
        synchronized (this.connectionPool) {
            if (httpStream != null) {
                if (httpStream == this.stream) {
                }
            }
            throw new IllegalStateException("expected " + this.stream + " but was " + httpStream);
        }
        deallocate(false, false, true);
    }

    public HttpStream stream() {
        HttpStream httpStream;
        synchronized (this.connectionPool) {
            httpStream = this.stream;
        }
        return httpStream;
    }

    private RouteDatabase routeDatabase() {
        return Internal.instance.routeDatabase(this.connectionPool);
    }

    public synchronized RealConnection connection() {
        return this.connection;
    }

    public void release() {
        deallocate(false, true, false);
    }

    public void noNewStreams() {
        deallocate(true, false, false);
    }

    private void deallocate(boolean z, boolean z2, boolean z3) {
        RealConnection realConnection = null;
        synchronized (this.connectionPool) {
            if (z3) {
                this.stream = null;
            }
            if (z2) {
                this.released = true;
            }
            if (this.connection != null) {
                if (z) {
                    this.connection.noNewStreams = true;
                }
                if (this.stream == null && (this.released || this.connection.noNewStreams)) {
                    release(this.connection);
                    if (this.connection.streamCount > 0) {
                        this.routeSelector = null;
                    }
                    if (this.connection.allocations.isEmpty()) {
                        this.connection.idleAtNanos = System.nanoTime();
                        if (Internal.instance.connectionBecameIdle(this.connectionPool, this.connection)) {
                            realConnection = this.connection;
                        }
                    }
                    this.connection = null;
                }
            }
        }
        if (realConnection != null) {
            Util.closeQuietly(realConnection.getSocket());
        }
    }

    public void cancel() {
        synchronized (this.connectionPool) {
            this.canceled = true;
            HttpStream httpStream = this.stream;
            RealConnection realConnection = this.connection;
        }
        if (httpStream != null) {
            httpStream.cancel();
        } else if (realConnection != null) {
            realConnection.cancel();
        }
    }

    private void connectionFailed(IOException iOException) {
        synchronized (this.connectionPool) {
            if (this.routeSelector != null) {
                if (this.connection.streamCount == 0) {
                    this.routeSelector.connectFailed(this.connection.getRoute(), iOException);
                } else {
                    this.routeSelector = null;
                }
            }
        }
        connectionFailed();
    }

    public void connectionFailed() {
        deallocate(true, false, true);
    }

    public void acquire(RealConnection realConnection) {
        realConnection.allocations.add(new WeakReference(this));
    }

    private void release(RealConnection realConnection) {
        int size = realConnection.allocations.size();
        for (int i = 0; i < size; i++) {
            if (((Reference) realConnection.allocations.get(i)).get() == this) {
                realConnection.allocations.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public boolean recover(RouteException routeException) {
        if (this.connection != null) {
            connectionFailed(routeException.getLastConnectException());
        }
        if ((this.routeSelector == null || this.routeSelector.hasNext()) && isRecoverable(routeException)) {
            return true;
        }
        return false;
    }

    public boolean recover(IOException iOException, aa aaVar) {
        if (this.connection != null) {
            int i = this.connection.streamCount;
            connectionFailed(iOException);
            if (i == 1) {
                return false;
            }
        }
        boolean z = aaVar == null || (aaVar instanceof RetryableSink);
        if ((this.routeSelector == null || this.routeSelector.hasNext()) && isRecoverable(iOException) && z) {
            return true;
        }
        return false;
    }

    private boolean isRecoverable(IOException iOException) {
        if ((iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        return true;
    }

    private boolean isRecoverable(RouteException routeException) {
        IOException lastConnectException = routeException.getLastConnectException();
        if (lastConnectException instanceof ProtocolException) {
            return false;
        }
        if (lastConnectException instanceof InterruptedIOException) {
            return lastConnectException instanceof SocketTimeoutException;
        }
        if (((lastConnectException instanceof SSLHandshakeException) && (lastConnectException.getCause() instanceof CertificateException)) || (lastConnectException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return this.address.toString();
    }
}
