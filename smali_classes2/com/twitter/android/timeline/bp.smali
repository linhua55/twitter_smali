.class public abstract Lcom/twitter/android/timeline/bp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/timeline/bj;

.field public final n:J

.field public final o:Lcom/twitter/model/timeline/al;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    .line 33
    iput-wide p2, p0, Lcom/twitter/android/timeline/bp;->n:J

    .line 34
    iput-object p4, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/android/timeline/bq;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/twitter/android/timeline/bq;->a(Lcom/twitter/android/timeline/bq;)Lcom/twitter/android/timeline/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    .line 39
    invoke-static {p1}, Lcom/twitter/android/timeline/bq;->b(Lcom/twitter/android/timeline/bq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/timeline/bp;->n:J

    .line 40
    invoke-static {p1}, Lcom/twitter/android/timeline/bq;->c(Lcom/twitter/android/timeline/bq;)Lcom/twitter/model/timeline/al;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 89
    const-string/jumbo v2, "<b> Entity ID: </b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, v1, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v2, "<br><br><b> Timeline Type: </b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v2, v1, Lcom/twitter/android/timeline/bj;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v2, "<br><br><b> Group ID: </b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-wide v2, v1, Lcom/twitter/android/timeline/bj;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "<br><br><b> Entity Type: </b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v2, v1, Lcom/twitter/android/timeline/bj;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v2, "<br><br><b> Data Type: </b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, v1, Lcom/twitter/android/timeline/bj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, "<br><br><b> Position: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "<br><br><b> Suggests Info: <br>&emsp; Type: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "<br>&emsp;<b> Type ID: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, "<br>&emsp;<b> Controller Data: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, "<br>&emsp;<b> Source Data: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "<br>&emsp;<b> Component: </b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/timeline/bp;->a(Ljava/lang/StringBuilder;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 117
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
    .line 64
    invoke-virtual {p0}, Lcom/twitter/android/timeline/bp;->bc_()Lcmf;

    move-result-object v0

    invoke-virtual {v0}, Lcmf;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/timeline/bp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method protected bc_()Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<+",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/twitter/android/timeline/br;->b()Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/twitter/android/timeline/bj;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getEntityInfo should only be called for rich or URT timelines"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/bp;->a:Lcom/twitter/android/timeline/bj;

    iget-object v0, v0, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "unspecified"

    goto :goto_0
.end method
