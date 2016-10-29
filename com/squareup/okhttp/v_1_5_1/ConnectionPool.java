package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.Platform;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import java.io.Closeable;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class ConnectionPool {
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    private static final int MAX_CONNECTIONS_TO_CLEANUP = 2;
    private static final ConnectionPool systemDefault;
    private final LinkedList<Connection> connections;
    private final Runnable connectionsCleanupRunnable;
    private final ExecutorService executorService;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;

    static {
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
        this.connections = new LinkedList();
        this.executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
        this.connectionsCleanupRunnable = new Runnable() {
            public void run() {
                List<Closeable> arrayList = new ArrayList(ConnectionPool.MAX_CONNECTIONS_TO_CLEANUP);
                int i = 0;
                synchronized (ConnectionPool.this) {
                    int i2;
                    ListIterator listIterator = ConnectionPool.this.connections.listIterator(ConnectionPool.this.connections.size());
                    while (listIterator.hasPrevious()) {
                        Connection connection = (Connection) listIterator.previous();
                        if (!connection.isAlive() || connection.isExpired(ConnectionPool.this.keepAliveDurationNs)) {
                            listIterator.remove();
                            arrayList.add(connection);
                            if (arrayList.size() == ConnectionPool.MAX_CONNECTIONS_TO_CLEANUP) {
                                break;
                            }
                            i2 = i;
                        } else {
                            if (connection.isIdle()) {
                                i2 = i + 1;
                            }
                            i2 = i;
                        }
                        i = i2;
                    }
                    listIterator = ConnectionPool.this.connections.listIterator(ConnectionPool.this.connections.size());
                    while (listIterator.hasPrevious() && i > ConnectionPool.this.maxIdleConnections) {
                        connection = (Connection) listIterator.previous();
                        if (connection.isIdle()) {
                            arrayList.add(connection);
                            listIterator.remove();
                            i2 = i - 1;
                        } else {
                            i2 = i;
                        }
                        i = i2;
                    }
                }
                for (Closeable closeQuietly : arrayList) {
                    Util.closeQuietly(closeQuietly);
                }
            }
        };
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = (j * 1000) * 1000;
    }

    List<Connection> getConnections() {
        List arrayList;
        waitForCleanupCallableToRun();
        synchronized (this) {
            arrayList = new ArrayList(this.connections);
        }
        return arrayList;
    }

    private void waitForCleanupCallableToRun() {
        try {
            this.executorService.submit(new Runnable() {
                public void run() {
                }
            }).get();
        } catch (Exception e) {
            throw new AssertionError();
        }
    }

    public static ConnectionPool getDefault() {
        return systemDefault;
    }

    public synchronized int getConnectionCount() {
        return this.connections.size();
    }

    public synchronized int getSpdyConnectionCount() {
        int i;
        i = 0;
        Iterator it = this.connections.iterator();
        while (it.hasNext()) {
            int i2;
            if (((Connection) it.next()).isSpdy()) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    public synchronized int getHttpConnectionCount() {
        int i;
        i = 0;
        Iterator it = this.connections.iterator();
        while (it.hasNext()) {
            int i2;
            if (((Connection) it.next()).isSpdy()) {
                i2 = i;
            } else {
                i2 = i + 1;
            }
            i = i2;
        }
        return i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.squareup.okhttp.v_1_5_1.Connection get(com.squareup.okhttp.v_1_5_1.Address r9) {
        /*
        r8 = this;
        monitor-enter(r8);
        r2 = 0;
        r0 = r8.connections;	 Catch:{ all -> 0x0087 }
        r1 = r8.connections;	 Catch:{ all -> 0x0087 }
        r1 = r1.size();	 Catch:{ all -> 0x0087 }
        r3 = r0.listIterator(r1);	 Catch:{ all -> 0x0087 }
    L_0x000e:
        r0 = r3.hasPrevious();	 Catch:{ all -> 0x0087 }
        if (r0 == 0) goto L_0x008a;
    L_0x0014:
        r0 = r3.previous();	 Catch:{ all -> 0x0087 }
        r0 = (com.squareup.okhttp.v_1_5_1.Connection) r0;	 Catch:{ all -> 0x0087 }
        r1 = r0.getRoute();	 Catch:{ all -> 0x0087 }
        r1 = r1.getAddress();	 Catch:{ all -> 0x0087 }
        r1 = r1.equals(r9);	 Catch:{ all -> 0x0087 }
        if (r1 == 0) goto L_0x000e;
    L_0x0028:
        r1 = r0.isAlive();	 Catch:{ all -> 0x0087 }
        if (r1 == 0) goto L_0x000e;
    L_0x002e:
        r4 = java.lang.System.nanoTime();	 Catch:{ all -> 0x0087 }
        r6 = r0.getIdleStartTimeNs();	 Catch:{ all -> 0x0087 }
        r4 = r4 - r6;
        r6 = r8.keepAliveDurationNs;	 Catch:{ all -> 0x0087 }
        r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r1 >= 0) goto L_0x000e;
    L_0x003d:
        r3.remove();	 Catch:{ all -> 0x0087 }
        r1 = r0.isSpdy();	 Catch:{ all -> 0x0087 }
        if (r1 != 0) goto L_0x0051;
    L_0x0046:
        r1 = com.squareup.okhttp.v_1_5_1.internal.Platform.get();	 Catch:{ SocketException -> 0x0067 }
        r4 = r0.getSocket();	 Catch:{ SocketException -> 0x0067 }
        r1.tagSocket(r4);	 Catch:{ SocketException -> 0x0067 }
    L_0x0051:
        if (r0 == 0) goto L_0x005e;
    L_0x0053:
        r1 = r0.isSpdy();	 Catch:{ all -> 0x0087 }
        if (r1 == 0) goto L_0x005e;
    L_0x0059:
        r1 = r8.connections;	 Catch:{ all -> 0x0087 }
        r1.addFirst(r0);	 Catch:{ all -> 0x0087 }
    L_0x005e:
        r1 = r8.executorService;	 Catch:{ all -> 0x0087 }
        r2 = r8.connectionsCleanupRunnable;	 Catch:{ all -> 0x0087 }
        r1.execute(r2);	 Catch:{ all -> 0x0087 }
        monitor-exit(r8);
        return r0;
    L_0x0067:
        r1 = move-exception;
        com.squareup.okhttp.v_1_5_1.internal.Util.closeQuietly(r0);	 Catch:{ all -> 0x0087 }
        r0 = com.squareup.okhttp.v_1_5_1.internal.Platform.get();	 Catch:{ all -> 0x0087 }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0087 }
        r4.<init>();	 Catch:{ all -> 0x0087 }
        r5 = "Unable to tagSocket(): ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0087 }
        r1 = r4.append(r1);	 Catch:{ all -> 0x0087 }
        r1 = r1.toString();	 Catch:{ all -> 0x0087 }
        r0.logW(r1);	 Catch:{ all -> 0x0087 }
        goto L_0x000e;
    L_0x0087:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x008a:
        r0 = r2;
        goto L_0x0051;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.ConnectionPool.get(com.squareup.okhttp.v_1_5_1.Address):com.squareup.okhttp.v_1_5_1.Connection");
    }

    public void recycle(Connection connection) {
        if (!connection.isSpdy()) {
            if (connection.isAlive()) {
                try {
                    Platform.get().untagSocket(connection.getSocket());
                    synchronized (this) {
                        this.connections.addFirst(connection);
                        connection.incrementRecycleCount();
                        connection.resetIdleStartTime();
                    }
                    this.executorService.execute(this.connectionsCleanupRunnable);
                    return;
                } catch (SocketException e) {
                    Platform.get().logW("Unable to untagSocket(): " + e);
                    Util.closeQuietly((Closeable) connection);
                    return;
                }
            }
            Util.closeQuietly((Closeable) connection);
        }
    }

    public void share(Connection connection) {
        if (connection.isSpdy()) {
            this.executorService.execute(this.connectionsCleanupRunnable);
            if (connection.isAlive()) {
                synchronized (this) {
                    this.connections.addFirst(connection);
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public void evictAll() {
        List arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.connections);
            this.connections.clear();
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Util.closeQuietly((Closeable) arrayList.get(i));
        }
    }
}
