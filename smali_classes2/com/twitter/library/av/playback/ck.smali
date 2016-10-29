.class public Lcom/twitter/library/av/playback/ck;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/s;


# instance fields
.field final b:Lcom/twitter/library/av/s;

.field final c:Landroid/os/Handler;

.field d:Z


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/s;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/library/av/playback/ck;->b:Lcom/twitter/library/av/s;

    .line 34
    iput-object p2, p0, Lcom/twitter/library/av/playback/ck;->c:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public static a(Lcom/twitter/library/av/s;)Lcom/twitter/library/av/playback/ck;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Lcom/twitter/library/av/s;Landroid/os/Handler;)Lcom/twitter/library/av/playback/ck;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/library/av/s;Landroid/os/Handler;)Lcom/twitter/library/av/playback/ck;
    .locals 1

    .prologue
    .line 271
    instance-of v0, p0, Lcom/twitter/library/av/playback/ck;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/twitter/library/av/playback/ck;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/ck;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/ck;-><init>(Lcom/twitter/library/av/s;Landroid/os/Handler;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/s;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/library/av/playback/ck;->b:Lcom/twitter/library/av/s;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/twitter/library/av/playback/cs;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/cs;-><init>(Lcom/twitter/library/av/playback/ck;D)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/library/av/playback/cl;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/cl;-><init>(Lcom/twitter/library/av/playback/ck;II)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public a(IIZZ)V
    .locals 6

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/av/playback/cv;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/playback/cv;-><init>(Lcom/twitter/library/av/playback/ck;IIZZ)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/library/av/playback/cy;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/cy;-><init>(Lcom/twitter/library/av/playback/ck;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public a(Lcom/twitter/library/av/ab;)V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/twitter/library/av/playback/ct;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/ct;-><init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/library/av/ab;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/library/av/playback/da;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/da;-><init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/twitter/library/av/playback/cq;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/cq;-><init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/library/av/playback/bl;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public a(Lcom/twitter/model/av/c;)V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/library/av/playback/cz;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/cz;-><init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/model/av/c;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/ck;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/ck;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/twitter/library/av/playback/cu;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/cu;-><init>(Lcom/twitter/library/av/playback/ck;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/twitter/library/av/playback/cp;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/av/playback/cp;-><init>(Lcom/twitter/library/av/playback/ck;Z)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/twitter/library/av/playback/cm;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/playback/cm;-><init>(Lcom/twitter/library/av/playback/ck;II)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method b()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/library/av/playback/ck;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/library/av/playback/cw;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/cw;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/library/av/playback/cx;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/cx;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/twitter/library/av/playback/db;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/db;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/twitter/library/av/playback/dc;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/dc;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/twitter/library/av/playback/cn;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/cn;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/twitter/library/av/playback/co;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/co;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/twitter/library/av/playback/cr;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/cr;-><init>(Lcom/twitter/library/av/playback/ck;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/ck;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
