package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.StreamAllocation;
import com.squareup.okhttp.internal.io.RealConnection;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    private static final ConnectionPool systemDefault;
    private Runnable cleanupRunnable;
    private final Deque<RealConnection> connections;
    private final Executor executor;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final RouteDatabase routeDatabase;

    static {
        $assertionsDisabled = !ConnectionPool.class.desiredAssertionStatus() ? true : $assertionsDisabled;
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long parseLong = property2 != null ? Long.parseLong(property2) : DEFAULT_KEEP_ALIVE_DURATION_MS;
        if (property != null && !Boolean.parseBoolean(property)) {
            systemDefault = new ConnectionPool(0, parseLong);
        } else if (property3 != null) {
            systemDefault = new ConnectionPool(Integer.parseInt(property3), parseLong);
        } else {
            systemDefault = new ConnectionPool(5, parseLong);
        }
    }

    public ConnectionPool(int i, long j) {
        this(i, j, TimeUnit.MILLISECONDS);
    }

    public ConnectionPool(int i, long j, TimeUnit timeUnit) {
        this.executor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
        this.cleanupRunnable = new 1(this);
        this.connections = new ArrayDeque();
        this.routeDatabase = new RouteDatabase();
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    public static ConnectionPool getDefault() {
        return systemDefault;
    }

    public synchronized int getIdleConnectionCount() {
        int i;
        i = 0;
        for (RealConnection realConnection : this.connections) {
            int i2;
            if (realConnection.allocations.isEmpty()) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    public synchronized int getConnectionCount() {
        return this.connections.size();
    }

    @Deprecated
    public synchronized int getSpdyConnectionCount() {
        return getMultiplexedConnectionCount();
    }

    public synchronized int getMultiplexedConnectionCount() {
        int i;
        i = 0;
        for (RealConnection isMultiplexed : this.connections) {
            int i2;
            if (isMultiplexed.isMultiplexed()) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    public synchronized int getHttpConnectionCount() {
        return this.connections.size() - getMultiplexedConnectionCount();
    }

    RealConnection get(Address address, StreamAllocation streamAllocation) {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            for (RealConnection realConnection : this.connections) {
                if (realConnection.allocations.size() < realConnection.allocationLimit() && address.equals(realConnection.getRoute().address) && !realConnection.noNewStreams) {
                    streamAllocation.acquire(realConnection);
                    return realConnection;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    void put(RealConnection realConnection) {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            if (this.connections.isEmpty()) {
                this.executor.execute(this.cleanupRunnable);
            }
            this.connections.add(realConnection);
            return;
        }
        throw new AssertionError();
    }

    boolean connectionBecameIdle(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (realConnection.noNewStreams || this.maxIdleConnections == 0) {
            this.connections.remove(realConnection);
            return true;
        } else {
            notifyAll();
            return $assertionsDisabled;
        }
    }

    public void evictAll() {
        List<RealConnection> arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.connections.iterator();
            while (it.hasNext()) {
                RealConnection realConnection = (RealConnection) it.next();
                if (realConnection.allocations.isEmpty()) {
                    realConnection.noNewStreams = true;
                    arrayList.add(realConnection);
                    it.remove();
                }
            }
        }
        for (RealConnection realConnection2 : arrayList) {
            Util.closeQuietly(realConnection2.getSocket());
        }
    }

    long cleanup(long j) {
        RealConnection realConnection = null;
        long j2 = Long.MIN_VALUE;
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            for (RealConnection realConnection2 : this.connections) {
                long j3;
                if (pruneAndGetAllocationCount(realConnection2, j) > 0) {
                    i2++;
                } else {
                    RealConnection realConnection3;
                    int i3 = i + 1;
                    long j4 = j - realConnection2.idleAtNanos;
                    if (j4 > j2) {
                        long j5 = j4;
                        realConnection3 = realConnection2;
                        j3 = j5;
                    } else {
                        realConnection3 = realConnection;
                        j3 = j2;
                    }
                    j2 = j3;
                    realConnection = realConnection3;
                    i = i3;
                }
            }
            if (j2 >= this.keepAliveDurationNs || i > this.maxIdleConnections) {
                this.connections.remove(realConnection);
                Util.closeQuietly(realConnection.getSocket());
                return 0;
            }
            if (i > 0) {
                j3 = this.keepAliveDurationNs - j2;
                return j3;
            } else if (i2 > 0) {
                j3 = this.keepAliveDurationNs;
                return j3;
            } else {
                return -1;
            }
        }
    }

    private int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        List list = realConnection.allocations;
        int i = 0;
        while (i < list.size()) {
            if (((Reference) list.get(i)).get() != null) {
                i++;
            } else {
                Internal.logger.warning("A connection to " + realConnection.getRoute().getAddress().url() + " was leaked. Did you forget to close a response body?");
                list.remove(i);
                realConnection.noNewStreams = true;
                if (list.isEmpty()) {
                    realConnection.idleAtNanos = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    void setCleanupRunnableForTest(Runnable runnable) {
        this.cleanupRunnable = runnable;
    }
}
