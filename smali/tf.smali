.class public Ltf;
.super Lbvs;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lbvs;-><init>()V

    .line 21
    iput-object p1, p0, Ltf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lbvq;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Ltf;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processTick(Lbwi;)V
    .locals 2
    .annotation runtime Lbvt;
        a = Lbwi;
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf;->b:Z

    .line 27
    iget-object v0, p0, Ltf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "playlist_start"

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method
