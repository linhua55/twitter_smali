.class public Lcom/twitter/android/timeline/c;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/a;Lcom/twitter/android/revenue/a;)Lcom/twitter/android/timeline/bp;
    .locals 6

    .prologue
    .line 16
    instance-of v0, p2, Lcom/twitter/android/revenue/af;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/twitter/android/timeline/cn;

    invoke-virtual {p1}, Lcom/twitter/android/timeline/a;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/android/timeline/a;->n:J

    move-object v4, p2

    check-cast v4, Lcom/twitter/android/revenue/af;

    iget-object v4, v4, Lcom/twitter/android/revenue/af;->f:Lcom/twitter/model/core/Tweet;

    iget-object v5, p1, Lcom/twitter/android/timeline/a;->o:Lcom/twitter/model/timeline/al;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 19
    new-instance v1, Lcom/twitter/android/timeline/ca;

    iget-object v2, p1, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    iget-wide v4, p2, Lcom/twitter/android/revenue/a;->e:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/twitter/android/timeline/ca;-><init>(Lcom/twitter/android/timeline/cn;Ljava/lang/String;J)V

    move-object v0, v1

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
