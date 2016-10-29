.class public Lcom/twitter/android/interestpicker/d;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Ljava/lang/Void;",
        "Lcmf",
        "<",
        "Lcor;",
        ">;",
        "Lbph;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lbab;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/interestpicker/d;->a:Landroid/app/Application;

    .line 27
    iput-object p2, p0, Lcom/twitter/android/interestpicker/d;->b:Lcom/twitter/library/client/Session;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Void;)Lbph;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lbph;

    iget-object v1, p0, Lcom/twitter/android/interestpicker/d;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/twitter/android/interestpicker/d;->b:Lcom/twitter/library/client/Session;

    invoke-direct {v0, v1, v2}, Lbph;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method

.method protected a(Lbph;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbph;",
            ")",
            "Lcmf",
            "<",
            "Lcor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Lbph;->g()Lcos;

    move-result-object v0

    .line 34
    new-instance v1, Lcmo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    return-object v1

    :cond_0
    iget-object v0, v0, Lcos;->b:Ljava/util/List;

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/interestpicker/d;->a(Ljava/lang/Void;)Lbph;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lbph;

    invoke-virtual {p0, p1}, Lcom/twitter/android/interestpicker/d;->a(Lbph;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
