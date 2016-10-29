.class public Lavf;
.super Lavo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lavo",
        "<",
        "Lavk",
        "<TS;>;",
        "Lcom/twitter/database/model/j",
        "<TS;>;",
        "Lcmf",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcom/twitter/database/model/p;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/bt;",
            ">;",
            "Lcom/twitter/database/model/p;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lavk;

    invoke-direct {v0, p1, p2, p3, p4}, Lavk;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcom/twitter/database/model/p;)V

    invoke-direct {p0, v0}, Lavo;-><init>(Lavm;)V

    .line 26
    iput-object p5, p0, Lavf;->a:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/database/model/j;)Lcmf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<TS;>;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    iget-object v1, p1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lavf;->a:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/twitter/database/hydrator/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcmx;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0, p1, v1}, Lavf;->a(Lcom/twitter/database/model/j;Lcmx;)Lcmf;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/database/model/j;Lcmx;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<TS;>;",
            "Lcmx",
            "<-TS;TT;>;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcmq;

    new-instance v1, Lbas;

    invoke-direct {v1, p1}, Lbas;-><init>(Lcom/twitter/database/model/j;)V

    invoke-direct {v0, v1, p2}, Lcmq;-><init>(Lcmf;Lcmy;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/database/model/j;

    invoke-virtual {p0, p1}, Lavf;->a(Lcom/twitter/database/model/j;)Lcmf;

    move-result-object v0

    return-object v0
.end method
