.class public abstract Ltv/periscope/model/o;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Z

.field private b:J

.field private c:Ltv/periscope/model/BroadcastState;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/model/o;->b:J

    .line 15
    sget-object v0, Ltv/periscope/model/BroadcastState;->e:Ltv/periscope/model/BroadcastState;

    iput-object v0, p0, Ltv/periscope/model/o;->c:Ltv/periscope/model/BroadcastState;

    .line 32
    return-void
.end method

.method public static B()Ltv/periscope/model/p;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    new-instance v0, Ltv/periscope/model/c;

    invoke-direct {v0}, Ltv/periscope/model/c;-><init>()V

    sget-object v1, Ltv/periscope/model/z;->a:Ltv/periscope/model/z;

    .line 36
    invoke-virtual {v0, v1}, Ltv/periscope/model/c;->a(Ltv/periscope/model/z;)Ltv/periscope/model/p;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v3}, Ltv/periscope/model/p;->a(Z)Ltv/periscope/model/p;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->c(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->d(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->e(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v4, v5}, Ltv/periscope/model/p;->d(J)Ltv/periscope/model/p;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v4, v5}, Ltv/periscope/model/p;->c(J)Ltv/periscope/model/p;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v4, v5}, Ltv/periscope/model/p;->e(J)Ltv/periscope/model/p;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v6, v7}, Ltv/periscope/model/p;->b(D)Ltv/periscope/model/p;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v6, v7}, Ltv/periscope/model/p;->a(D)Ltv/periscope/model/p;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v3}, Ltv/periscope/model/p;->b(Z)Ltv/periscope/model/p;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v3}, Ltv/periscope/model/p;->c(Z)Ltv/periscope/model/p;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->a(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->b(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v4, v5}, Ltv/periscope/model/p;->b(J)Ltv/periscope/model/p;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4, v5}, Ltv/periscope/model/p;->a(J)Ltv/periscope/model/p;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Ltv/periscope/model/p;->c(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v3}, Ltv/periscope/model/p;->a(I)Ltv/periscope/model/p;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v3}, Ltv/periscope/model/p;->d(Z)Ltv/periscope/model/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public C()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    iget-wide v0, p0, Ltv/periscope/model/o;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Ltv/periscope/model/o;->b:J

    .line 93
    :goto_0
    return-wide v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/model/o;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Ltv/periscope/model/o;->a()J

    move-result-wide v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/model/o;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Ltv/periscope/model/o;->b()J

    move-result-wide v0

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Ltv/periscope/model/o;->l()J

    move-result-wide v0

    goto :goto_0
.end method

.method public D()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Ltv/periscope/model/o;->b:J

    return-wide v0
.end method

.method public E()Ltv/periscope/model/BroadcastState;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltv/periscope/model/o;->c:Ltv/periscope/model/BroadcastState;

    return-object v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Ltv/periscope/model/o;->E()Ltv/periscope/model/BroadcastState;

    move-result-object v0

    sget-object v1, Ltv/periscope/model/BroadcastState;->c:Ltv/periscope/model/BroadcastState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Ltv/periscope/model/o;->E()Ltv/periscope/model/BroadcastState;

    move-result-object v0

    .line 156
    sget-object v1, Ltv/periscope/model/BroadcastState;->e:Ltv/periscope/model/BroadcastState;

    if-eq v0, v1, :cond_0

    sget-object v1, Ltv/periscope/model/BroadcastState;->d:Ltv/periscope/model/BroadcastState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Ltv/periscope/model/o;->d:Z

    return v0
.end method

.method public abstract a()J
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Ltv/periscope/model/o;->C()J

    move-result-wide v0

    invoke-virtual {p0}, Ltv/periscope/model/o;->l()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Ltv/periscope/model/o;->g:I

    .line 29
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Ltv/periscope/model/o;->b:J

    .line 103
    return-void
.end method

.method public a(Ltv/periscope/model/BroadcastState;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Ltv/periscope/model/o;->c:Ltv/periscope/model/BroadcastState;

    .line 133
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Ltv/periscope/model/o;->a:Z

    .line 169
    return-void
.end method

.method public abstract b()J
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Ltv/periscope/model/o;->f:I

    .line 201
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Ltv/periscope/model/o;->d:Z

    .line 181
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Ltv/periscope/model/o;->h:I

    .line 224
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Ltv/periscope/model/o;->e:Z

    .line 185
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ltv/periscope/model/z;
.end method

.method public abstract f()J
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()J
.end method

.method public abstract l()J
.end method

.method public abstract m()D
.end method

.method public abstract n()D
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Z
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public abstract v()Z
.end method

.method public abstract w()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract x()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract y()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract z()I
.end method
