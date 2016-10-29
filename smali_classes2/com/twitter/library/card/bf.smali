.class public Lcom/twitter/library/card/bf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/m;


# instance fields
.field private final a:Lcom/twitter/library/card/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/card/al",
            "<",
            "Lcom/twitter/library/card/m;",
            "Lcom/twitter/library/card/d",
            "<",
            "Lclm;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/card/a;

.field private final c:J

.field private final d:Lcom/twitter/library/card/bg;


# direct methods
.method public constructor <init>(Lcom/twitter/library/card/al;Lcom/twitter/library/card/a;JLcom/twitter/library/card/bg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/card/al",
            "<",
            "Lcom/twitter/library/card/m;",
            "Lcom/twitter/library/card/d",
            "<",
            "Lclm;",
            ">;>;",
            "Lcom/twitter/library/card/a;",
            "J",
            "Lcom/twitter/library/card/bg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/library/card/bf;->a:Lcom/twitter/library/card/al;

    .line 34
    iput-object p2, p0, Lcom/twitter/library/card/bf;->b:Lcom/twitter/library/card/a;

    .line 35
    iput-wide p3, p0, Lcom/twitter/library/card/bf;->c:J

    .line 36
    iput-object p5, p0, Lcom/twitter/library/card/bf;->d:Lcom/twitter/library/card/bg;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/twitter/library/card/c;)I
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/card/bf;->b:Lcom/twitter/library/card/a;

    iget-wide v2, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/twitter/library/card/a;->a(JLjava/lang/String;Lcom/twitter/library/card/c;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/card/bf;->a:Lcom/twitter/library/card/al;

    iget-wide v2, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/al;->a(JLjava/lang/Object;)V

    .line 44
    return-void
.end method

.method public a(JI)V
    .locals 7

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/twitter/library/card/bf;->c:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/twitter/library/card/bf;->d:Lcom/twitter/library/card/bg;

    invoke-interface {v0, p3}, Lcom/twitter/library/card/bg;->a(I)V

    .line 123
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "apiResponseKey %s does not match expected mApiResponseKey %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JILclm;)V
    .locals 7

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/twitter/library/card/bf;->c:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/twitter/library/card/bf;->d:Lcom/twitter/library/card/bg;

    invoke-interface {v0, p3, p4}, Lcom/twitter/library/card/bg;->a(ILclm;)V

    .line 112
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "apiResponseKey %s does not match expected mApiResponseKey %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 109
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/twitter/library/card/c;)I
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/library/card/bf;->b:Lcom/twitter/library/card/a;

    iget-wide v2, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/twitter/library/card/a;->b(JLjava/lang/String;Lcom/twitter/library/card/c;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/library/card/bf;->a:Lcom/twitter/library/card/al;

    iget-wide v2, p0, Lcom/twitter/library/card/bf;->c:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/al;->b(JLjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/library/card/bf;->b:Lcom/twitter/library/card/a;

    invoke-interface {v0}, Lcom/twitter/library/card/a;->a()V

    .line 92
    return-void
.end method
