.class public Lceo;
.super Lcep;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "G::",
        "Lbfd;",
        "S::",
        "Lbfb",
        "<TS;>;>",
        "Lcep",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/database/model/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/q",
            "<TG;>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/twitter/database/model/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/r",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;",
            "Lcom/twitter/database/model/q",
            "<TG;>;",
            "Lcom/twitter/database/model/r",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lceo;-><init>(Lrx/t;Lrx/t;Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lrx/t;Lrx/t;Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t;",
            "Lrx/t;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;",
            "Lcom/twitter/database/model/q",
            "<TG;>;",
            "Lcom/twitter/database/model/r",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcep;-><init>(Lrx/t;Lrx/t;)V

    .line 36
    iput-object p4, p0, Lceo;->a:Lcom/twitter/database/model/q;

    .line 37
    iput-object p5, p0, Lceo;->b:Lcom/twitter/database/model/r;

    .line 38
    iput-object p3, p0, Lceo;->e:Lcom/twitter/util/serialization/ah;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/database/model/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/twitter/database/model/k",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lceo;->b:Lcom/twitter/database/model/r;

    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v1

    .line 63
    iget-object v0, v1, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lbfb;

    invoke-interface {v0, p1}, Lbfb;->b(Ljava/lang/String;)Lbfb;

    move-result-object v0

    iget-object v2, p0, Lceo;->e:Lcom/twitter/util/serialization/ah;

    .line 64
    invoke-static {p2, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lbfb;->b([B)Lbfb;

    .line 65
    return-object v1
.end method

.method protected a(Lcom/twitter/database/model/j;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<TG;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbfd;

    invoke-interface {v0}, Lbfd;->b()[B

    move-result-object v0

    iget-object v1, p0, Lceo;->e:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lceo;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lceo;->a:Lcom/twitter/database/model/q;

    const-string/jumbo v1, "key=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 46
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lceo;->a(Lcom/twitter/database/model/j;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lceo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lceo;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/database/model/k;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/twitter/database/model/k;->b()J

    .line 72
    return-void
.end method
