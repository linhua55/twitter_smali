.class public Lcom/twitter/library/av/playback/ae;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/av/playback/ae;


# instance fields
.field private final b:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/ae;-><init>(I)V

    .line 37
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/twitter/library/av/playback/ae;->b:I

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lcom/twitter/library/av/playback/ae;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/twitter/library/av/playback/ae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/av/playback/ae;->a:Lcom/twitter/library/av/playback/ae;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/twitter/library/av/playback/ae;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/ae;-><init>()V

    sput-object v0, Lcom/twitter/library/av/playback/ae;->a:Lcom/twitter/library/av/playback/ae;

    .line 26
    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ae;->a:Lcom/twitter/library/av/playback/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/ac;)Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/twitter/library/av/playback/af;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/af;-><init>(Lcom/twitter/library/av/playback/ae;Lcom/twitter/library/av/playback/ac;)V

    .line 79
    iget-object v1, p1, Lcom/twitter/library/av/playback/ac;->e:Landroid/os/Handler;

    iget v2, p0, Lcom/twitter/library/av/playback/ae;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/playback/cc;->a(Landroid/os/Handler;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVMediaPlayer;

    return-object v0
.end method
