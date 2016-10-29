.class public Lcom/twitter/android/timeline/ap;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/android/timeline/cn;

.field public final b:Lcom/twitter/model/timeline/aa;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/cn;Lcom/twitter/model/timeline/aa;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 19
    iput-object p5, p0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    .line 20
    if-eqz p6, :cond_0

    :goto_0
    iput-object p6, p0, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    .line 21
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/twitter/model/timeline/ac;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ac;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/timeline/ac;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/aa;

    move-object p6, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "<br>&emsp;<b> mHashcode: </b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    invoke-virtual {v0}, Lcom/twitter/model/timeline/aa;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v0, "<br>&emsp;<b> Scribe Hashcode: </b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    iget-object v0, v0, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    invoke-virtual {v0}, Lcom/twitter/model/timeline/al;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v0, "<br>&emsp;<b> Class: </b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {p1, v0}, Lcom/twitter/android/timeline/bs;->a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/Tweet;)V

    .line 47
    :cond_0
    return-void
.end method

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
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/timeline/ap;->b:Lcom/twitter/model/timeline/aa;

    iget-object v0, v0, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
