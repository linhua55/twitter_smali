.class public Lcom/twitter/android/timeline/cv;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/cs;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/cn;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/twitter/model/timeline/dh;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;Lcmf;Lcom/twitter/model/timeline/dh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/timeline/bj;",
            "J",
            "Lcom/twitter/model/timeline/al;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/cs;",
            ">;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/cn;",
            ">;",
            "Lcom/twitter/model/timeline/dh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 25
    iput-object p5, p0, Lcom/twitter/android/timeline/cv;->a:Lcmf;

    .line 26
    iput-object p6, p0, Lcom/twitter/android/timeline/cv;->b:Lcmf;

    .line 27
    if-eqz p7, :cond_0

    :goto_0
    iput-object p7, p0, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    .line 28
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/twitter/model/timeline/di;

    invoke-direct {v0}, Lcom/twitter/model/timeline/di;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/timeline/di;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dh;

    move-object p7, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
    .line 43
    iget-object v0, p0, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget v0, v0, Lcom/twitter/model/timeline/dh;->b:I

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incapable of collecting content ids for Who To Follow type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget v2, v2, Lcom/twitter/model/timeline/dh;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v0, v0, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :goto_0
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/timeline/cv;->c:Lcom/twitter/model/timeline/dh;

    iget-object v0, v0, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bc_()Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcmp;

    invoke-direct {v0}, Lcmp;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/timeline/cv;->a:Lcmf;

    .line 34
    invoke-virtual {v0, v1}, Lcmp;->a(Ljava/lang/Iterable;)Lcmp;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/cv;->b:Lcmf;

    .line 35
    invoke-virtual {v0, v1}, Lcmp;->a(Ljava/lang/Iterable;)Lcmp;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcmp;->a()Lcmo;

    move-result-object v0

    .line 33
    return-object v0
.end method
