.class public Lcom/twitter/library/av/playback/bf;
.super Lcom/twitter/library/av/playback/ck;
.source "Twttr"


# instance fields
.field final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private final e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Landroid/os/Handler;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/twitter/library/av/s;->g:Lcom/twitter/library/av/s;

    invoke-direct {p0, v0, p2}, Lcom/twitter/library/av/playback/ck;-><init>(Lcom/twitter/library/av/s;Landroid/os/Handler;)V

    .line 31
    iput-object p1, p0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 32
    iput-object p3, p0, Lcom/twitter/library/av/playback/bf;->e:Landroid/content/res/Resources;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/bf;II)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/twitter/library/av/playback/ck;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/bf;IIZZ)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/library/av/playback/ck;->a(IIZZ)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/bf;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/twitter/library/av/playback/ck;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/s;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->o()Lcom/twitter/library/av/s;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/s;->g:Lcom/twitter/library/av/s;

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/library/av/playback/bg;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/bg;-><init>(Lcom/twitter/library/av/playback/bf;II)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bf;->a(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public a(IIZZ)V
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lcom/twitter/library/av/playback/bh;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/playback/bh;-><init>(Lcom/twitter/library/av/playback/bf;ZIIZ)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bf;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/library/av/playback/bi;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/bi;-><init>(Lcom/twitter/library/av/playback/bf;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bf;->a(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public a(Lcom/twitter/model/av/c;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/twitter/library/av/playback/bj;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/bj;-><init>(Lcom/twitter/library/av/playback/bf;Lcom/twitter/model/av/c;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bf;->a(Ljava/lang/Runnable;)V

    .line 108
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/ck;->a(Lcom/twitter/model/av/c;)V

    .line 109
    return-void
.end method
