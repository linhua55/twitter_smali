.class public Ltv/periscope/android/ui/broadcast/bw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/ui/broadcast/bu;


# instance fields
.field private final a:Ltv/periscope/android/exoplayer/player/e;

.field private final b:Ltv/periscope/android/exoplayer/player/j;

.field private final c:Ldmt;


# direct methods
.method public constructor <init>(Ltv/periscope/android/exoplayer/player/e;Ltv/periscope/android/exoplayer/player/j;Ltv/periscope/android/exoplayer/player/g;Ltv/periscope/android/exoplayer/player/f;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    .line 21
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bw;->b:Ltv/periscope/android/exoplayer/player/j;

    .line 22
    new-instance v0, Ldmt;

    invoke-direct {v0}, Ldmt;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    .line 23
    invoke-direct {p0, p2, p3, p4}, Ltv/periscope/android/ui/broadcast/bw;->a(Ltv/periscope/android/exoplayer/player/j;Ltv/periscope/android/exoplayer/player/g;Ltv/periscope/android/exoplayer/player/f;)V

    .line 24
    return-void
.end method

.method private a(Ltv/periscope/android/exoplayer/player/j;Ltv/periscope/android/exoplayer/player/g;Ltv/periscope/android/exoplayer/player/f;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0}, Ldmt;->a()V

    .line 30
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/j;)V

    .line 31
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p3}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/f;)V

    .line 32
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p2}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/g;)V

    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0}, Ldmt;->a()V

    .line 35
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0, v1}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/j;)V

    .line 36
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0, v1}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/h;)V

    .line 37
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0, v1}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/i;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/exoplayer/player/e;->a(J)V

    .line 78
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(Landroid/view/Surface;)V

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(Z)V

    .line 83
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->c()V

    .line 53
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->d()V

    .line 63
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->f()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->h()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    .line 88
    new-instance v1, Ltv/periscope/android/ui/broadcast/bx;

    const-string/jumbo v2, "PsPlayerReadWriteProxy release"

    invoke-static {v2}, Ltv/periscope/android/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Ltv/periscope/android/ui/broadcast/bx;-><init>(Ltv/periscope/android/ui/broadcast/bw;Ljava/lang/String;Ltv/periscope/android/exoplayer/player/e;)V

    .line 93
    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/bx;->start()V

    .line 94
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bw;->b:Ltv/periscope/android/exoplayer/player/j;

    invoke-virtual {v0, v1}, Ltv/periscope/android/exoplayer/player/e;->b(Ltv/periscope/android/exoplayer/player/j;)V

    .line 95
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bw;->c:Ldmt;

    invoke-virtual {v0, v1}, Ltv/periscope/android/exoplayer/player/e;->b(Ltv/periscope/android/exoplayer/player/j;)V

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/h;)V

    .line 97
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/i;)V

    .line 98
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/f;)V

    .line 99
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/g;)V

    .line 100
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->j()V

    .line 105
    return-void
.end method
