.class public Lcom/twitter/android/timeline/l;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/timeline/e;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/m;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bq;)V

    .line 15
    invoke-static {p1}, Lcom/twitter/android/timeline/m;->a(Lcom/twitter/android/timeline/m;)Lcom/twitter/model/timeline/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/l;->a:Lcom/twitter/model/timeline/e;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/timeline/l;->a:Lcom/twitter/model/timeline/e;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/twitter/android/timeline/l;->a:Lcom/twitter/model/timeline/e;

    iget-wide v0, v0, Lcom/twitter/model/timeline/e;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method
