.class Lcom/twitter/android/pc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcmw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmw",
        "<",
        "Lcom/twitter/android/pg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqx;

.field final synthetic b:Lcom/twitter/android/SearchResultsFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchResultsFragment;Laqx;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/twitter/android/pc;->b:Lcom/twitter/android/SearchResultsFragment;

    iput-object p2, p0, Lcom/twitter/android/pc;->a:Laqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/database/Cursor;)Lcmf;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/twitter/android/pc;->b(Landroid/database/Cursor;)Lcmc;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Lcmc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcmc",
            "<",
            "Lcom/twitter/android/pg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Lcmc;

    iget-object v1, p0, Lcom/twitter/android/pc;->a:Laqx;

    invoke-virtual {v1, p1}, Laqx;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcmc;-><init>(Ljava/lang/Iterable;Landroid/database/Cursor;)V

    return-object v0
.end method
