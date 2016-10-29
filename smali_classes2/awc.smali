.class public Lawc;
.super Lavf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Lbew;",
        "Lcom/twitter/model/core/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILawe;Lcom/twitter/database/model/p;)V
    .locals 6

    .prologue
    .line 22
    new-instance v3, Lawb;

    invoke-direct {v3, p1, p4}, Lawb;-><init>(Landroid/content/Context;Lawe;)V

    const-class v5, Lcom/twitter/model/core/cm;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lavf;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcom/twitter/database/model/p;Ljava/lang/Class;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/database/model/j;Lcmx;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbew;",
            ">;",
            "Lcmx",
            "<-",
            "Lbew;",
            "Lcom/twitter/model/core/cm;",
            ">;)",
            "Lcmf",
            "<",
            "Lcom/twitter/model/core/cm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lawd;

    invoke-direct {v0, p0, p1, p2}, Lawd;-><init>(Lawc;Lcom/twitter/database/model/j;Lcmx;)V

    return-object v0
.end method
