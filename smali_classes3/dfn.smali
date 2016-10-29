.class Ldfn;
.super Ldfq;
.source "Twttr"


# instance fields
.field final synthetic a:Ldfm;


# direct methods
.method constructor <init>(Ldfm;Lokio/aa;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Ldfn;->a:Ldfm;

    invoke-direct {p0, p2}, Ldfq;-><init>(Lokio/aa;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Ldfn;->a:Ldfm;

    iget-object v1, v0, Ldfm;->a:Ldfi;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Ldfn;->a:Ldfm;

    invoke-virtual {v0}, Ldfm;->a()V

    .line 918
    monitor-exit v1

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
