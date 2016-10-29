.class public Lcom/twitter/android/t;
.super Lcme;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Lckn;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/database/Cursor;

.field private final b:Lcbv;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcbv;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p2}, Lcom/twitter/android/t;->a(Lcbv;)Lcmv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    .line 25
    iput-object p2, p0, Lcom/twitter/android/t;->b:Lcbv;

    .line 26
    iput-object p1, p0, Lcom/twitter/android/t;->a:Landroid/database/Cursor;

    .line 27
    return-void
.end method

.method private static a(Lcbv;)Lcmv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcbv;",
            ")",
            "Lcmv",
            "<",
            "Lckn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/twitter/android/fi;

    invoke-direct {v1, p0}, Lcom/twitter/android/fi;-><init>(Lcbv;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 33
    iget-boolean v1, p0, Lcbv;->a:Z

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lcom/twitter/android/s;

    invoke-direct {v1}, Lcom/twitter/android/s;-><init>()V

    .line 35
    new-instance v2, Lcom/twitter/android/gr;

    invoke-direct {v2, v1}, Lcom/twitter/android/gr;-><init>(Lcom/twitter/android/s;)V

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 36
    new-instance v2, Lano;

    invoke-direct {v2, v1}, Lano;-><init>(Lcom/twitter/android/s;)V

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 38
    :cond_0
    new-instance v1, Lcmr;

    new-instance v2, Lcmu;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Lcmu;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcmr;-><init>(Lcmv;)V

    return-object v1
.end method


# virtual methods
.method public w_()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/twitter/android/t;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/t;->a:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/twitter/android/t;->b:Lcbv;

    iget v2, v2, Lcbv;->p:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
