.class Ltv/periscope/android/video/rtmp/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/video/rtmp/j;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ltv/periscope/android/video/rtmp/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Ljava/util/Date;

.field private f:Ljava/lang/Thread;

.field private g:Z

.field private h:J

.field private i:J

.field private j:Ljava/util/Date;

.field private k:Z


# direct methods
.method public constructor <init>(Ltv/periscope/android/video/rtmp/j;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    iput-object p1, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/m;->h:J

    .line 46
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/m;->i:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/m;->j:Ljava/util/Date;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/m;->k:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "NetStream SendQueue"

    invoke-static {v1}, Ltv/periscope/android/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/m;->f:Ljava/lang/Thread;

    .line 53
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/m;->g:Z

    .line 59
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 61
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a([BII)V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/m;->k:Z

    if-eqz v0, :cond_0

    .line 87
    monitor-exit p0

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->e:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/m;->e:Ljava/util/Date;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/video/rtmp/m;->d:J

    .line 98
    :cond_1
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-static {v0}, Ltv/periscope/android/video/rtmp/j;->b(Ltv/periscope/android/video/rtmp/j;)Ltv/periscope/android/video/rtmp/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Ltv/periscope/android/video/rtmp/h;->b(I)Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Ltv/periscope/android/video/rtmp/i;->a([BII)V

    .line 102
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 103
    iget-wide v0, p0, Ltv/periscope/android/video/rtmp/m;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/video/rtmp/m;->c:J

    .line 104
    monitor-exit p0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_2
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 111
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-static {v0}, Ltv/periscope/android/video/rtmp/j;->c(Ltv/periscope/android/video/rtmp/j;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 127
    :goto_0
    :try_start_1
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/video/rtmp/i;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Ltv/periscope/android/video/rtmp/m;->g:Z

    if-eqz v3, :cond_0

    .line 161
    :goto_2
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :try_start_3
    iget-wide v4, p0, Ltv/periscope/android/video/rtmp/m;->c:J

    iget v3, v0, Ltv/periscope/android/video/rtmp/i;->b:I

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ltv/periscope/android/video/rtmp/m;->c:J

    .line 141
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    :cond_1
    :try_start_4
    iget-object v3, v0, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/4 v4, 0x0

    iget v5, v0, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    iget-wide v4, p0, Ltv/periscope/android/video/rtmp/m;->d:J

    iget v3, v0, Ltv/periscope/android/video/rtmp/i;->b:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Ltv/periscope/android/video/rtmp/m;->d:J

    .line 146
    iget-object v3, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-static {v3}, Ltv/periscope/android/video/rtmp/j;->b(Ltv/periscope/android/video/rtmp/j;)Ltv/periscope/android/video/rtmp/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltv/periscope/android/video/rtmp/h;->a(Ltv/periscope/android/video/rtmp/i;)V

    .line 148
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 150
    :try_start_5
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/m;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-static {v0}, Ltv/periscope/android/video/rtmp/j;->a(Ltv/periscope/android/video/rtmp/j;)Ltv/periscope/android/video/rtmp/l;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/video/rtmp/l;->b()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/m;->k:Z

    .line 155
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/m;->a:Ltv/periscope/android/video/rtmp/j;

    invoke-static {v0}, Ltv/periscope/android/video/rtmp/j;->a(Ltv/periscope/android/video/rtmp/j;)Ltv/periscope/android/video/rtmp/l;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/periscope/android/video/rtmp/l;->b(Ltv/periscope/android/video/rtmp/j;)V

    goto :goto_2

    .line 141
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
.end method
