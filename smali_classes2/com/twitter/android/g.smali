.class public Lcom/twitter/android/g;
.super Lavo;
.source "Twttr"

# interfaces
.implements Lavn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavo",
        "<",
        "Lavc;",
        "Landroid/database/Cursor;",
        "Lcmf",
        "<",
        "Lckn;",
        ">;>;",
        "Lavn;"
    }
.end annotation


# instance fields
.field private final a:Lcbv;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcbv;)V
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
            "Lcbv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lavc;

    invoke-direct {v0, p1, p2, p3}, Lavc;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;)V

    invoke-direct {p0, v0}, Lavo;-><init>(Lavm;)V

    .line 28
    iput-object p4, p0, Lcom/twitter/android/g;->a:Lcbv;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcmf",
            "<",
            "Lckn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p1, :cond_0

    new-instance v0, Lcom/twitter/android/t;

    iget-object v1, p0, Lcom/twitter/android/g;->a:Lcbv;

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/t;-><init>(Landroid/database/Cursor;Lcbv;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/g;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/twitter/android/g;->b()Lavm;

    move-result-object v0

    check-cast v0, Lavc;

    invoke-virtual {v0}, Lavc;->a()V

    .line 40
    return-void
.end method
