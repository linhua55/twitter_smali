.class public final Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeWriter:Z

.field private final buffer:Lokio/f;

.field private final frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

.field private final isClient:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private final random:Ljava/util/Random;

.field private final sink:Lokio/i;

.field private writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLokio/i;Ljava/util/Random;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->buffer:Lokio/f;

    .line 56
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    .line 64
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    .line 67
    iput-object p2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    .line 68
    iput-object p3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 71
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    .line 72
    if-eqz p1, :cond_2

    const/16 v0, 0x800

    new-array v1, v0, [B

    :cond_2
    iput-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    .line 73
    return-void

    :cond_3
    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/f;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->buffer:Lokio/f;

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;IJZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    return-object v0
.end method

.method static synthetic access$702(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    return p1
.end method

.method private writeControlFrameSynchronized(ILokio/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p2}, Lokio/f;->a()J

    move-result-wide v0

    long-to-int v0, v0

    .line 124
    int-to-long v2, v0

    const-wide/16 v4, 0x7d

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Payload size must be less than or equal to 125"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    or-int/lit16 v1, p1, 0x80

    .line 131
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v2, v1}, Lokio/i;->i(I)Lokio/i;

    .line 134
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v1, :cond_4

    .line 135
    or-int/lit16 v1, v0, 0x80

    .line 136
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v2, v1}, Lokio/i;->i(I)Lokio/i;

    .line 138
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 139
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v1, v2}, Lokio/i;->c([B)Lokio/i;

    .line 141
    if-eqz p2, :cond_3

    .line 142
    int-to-long v0, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeMaskedSynchronized(Lokio/j;J)V

    .line 152
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v0}, Lokio/i;->e()Lokio/i;

    .line 153
    return-void

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v1, v0}, Lokio/i;->i(I)Lokio/i;

    .line 147
    if-eqz p2, :cond_3

    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v0, p2}, Lokio/i;->a(Lokio/ab;)J

    goto :goto_0
.end method

.method private writeMaskedSynchronized(Lokio/j;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 214
    sget-boolean v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_0
    const-wide/16 v4, 0x0

    .line 217
    :goto_0
    cmp-long v0, v4, p2

    if-gez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 219
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {p1, v1, v7, v0}, Lokio/j;->a([BII)I

    move-result v6

    .line 220
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v6

    iget-object v3, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 222
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v0, v1, v7, v6}, Lokio/i;->c([BII)Lokio/i;

    .line 223
    int-to-long v0, v6

    add-long/2addr v4, v0

    .line 224
    goto :goto_0

    .line 225
    :cond_2
    return-void
.end method

.method private writeMessageFrameSynchronized(IJZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-boolean v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    if-eqz p4, :cond_3

    move v0, p1

    .line 180
    :goto_0
    if-eqz p5, :cond_2

    .line 181
    or-int/lit16 v0, v0, 0x80

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v2, v0}, Lokio/i;->i(I)Lokio/i;

    .line 186
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_7

    .line 187
    const/16 v0, 0x80

    .line 188
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 190
    :goto_1
    const-wide/16 v2, 0x7d

    cmp-long v1, p2, v2

    if-gtz v1, :cond_4

    .line 191
    long-to-int v1, p2

    or-int/2addr v0, v1

    .line 192
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v1, v0}, Lokio/i;->i(I)Lokio/i;

    .line 203
    :goto_2
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/i;->c([B)Lokio/i;

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->buffer:Lokio/f;

    invoke-direct {p0, v0, p2, p3}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeMaskedSynchronized(Lokio/j;J)V

    .line 210
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v0}, Lokio/i;->e()Lokio/i;

    .line 211
    return-void

    :cond_3
    move v0, v1

    .line 179
    goto :goto_0

    .line 193
    :cond_4
    const-wide/32 v2, 0xffff

    cmp-long v1, p2, v2

    if-gtz v1, :cond_5

    .line 194
    or-int/lit8 v0, v0, 0x7e

    .line 195
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v1, v0}, Lokio/i;->i(I)Lokio/i;

    .line 196
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/i;->h(I)Lokio/i;

    goto :goto_2

    .line 198
    :cond_5
    or-int/lit8 v0, v0, 0x7f

    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v1, v0}, Lokio/i;->i(I)Lokio/i;

    .line 200
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    invoke-interface {v0, p2, p3}, Lokio/i;->m(J)Lokio/i;

    goto :goto_2

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sink:Lokio/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->buffer:Lokio/f;

    invoke-interface {v0, v1, p2, p3}, Lokio/i;->write(Lokio/f;J)V

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public newMessageSink(I)Lokio/aa;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 166
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;I)I

    .line 167
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z

    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    # setter for: Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->closed:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->access$302(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z

    .line 170
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->frameSink:Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;

    return-object v0
.end method

.method public writeClose(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 100
    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_2

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Code must be in range [1000,5000)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lokio/f;->c(I)Lokio/f;

    .line 105
    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {v0, p2}, Lokio/f;->a(Ljava/lang/String;)Lokio/f;

    .line 110
    :cond_3
    monitor-enter p0

    .line 111
    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/f;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writePing(Lokio/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    const/16 v0, 0x9

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/f;)V

    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writePong(Lokio/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILokio/f;)V

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
