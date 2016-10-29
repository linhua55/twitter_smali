.class public Lcom/twitter/android/timeline/as;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/ay;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/moments/ay;Lcom/twitter/model/timeline/al;J)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 20
    iput-object p4, p0, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    .line 21
    iput-wide p6, p0, Lcom/twitter/android/timeline/as;->b:J

    .line 22
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
    .line 27
    iget-object v0, p0, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    iget-object v0, v0, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
