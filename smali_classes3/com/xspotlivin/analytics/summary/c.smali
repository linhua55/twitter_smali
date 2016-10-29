.class public Lcom/xspotlivin/analytics/summary/c;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xspotlivin/analytics/summary/c;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/xspotlivin/analytics/summary/c;->a()V

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->b:J

    .line 19
    iput-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->c:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xspotlivin/analytics/summary/c;->d:Z

    .line 21
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->b:J

    .line 27
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xspotlivin/analytics/summary/c;->d:Z

    .line 28
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/xspotlivin/analytics/summary/c;->d:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->c:J

    .line 33
    iget-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->e:J

    iget-wide v2, p0, Lcom/xspotlivin/analytics/summary/c;->c:J

    iget-wide v4, p0, Lcom/xspotlivin/analytics/summary/c;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->e:J

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/xspotlivin/analytics/summary/c;->a()V

    .line 37
    return-void
.end method

.method public d()J
    .locals 6

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/xspotlivin/analytics/summary/c;->d:Z

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xspotlivin/analytics/summary/c;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 47
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/xspotlivin/analytics/summary/c;->e:J

    goto :goto_0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/xspotlivin/analytics/summary/c;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xspotlivin/analytics/summary/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/xspotlivin/analytics/summary/c;->d:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Running"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Current Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/xspotlivin/analytics/summary/c;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v0, "Stopped"

    goto :goto_0
.end method
