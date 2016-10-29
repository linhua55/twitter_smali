package com.squareup.okhttp.v_1_5_1.internal;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public final class DiskLruCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final Pattern LEGAL_KEY_PATTERN;
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final OutputStream NULL_OUTPUT_STREAM;
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final Runnable cleanupRunnable;
    private final File directory;
    final ThreadPoolExecutor executorService;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private BufferedSink journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries;
    private long maxSize;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;

    /* compiled from: Twttr */
    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private boolean hasErrors;
        private final boolean[] written;

        /* compiled from: Twttr */
        class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                } else if (this.entry.readable) {
                    try {
                        InputStream fileInputStream = new FileInputStream(this.entry.getCleanFile(i));
                        return fileInputStream;
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                } else {
                    return null;
                }
            }
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.inputStreamToString(newInputStream) : null;
        }

        public OutputStream newOutputStream(int i) throws IOException {
            OutputStream access$2000;
            synchronized (DiskLruCache.this) {
                OutputStream fileOutputStream;
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[i] = true;
                }
                r1 = this.entry.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(r1);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.directory.mkdirs();
                    try {
                        File dirtyFile;
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        access$2000 = DiskLruCache.NULL_OUTPUT_STREAM;
                    }
                }
                access$2000 = new FaultHidingOutputStream(fileOutputStream, null);
            }
            return access$2000;
        }

        public void set(int i, String str) throws IOException {
            BufferedSink buffer = Okio.buffer(Okio.sink(newOutputStream(i)));
            buffer.writeUtf8(str);
            buffer.close();
        }

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key);
            } else {
                DiskLruCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public void abort() throws IOException {
            DiskLruCache.this.completeEdit(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.committed) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }
    }

    /* compiled from: Twttr */
    final class Entry {
        private Editor currentEditor;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        public String getLengths() throws IOException {
            StringBuilder stringBuilder = new StringBuilder();
            for (long append : this.lengths) {
                stringBuilder.append(' ').append(append);
            }
            return stringBuilder.toString();
        }

        private void setLengths(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e) {
                    throw invalidLengths(strArr);
                }
            }
        }

        private IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i + ".tmp");
        }
    }

    /* compiled from: Twttr */
    public final class Snapshot implements Closeable {
        private final InputStream[] ins;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        private Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.ins = inputStreamArr;
            this.lengths = jArr;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int i) {
            return this.ins[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(i));
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        public void close() {
            for (Closeable closeQuietly : this.ins) {
                Util.closeQuietly(closeQuietly);
            }
        }
    }

    static {
        LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,64}");
        NULL_OUTPUT_STREAM = new OutputStream() {
            public void write(int i) throws IOException {
            }
        };
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.size = 0;
        this.lruEntries = new LinkedHashMap(0, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, true);
        this.nextSequenceNumber = 0;
        this.executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp DiskLruCache", true));
        this.cleanupRunnable = new Runnable() {
            public void run() {
                synchronized (DiskLruCache.this) {
                    if (DiskLruCache.this.journalWriter == null) {
                        return;
                    }
                    try {
                        DiskLruCache.this.trimToSize();
                        if (DiskLruCache.this.journalRebuildRequired()) {
                            DiskLruCache.this.rebuildJournal();
                            DiskLruCache.this.redundantOpCount = 0;
                        }
                    } catch (Throwable e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        };
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
        this.maxSize = j;
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            File file2 = new File(file, JOURNAL_FILE_BACKUP);
            if (file2.exists()) {
                File file3 = new File(file, JOURNAL_FILE);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    renameTo(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.journalFile.exists()) {
                try {
                    diskLruCache.readJournal();
                    diskLruCache.processJournal();
                    diskLruCache.journalWriter = Okio.buffer(Okio.sink(new FileOutputStream(diskLruCache.journalFile, true)));
                    return diskLruCache;
                } catch (IOException e) {
                    Platform.get().logW("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            diskLruCache = new DiskLruCache(file, i, i2, j);
            diskLruCache.rebuildJournal();
            return diskLruCache;
        }
    }

    private void readJournal() throws IOException {
        int i;
        Closeable buffer = Okio.buffer(Okio.source(new FileInputStream(this.journalFile)));
        try {
            String readUtf8Line = buffer.readUtf8Line(true);
            String readUtf8Line2 = buffer.readUtf8Line(true);
            String readUtf8Line3 = buffer.readUtf8Line(true);
            String readUtf8Line4 = buffer.readUtf8Line(true);
            String readUtf8Line5 = buffer.readUtf8Line(true);
            if (MAGIC.equals(readUtf8Line) && VERSION_1.equals(readUtf8Line2) && Integer.toString(this.appVersion).equals(readUtf8Line3) && Integer.toString(this.valueCount).equals(readUtf8Line4) && TtmlNode.ANONYMOUS_REGION_ID.equals(readUtf8Line5)) {
                i = 0;
                while (true) {
                    readJournalLine(buffer.readUtf8Line(true));
                    i++;
                }
            } else {
                throw new IOException("unexpected journal header: [" + readUtf8Line + ", " + readUtf8Line2 + ", " + readUtf8Line4 + ", " + readUtf8Line5 + "]");
            }
        } catch (EOFException e) {
            this.redundantOpCount = i - this.lruEntries.size();
            Util.closeQuietly(buffer);
        } catch (Throwable th) {
            Util.closeQuietly(buffer);
        }
    }

    private void readJournalLine(String str) throws IOException {
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        String str2;
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring = str.substring(i);
            if (indexOf == REMOVE.length() && str.startsWith(REMOVE)) {
                this.lruEntries.remove(substring);
                return;
            }
            str2 = substring;
        } else {
            str2 = str.substring(i, indexOf2);
        }
        Entry entry = (Entry) this.lruEntries.get(str2);
        if (entry == null) {
            entry = new Entry(str2, null);
            this.lruEntries.put(str2, entry);
        }
        if (indexOf2 != -1 && indexOf == CLEAN.length() && str.startsWith(CLEAN)) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            entry.readable = true;
            entry.currentEditor = null;
            entry.setLengths(split);
        } else if (indexOf2 == -1 && indexOf == DIRTY.length() && str.startsWith(DIRTY)) {
            entry.currentEditor = new Editor(entry, null);
        } else if (indexOf2 != -1 || indexOf != READ.length() || !str.startsWith(READ)) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            int i;
            if (entry.currentEditor == null) {
                for (i = 0; i < this.valueCount; i++) {
                    this.size += entry.lengths[i];
                }
            } else {
                entry.currentEditor = null;
                for (i = 0; i < this.valueCount; i++) {
                    deleteIfExists(entry.getCleanFile(i));
                    deleteIfExists(entry.getDirtyFile(i));
                }
                it.remove();
            }
        }
    }

    private synchronized void rebuildJournal() throws IOException {
        if (this.journalWriter != null) {
            this.journalWriter.close();
        }
        BufferedSink buffer = Okio.buffer(Okio.sink(new FileOutputStream(this.journalFileTmp)));
        try {
            buffer.writeUtf8(MAGIC);
            buffer.writeUtf8("\n");
            buffer.writeUtf8(VERSION_1);
            buffer.writeUtf8("\n");
            buffer.writeUtf8(Integer.toString(this.appVersion));
            buffer.writeUtf8("\n");
            buffer.writeUtf8(Integer.toString(this.valueCount));
            buffer.writeUtf8("\n");
            buffer.writeUtf8("\n");
            for (Entry entry : this.lruEntries.values()) {
                if (entry.currentEditor != null) {
                    buffer.writeUtf8("DIRTY " + entry.key + '\n');
                } else {
                    buffer.writeUtf8("CLEAN " + entry.key + entry.getLengths() + '\n');
                }
            }
            buffer.close();
            if (this.journalFile.exists()) {
                renameTo(this.journalFile, this.journalFileBackup, true);
            }
            renameTo(this.journalFileTmp, this.journalFile, false);
            this.journalFileBackup.delete();
            this.journalWriter = Okio.buffer(Okio.sink(new FileOutputStream(this.journalFile, true)));
        } catch (Throwable th) {
            buffer.close();
        }
    }

    private static void deleteIfExists(File file) throws IOException {
        if (!file.delete() && file.exists()) {
            throw new IOException("failed to delete " + file);
        }
    }

    private static void renameTo(File file, File file2, boolean z) throws IOException {
        if (z) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Snapshot get(java.lang.String r10) throws java.io.IOException {
        /*
        r9 = this;
        r2 = 0;
        r1 = 0;
        monitor-enter(r9);
        r9.checkNotClosed();	 Catch:{ all -> 0x0087 }
        r9.validateKey(r10);	 Catch:{ all -> 0x0087 }
        r0 = r9.lruEntries;	 Catch:{ all -> 0x0087 }
        r0 = r0.get(r10);	 Catch:{ all -> 0x0087 }
        r0 = (com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Entry) r0;	 Catch:{ all -> 0x0087 }
        if (r0 != 0) goto L_0x0015;
    L_0x0013:
        monitor-exit(r9);
        return r1;
    L_0x0015:
        r3 = r0.readable;	 Catch:{ all -> 0x0087 }
        if (r3 == 0) goto L_0x0013;
    L_0x001b:
        r3 = r9.valueCount;	 Catch:{ all -> 0x0087 }
        r6 = new java.io.InputStream[r3];	 Catch:{ all -> 0x0087 }
        r3 = r2;
    L_0x0020:
        r4 = r9.valueCount;	 Catch:{ FileNotFoundException -> 0x0032 }
        if (r3 >= r4) goto L_0x0044;
    L_0x0024:
        r4 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x0032 }
        r5 = r0.getCleanFile(r3);	 Catch:{ FileNotFoundException -> 0x0032 }
        r4.<init>(r5);	 Catch:{ FileNotFoundException -> 0x0032 }
        r6[r3] = r4;	 Catch:{ FileNotFoundException -> 0x0032 }
        r3 = r3 + 1;
        goto L_0x0020;
    L_0x0032:
        r0 = move-exception;
        r0 = r2;
    L_0x0034:
        r2 = r9.valueCount;	 Catch:{ all -> 0x0087 }
        if (r0 >= r2) goto L_0x0013;
    L_0x0038:
        r2 = r6[r0];	 Catch:{ all -> 0x0087 }
        if (r2 == 0) goto L_0x0013;
    L_0x003c:
        r2 = r6[r0];	 Catch:{ all -> 0x0087 }
        com.squareup.okhttp.v_1_5_1.internal.Util.closeQuietly(r2);	 Catch:{ all -> 0x0087 }
        r0 = r0 + 1;
        goto L_0x0034;
    L_0x0044:
        r1 = r9.redundantOpCount;	 Catch:{ all -> 0x0087 }
        r1 = r1 + 1;
        r9.redundantOpCount = r1;	 Catch:{ all -> 0x0087 }
        r1 = r9.journalWriter;	 Catch:{ all -> 0x0087 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0087 }
        r2.<init>();	 Catch:{ all -> 0x0087 }
        r3 = "READ ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0087 }
        r2 = r2.append(r10);	 Catch:{ all -> 0x0087 }
        r3 = 10;
        r2 = r2.append(r3);	 Catch:{ all -> 0x0087 }
        r2 = r2.toString();	 Catch:{ all -> 0x0087 }
        r1.writeUtf8(r2);	 Catch:{ all -> 0x0087 }
        r1 = r9.journalRebuildRequired();	 Catch:{ all -> 0x0087 }
        if (r1 == 0) goto L_0x0076;
    L_0x006f:
        r1 = r9.executorService;	 Catch:{ all -> 0x0087 }
        r2 = r9.cleanupRunnable;	 Catch:{ all -> 0x0087 }
        r1.execute(r2);	 Catch:{ all -> 0x0087 }
    L_0x0076:
        r1 = new com.squareup.okhttp.v_1_5_1.internal.DiskLruCache$Snapshot;	 Catch:{ all -> 0x0087 }
        r4 = r0.sequenceNumber;	 Catch:{ all -> 0x0087 }
        r7 = r0.lengths;	 Catch:{ all -> 0x0087 }
        r8 = 0;
        r2 = r9;
        r3 = r10;
        r1.<init>(r3, r4, r6, r7, r8);	 Catch:{ all -> 0x0087 }
        goto L_0x0013;
    L_0x0087:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.get(java.lang.String):com.squareup.okhttp.v_1_5_1.internal.DiskLruCache$Snapshot");
    }

    public Editor edit(String str) throws IOException {
        return edit(str, ANY_SEQUENCE_NUMBER);
    }

    private synchronized Editor edit(String str, long j) throws IOException {
        Editor editor;
        checkNotClosed();
        validateKey(str);
        Entry entry = (Entry) this.lruEntries.get(str);
        if (j == ANY_SEQUENCE_NUMBER || (entry != null && entry.sequenceNumber == j)) {
            Entry entry2;
            if (entry == null) {
                entry = new Entry(str, null);
                this.lruEntries.put(str, entry);
                entry2 = entry;
            } else if (entry.currentEditor != null) {
                editor = null;
            } else {
                entry2 = entry;
            }
            editor = new Editor(entry2, null);
            entry2.currentEditor = editor;
            this.journalWriter.writeUtf8("DIRTY " + str + '\n');
            this.journalWriter.flush();
        } else {
            editor = null;
        }
        return editor;
    }

    public File getDirectory() {
        return this.directory;
    }

    public synchronized long getMaxSize() {
        return this.maxSize;
    }

    public synchronized void setMaxSize(long j) {
        this.maxSize = j;
        this.executorService.execute(this.cleanupRunnable);
    }

    public synchronized long size() {
        return this.size;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void completeEdit(com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Editor r11, boolean r12) throws java.io.IOException {
        /*
        r10 = this;
        r0 = 0;
        monitor-enter(r10);
        r2 = r11.entry;	 Catch:{ all -> 0x0012 }
        r1 = r2.currentEditor;	 Catch:{ all -> 0x0012 }
        if (r1 == r11) goto L_0x0015;
    L_0x000c:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0012 }
        r0.<init>();	 Catch:{ all -> 0x0012 }
        throw r0;	 Catch:{ all -> 0x0012 }
    L_0x0012:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x0015:
        if (r12 == 0) goto L_0x0059;
    L_0x0017:
        r1 = r2.readable;	 Catch:{ all -> 0x0012 }
        if (r1 != 0) goto L_0x0059;
    L_0x001d:
        r1 = r0;
    L_0x001e:
        r3 = r10.valueCount;	 Catch:{ all -> 0x0012 }
        if (r1 >= r3) goto L_0x0059;
    L_0x0022:
        r3 = r11.written;	 Catch:{ all -> 0x0012 }
        r3 = r3[r1];	 Catch:{ all -> 0x0012 }
        if (r3 != 0) goto L_0x0047;
    L_0x002a:
        r11.abort();	 Catch:{ all -> 0x0012 }
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0012 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r2.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "Newly created entry didn't create value for index ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0012 }
        r1 = r2.append(r1);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.<init>(r1);	 Catch:{ all -> 0x0012 }
        throw r0;	 Catch:{ all -> 0x0012 }
    L_0x0047:
        r3 = r2.getDirtyFile(r1);	 Catch:{ all -> 0x0012 }
        r3 = r3.exists();	 Catch:{ all -> 0x0012 }
        if (r3 != 0) goto L_0x0056;
    L_0x0051:
        r11.abort();	 Catch:{ all -> 0x0012 }
    L_0x0054:
        monitor-exit(r10);
        return;
    L_0x0056:
        r1 = r1 + 1;
        goto L_0x001e;
    L_0x0059:
        r1 = r10.valueCount;	 Catch:{ all -> 0x0012 }
        if (r0 >= r1) goto L_0x008e;
    L_0x005d:
        r1 = r2.getDirtyFile(r0);	 Catch:{ all -> 0x0012 }
        if (r12 == 0) goto L_0x008a;
    L_0x0063:
        r3 = r1.exists();	 Catch:{ all -> 0x0012 }
        if (r3 == 0) goto L_0x0087;
    L_0x0069:
        r3 = r2.getCleanFile(r0);	 Catch:{ all -> 0x0012 }
        r1.renameTo(r3);	 Catch:{ all -> 0x0012 }
        r1 = r2.lengths;	 Catch:{ all -> 0x0012 }
        r4 = r1[r0];	 Catch:{ all -> 0x0012 }
        r6 = r3.length();	 Catch:{ all -> 0x0012 }
        r1 = r2.lengths;	 Catch:{ all -> 0x0012 }
        r1[r0] = r6;	 Catch:{ all -> 0x0012 }
        r8 = r10.size;	 Catch:{ all -> 0x0012 }
        r4 = r8 - r4;
        r4 = r4 + r6;
        r10.size = r4;	 Catch:{ all -> 0x0012 }
    L_0x0087:
        r0 = r0 + 1;
        goto L_0x0059;
    L_0x008a:
        deleteIfExists(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x0087;
    L_0x008e:
        r0 = r10.redundantOpCount;	 Catch:{ all -> 0x0012 }
        r0 = r0 + 1;
        r10.redundantOpCount = r0;	 Catch:{ all -> 0x0012 }
        r0 = 0;
        r2.currentEditor = r0;	 Catch:{ all -> 0x0012 }
        r0 = r2.readable;	 Catch:{ all -> 0x0012 }
        r0 = r0 | r12;
        if (r0 == 0) goto L_0x00f6;
    L_0x009f:
        r0 = 1;
        r2.readable = r0;	 Catch:{ all -> 0x0012 }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x0012 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r1.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "CLEAN ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = r2.key;	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = r2.getLengths();	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = 10;
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.writeUtf8(r1);	 Catch:{ all -> 0x0012 }
        if (r12 == 0) goto L_0x00da;
    L_0x00d0:
        r0 = r10.nextSequenceNumber;	 Catch:{ all -> 0x0012 }
        r4 = 1;
        r4 = r4 + r0;
        r10.nextSequenceNumber = r4;	 Catch:{ all -> 0x0012 }
        r2.sequenceNumber = r0;	 Catch:{ all -> 0x0012 }
    L_0x00da:
        r0 = r10.journalWriter;	 Catch:{ all -> 0x0012 }
        r0.flush();	 Catch:{ all -> 0x0012 }
        r0 = r10.size;	 Catch:{ all -> 0x0012 }
        r2 = r10.maxSize;	 Catch:{ all -> 0x0012 }
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 > 0) goto L_0x00ed;
    L_0x00e7:
        r0 = r10.journalRebuildRequired();	 Catch:{ all -> 0x0012 }
        if (r0 == 0) goto L_0x0054;
    L_0x00ed:
        r0 = r10.executorService;	 Catch:{ all -> 0x0012 }
        r1 = r10.cleanupRunnable;	 Catch:{ all -> 0x0012 }
        r0.execute(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x0054;
    L_0x00f6:
        r0 = r10.lruEntries;	 Catch:{ all -> 0x0012 }
        r1 = r2.key;	 Catch:{ all -> 0x0012 }
        r0.remove(r1);	 Catch:{ all -> 0x0012 }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x0012 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r1.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "REMOVE ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r2 = r2.key;	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0012 }
        r2 = 10;
        r1 = r1.append(r2);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.writeUtf8(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x00da;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.completeEdit(com.squareup.okhttp.v_1_5_1.internal.DiskLruCache$Editor, boolean):void");
    }

    private boolean journalRebuildRequired() {
        return this.redundantOpCount >= UdpDataSource.DEFAULT_MAX_PACKET_SIZE && this.redundantOpCount >= this.lruEntries.size();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean remove(java.lang.String r7) throws java.io.IOException {
        /*
        r6 = this;
        r1 = 0;
        monitor-enter(r6);
        r6.checkNotClosed();	 Catch:{ all -> 0x0075 }
        r6.validateKey(r7);	 Catch:{ all -> 0x0075 }
        r0 = r6.lruEntries;	 Catch:{ all -> 0x0075 }
        r0 = r0.get(r7);	 Catch:{ all -> 0x0075 }
        r0 = (com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.Entry) r0;	 Catch:{ all -> 0x0075 }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r2 = r0.currentEditor;	 Catch:{ all -> 0x0075 }
        if (r2 == 0) goto L_0x001b;
    L_0x0018:
        r0 = r1;
    L_0x0019:
        monitor-exit(r6);
        return r0;
    L_0x001b:
        r2 = r6.valueCount;	 Catch:{ all -> 0x0075 }
        if (r1 >= r2) goto L_0x003c;
    L_0x001f:
        r2 = r0.getCleanFile(r1);	 Catch:{ all -> 0x0075 }
        deleteIfExists(r2);	 Catch:{ all -> 0x0075 }
        r2 = r6.size;	 Catch:{ all -> 0x0075 }
        r4 = r0.lengths;	 Catch:{ all -> 0x0075 }
        r4 = r4[r1];	 Catch:{ all -> 0x0075 }
        r2 = r2 - r4;
        r6.size = r2;	 Catch:{ all -> 0x0075 }
        r2 = r0.lengths;	 Catch:{ all -> 0x0075 }
        r4 = 0;
        r2[r1] = r4;	 Catch:{ all -> 0x0075 }
        r1 = r1 + 1;
        goto L_0x001b;
    L_0x003c:
        r0 = r6.redundantOpCount;	 Catch:{ all -> 0x0075 }
        r0 = r0 + 1;
        r6.redundantOpCount = r0;	 Catch:{ all -> 0x0075 }
        r0 = r6.journalWriter;	 Catch:{ all -> 0x0075 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0075 }
        r1.<init>();	 Catch:{ all -> 0x0075 }
        r2 = "REMOVE ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0075 }
        r1 = r1.append(r7);	 Catch:{ all -> 0x0075 }
        r2 = 10;
        r1 = r1.append(r2);	 Catch:{ all -> 0x0075 }
        r1 = r1.toString();	 Catch:{ all -> 0x0075 }
        r0.writeUtf8(r1);	 Catch:{ all -> 0x0075 }
        r0 = r6.lruEntries;	 Catch:{ all -> 0x0075 }
        r0.remove(r7);	 Catch:{ all -> 0x0075 }
        r0 = r6.journalRebuildRequired();	 Catch:{ all -> 0x0075 }
        if (r0 == 0) goto L_0x0073;
    L_0x006c:
        r0 = r6.executorService;	 Catch:{ all -> 0x0075 }
        r1 = r6.cleanupRunnable;	 Catch:{ all -> 0x0075 }
        r0.execute(r1);	 Catch:{ all -> 0x0075 }
    L_0x0073:
        r0 = 1;
        goto L_0x0019;
    L_0x0075:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.DiskLruCache.remove(java.lang.String):boolean");
    }

    public boolean isClosed() {
        return this.journalWriter == null;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void flush() throws IOException {
        checkNotClosed();
        trimToSize();
        this.journalWriter.flush();
    }

    public synchronized void close() throws IOException {
        if (this.journalWriter != null) {
            for (Object obj : this.lruEntries.values().toArray()) {
                Entry entry = (Entry) obj;
                if (entry.currentEditor != null) {
                    entry.currentEditor.abort();
                }
            }
            trimToSize();
            this.journalWriter.close();
            this.journalWriter = null;
        }
    }

    private void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            remove((String) ((java.util.Map.Entry) this.lruEntries.entrySet().iterator().next()).getKey());
        }
    }

    public void delete() throws IOException {
        close();
        Util.deleteContents(this.directory);
    }

    private void validateKey(String str) {
        if (!LEGAL_KEY_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    private static String inputStreamToString(InputStream inputStream) throws IOException {
        OkBuffer readFully = Util.readFully(Okio.source(inputStream));
        return readFully.readUtf8(readFully.size());
    }
}
