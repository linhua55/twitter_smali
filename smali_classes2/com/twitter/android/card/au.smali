.class public Lcom/twitter/android/card/au;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/twitter/model/card/property/Vector2F;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/twitter/model/card/property/Vector2F;->b:Lcom/twitter/model/card/property/Vector2F;

    iput-object v0, p0, Lcom/twitter/android/card/au;->d:Lcom/twitter/model/card/property/Vector2F;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/card/au;->e:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/au;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lclm;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 42
    iget-object v0, p0, Lcom/twitter/android/card/au;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "api"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/au;->a:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/au;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    const-string/jumbo v0, "id"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/au;->c:Ljava/lang/String;

    .line 48
    :cond_1
    iget-wide v0, p0, Lcom/twitter/android/card/au;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 49
    const-string/jumbo v0, "broadcaster_twitter_id"

    .line 50
    invoke-static {v0, p1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/card/au;->e:J

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/au;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/card/au;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 54
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/card/au;->f:Z

    .line 56
    :cond_4
    const-string/jumbo v0, "player_width"

    invoke-static {v0, p1}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "player_height"

    invoke-static {v1, p1}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 59
    new-instance v2, Lcom/twitter/model/card/property/Vector2F;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/card/property/Vector2F;-><init>(FF)V

    iput-object v2, p0, Lcom/twitter/android/card/au;->d:Lcom/twitter/model/card/property/Vector2F;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_5
    sget-object v0, Lcom/twitter/model/card/property/Vector2F;->b:Lcom/twitter/model/card/property/Vector2F;

    iput-object v0, p0, Lcom/twitter/android/card/au;->d:Lcom/twitter/model/card/property/Vector2F;

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/CardContext;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    move-object v1, v0

    .line 34
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/card/au;->f:Z

    .line 35
    iget-boolean v0, p0, Lcom/twitter/android/card/au;->f:Z

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/au;->b:Ljava/lang/String;

    .line 38
    :cond_1
    return-void

    .line 33
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 34
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/card/au;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/twitter/model/card/property/Vector2F;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/card/au;->d:Lcom/twitter/model/card/property/Vector2F;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/card/au;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/twitter/android/card/au;->e:J

    return-wide v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/twitter/android/card/au;->f:Z

    return v0
.end method
